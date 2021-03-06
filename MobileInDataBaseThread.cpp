//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MobileInDataBaseThread.h"
#include "SDIMAIN.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TMobileInDataBaseThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

__fastcall TMobileInDataBaseThread::TMobileInDataBaseThread(bool CreateSuspended,
															String filepathname,
                                                        	TcxProgressBar* InDataBasePBar,
                                                        	TADOQuery* updateADOQuery) : TThread(CreateSuspended)
{
    validfilepathname = filepathname;
    validInDataBasePBar = InDataBasePBar;
	validupdateADOQuery = updateADOQuery;
}
//---------------------------------------------------------------------------
void __fastcall TMobileInDataBaseThread::Execute()
{
	//---- Place thread code here ----
    if(FileExists(validfilepathname.t_str()))
    {
    	validInDataBasePBar->Position = 0;

        HANDLE HFILE = CreateFile(validfilepathname.t_str(),
								  GENERIC_READ,
								  0,
								  NULL,
								  OPEN_EXISTING,
								  FILE_ATTRIBUTE_NORMAL,
								  NULL);

		if(INVALID_HANDLE_VALUE == HFILE)
		{
        	MessageBox(SDIAppForm->Handle, "数据文件被占用，请重新登录!", "Notice", MB_OK|MB_ICONERROR);
			CloseHandle(HFILE);
        }
        int filesize = GetFileSize(HFILE, NULL);
		if(39 >= filesize)
		{
			MessageBox(SDIAppForm->Handle, "指定的数据文件结构错误!", "Notice", MB_OK|MB_ICONERROR);
			CloseHandle(HFILE);
        }
        else
        {
            validInDataBasePBar->Position = 0;

            char* realname = strrchr(validfilepathname.t_str(), '\\');
            String realnamestr = realname[1];
            realnamestr += realname[2];

            PosNumber = StrToInt(realnamestr);

            tmpdata = new unsigned char[filesize];
            purifieddata = new unsigned char [filesize];
        	tmpdatalen = filesize;
            ZeroMemory(tmpdata, filesize);
            ZeroMemory(purifieddata, filesize);
            bool Readresult;
			DWORD nBytesRead;
            Readresult = ReadFile(HFILE, tmpdata, filesize, &nBytesRead, NULL);
            if(!Readresult)
            {
            	MessageBox(SDIAppForm->Handle, "文件读取错误!", "Notice", MB_OK|MB_ICONERROR);
        		return;
            }
            memcpy(purifieddata, tmpdata, filesize);
            purifieddatalen = filesize;
			int LineInFile = (purifieddatalen-16)/2048 + 1;

            for(int t = 0; t<LineInFile; t++)
            {
                ZeroMemory(BufferFromFile, 2048);
                if(purifieddatalen - 2048*t>=2048)
                    memcpy(BufferFromFile,purifieddata+2048*t, 2048);
                else
                    memcpy(BufferFromFile,purifieddata+2048*t, purifieddatalen - 2048*t);
                Synchronize(AnalyzeDataFunc);
                validInDataBasePBar->Position = t*100/LineInFile;
            }

			CloseHandle(HFILE);
         	validInDataBasePBar->Position = 100;
			MessageBox(SDIAppForm->Handle, "入库成功!", "OK", MB_OK);
        }
    }
    else
    {
    	MessageBox(SDIAppForm->Handle, "指定的数据文件不存在!", "Notice", MB_OK|MB_ICONERROR);
        return;
    }
}
//---------------------------------------------------------------------------

void __fastcall TMobileInDataBaseThread::AnalyzeDataFunc()
{
	int recordNUM = (int)BufferFromFile[7]*256+(int)BufferFromFile[8];
	if((recordNUM<128)&&(recordNUM>0)&&(0x20 == BufferFromFile[0])&&(0x03 == BufferFromFile[1])
	  &&(0x23 == BufferFromFile[4]))//	  &&(DWPassword[0] == BufferFromFile[2])&&(DWPassword[1] == BufferFromFile[3])
	{
//		String tmpfilepath = GlobalPath+"\\WaitForInsertToMX.dat";
//		ofstream TmpSaveInsertRecordFile(tmpfilepath.t_str(), ios::app);

		String insqlstr = "";
        String AddinPosinsqlstr = "";
        String Watersqlstr = "";
        String Errorinsqlstr = "";

		OrignalDataStr = "";
 //		PosNumber = (int)BufferFromFile[12]*256+(int)BufferFromFile[5];

		int RecordIndexPos;
		int tmpKH;
		int tmpXFCS;
		double tmpYE;
		double tmpXFJE;
		String tmpDATESTR;
		String tmpXFLX;
		String tmpSQLSTR;

		unsigned char instr[4];
		unsigned char outstr[6];
		ZeroMemory(instr, 4);
		ZeroMemory(outstr, 6);

		for (int t = 0; t < 14; t++)
			OrignalDataStr = OrignalDataStr + (IntToHex((byte)BufferFromFile[t], 2));

		for (int i = 0; i < (int)BufferFromFile[8]; i++)
		{
			RecordIndexPos = 14 + i*16;
			for (int p = 0; p < 16; p++)
			{
				OrignalDataStr = OrignalDataStr + (IntToHex((byte)BufferFromFile[RecordIndexPos + p], 2));
			}

			tmpKH = (int)BufferFromFile[RecordIndexPos]*256*256 + (int)BufferFromFile[RecordIndexPos+1]*256 + (int)BufferFromFile[RecordIndexPos+2];
			tmpXFCS = (int)BufferFromFile[RecordIndexPos+3]*256+(int)BufferFromFile[RecordIndexPos+4];
			tmpYE = ((double)BufferFromFile[RecordIndexPos+5]*256*256+(double)BufferFromFile[RecordIndexPos+6]*256+(double)BufferFromFile[RecordIndexPos+7])/100;
			tmpXFJE = ((double)BufferFromFile[RecordIndexPos+8]*256*256+(double)BufferFromFile[RecordIndexPos+9]*256+(double)BufferFromFile[RecordIndexPos+10])/100;

			instr[0] = BufferFromFile[RecordIndexPos+11];
			instr[1] = BufferFromFile[RecordIndexPos+12];
			instr[2] = BufferFromFile[RecordIndexPos+13];
			instr[3] = BufferFromFile[RecordIndexPos+14];
			if(GetnormaldateFunc)
			{
				if(0 != GetnormaldateFunc(instr, outstr))
				{
                    tmpDATESTR = DateTimeToStr(Now());
				}
				else
				{
					tmpDATESTR = "20"+IntToHex((int)outstr[0], 2)+"-"+
									  IntToHex((int)outstr[1], 2)+"-"+
									  IntToHex((int)outstr[2], 2)+" "+
									  IntToHex((int)outstr[3], 2)+":"+
									  IntToHex((int)outstr[4], 2)+":"+
									  IntToHex((int)outstr[5], 2);
				}
			}
			else
			{
                tmpDATESTR = DateTimeToStr(Now());
			}

            String updatetimestr = DateTimeToStr(Now());
			String UpdateTime = updatetimestr;

			try
			{
				StrToDateTime(tmpDATESTR);
			}
			catch(...)
			{
				tmpDATESTR = DateTimeToStr(Now());
			}

			if(StrToDateTime(tmpDATESTR)>Now())
			{
				tmpDATESTR = DateTimeToStr(Now());
			}
			else
			{
				TDateTime tmpdt = StrToDateTime(tmpDATESTR);
				tmpdt = IncYear(tmpdt, 1);
				if(tmpdt<Now())
				{
					tmpDATESTR = DateTimeToStr(Now());
				}
			}

			if(0 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "X";
			else if(1 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "Y";
			else if(2 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "B";
			else if(3 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "I";
			else if(4 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "L";
			else if(5 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "M";
			else if(6 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "O";
			else if(7 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "P";
			else if(250 == BufferFromFile[RecordIndexPos+15])
				tmpXFLX = "Z";
            else if(65 == BufferFromFile[RecordIndexPos+15]) //breakfast
                tmpXFLX = "S";
            else if(66 == BufferFromFile[RecordIndexPos+15]) //lunch
                tmpXFLX = "D";
            else if(67 == BufferFromFile[RecordIndexPos+15]) //supper
                tmpXFLX = "F";
            else if(68 == BufferFromFile[RecordIndexPos+15]) //night
                tmpXFLX = "G";
            else if(249 == BufferFromFile[RecordIndexPos+15])
            	tmpXFLX = "W";
			else tmpXFLX = "E";

            if("W" == tmpXFLX)
            {
            	//analyze water data;
                int jqh;
                int waterkh;
                double xf1;
                double xf2;
                xf1 = ((double)BufferFromFile[RecordIndexPos+0]+(double)BufferFromFile[RecordIndexPos+1]*256+
                        (double)BufferFromFile[RecordIndexPos+2]*256*256+(double)BufferFromFile[RecordIndexPos+3]*256*256*256)/100;
                xf2 = ((double)(BufferFromFile[RecordIndexPos+4]^0xff)+(double)(BufferFromFile[RecordIndexPos+5]^0xff)*256+
                        (double)(BufferFromFile[RecordIndexPos+6]^0xff)*256*256+(double)(BufferFromFile[RecordIndexPos+7]^0xff)*256*256*256)/100;
                if(xf1 == xf2)
                {
                    jqh = (int)BufferFromFile[RecordIndexPos+8]*256+(int)BufferFromFile[RecordIndexPos+9];
                    waterkh = (int)BufferFromFile[RecordIndexPos+10]*256*256*256+
                    		(int)BufferFromFile[RecordIndexPos+11]*256*256+(int)BufferFromFile[12]*256+
                            (int)BufferFromFile[RecordIndexPos+13];
                //    String tjsqlstr = "insert into WTJ values(:JH,:CJKH,:XFZE,:SCSJ)";
                    String watertmpsqlstr = "insert into WTJ values(";
                    watertmpsqlstr += jqh;
                    watertmpsqlstr += ",";
                    watertmpsqlstr += waterkh;
                    watertmpsqlstr += ",";
                    watertmpsqlstr += xf1;
                    watertmpsqlstr += ",'";
                    watertmpsqlstr += DateTimeToStr(Now());
                    watertmpsqlstr += "')";
                    Watersqlstr += watertmpsqlstr;
                }
                //end analyze;
            }
            else
            {
				String F_bhstr;
				int currentsycs;
                bool errortag = false;
				validupdateADOQuery->Close();
				tmpSQLSTR = "select * from CARD_F where KH = '";
				tmpSQLSTR += tmpKH;
				tmpSQLSTR += "'";
				validupdateADOQuery->SQL->Clear();
				validupdateADOQuery->SQL->Add(tmpSQLSTR);
				validupdateADOQuery->Open();
				if(!validupdateADOQuery->IsEmpty())
				{
					String checkbhstr = validupdateADOQuery->FieldByName("BH")->AsAnsiString.Trim();
					currentsycs = validupdateADOQuery->FieldByName("SYCS")->AsInteger;
					String checkexistsqlstr = "select * from MXBAK where KH='";
					checkexistsqlstr += tmpKH;
					checkexistsqlstr += "' and BH='";
					checkexistsqlstr += checkbhstr;
					checkexistsqlstr += "' and SYCS=";
					checkexistsqlstr += tmpXFCS;

					validupdateADOQuery->Close();
					validupdateADOQuery->SQL->Clear();
					validupdateADOQuery->SQL->Add(checkexistsqlstr);
					validupdateADOQuery->Open();
					if(validupdateADOQuery->IsEmpty())
					{
						validupdateADOQuery->Close();
						tmpSQLSTR = "select * from CARD_F where KH = '";
						tmpSQLSTR += tmpKH;
						tmpSQLSTR += "'";
						validupdateADOQuery->SQL->Clear();
						validupdateADOQuery->SQL->Add(tmpSQLSTR);
						validupdateADOQuery->Open();

						String tmpsqlstr = "insert into MX Values('";
						tmpsqlstr += validupdateADOQuery->FieldByName("BH")->AsAnsiString.Trim();
						tmpsqlstr += "',";
						tmpsqlstr += tmpKH;
						tmpsqlstr += ",";
						tmpsqlstr += tmpYE;
						tmpsqlstr += ",";
						tmpsqlstr += tmpXFJE;
						tmpsqlstr += ",";
						tmpsqlstr += tmpXFCS;
						tmpsqlstr += ",'";
						tmpsqlstr += tmpDATESTR;
						tmpsqlstr += "',";
						tmpsqlstr += PosNumber;
						tmpsqlstr += ",0,'";
						tmpsqlstr += tmpXFLX;
						tmpsqlstr += "','";
						tmpsqlstr += OperatorName;
						tmpsqlstr += "','";
						tmpsqlstr += updatetimestr;
						tmpsqlstr += "')";
						insqlstr += tmpsqlstr;

						if("I" == tmpXFLX)
						{
							String tempaddinpossqlstr = "insert into CK Values(";
							tempaddinpossqlstr += tmpKH;
							tempaddinpossqlstr += ",'";
							tempaddinpossqlstr += validupdateADOQuery->FieldByName("BH")->AsAnsiString.Trim();
							tempaddinpossqlstr += "',";
							tempaddinpossqlstr += tmpYE;
							tempaddinpossqlstr += ",1,";
							tempaddinpossqlstr += tmpXFJE;//PosNumber;
							tempaddinpossqlstr += ",0,";
							tempaddinpossqlstr += tmpXFJE;//tmpXFLX;
							tempaddinpossqlstr += ",0,";
							tempaddinpossqlstr += tmpXFJE;
							tempaddinpossqlstr += ",";
							tempaddinpossqlstr += tmpXFCS;
							tempaddinpossqlstr += ",'";
							tempaddinpossqlstr += tmpDATESTR;
							tempaddinpossqlstr += "',";
							tempaddinpossqlstr += PosNumber;
							tempaddinpossqlstr += ",1,'I','";
							tempaddinpossqlstr += OperatorName;
							tempaddinpossqlstr += "')";
							AddinPosinsqlstr += tempaddinpossqlstr;
						}

						if("E"!=tmpXFLX)
						{
							SerialNum = validupdateADOQuery->FieldByName("BH")->AsAnsiString.Trim();
							if(validupdateADOQuery->FieldByName("SYCS")->AsInteger < tmpXFCS)
							{
								validupdateADOQuery->Edit();
								validupdateADOQuery->FieldByName("SYCS")->AsInteger = tmpXFCS;
								validupdateADOQuery->FieldByName("SF_YE")->AsFloat = tmpYE;
								validupdateADOQuery->Post();
							}
						}
						F_bhstr = validupdateADOQuery->FieldByName("BH")->AsString;
					}
                }
                else
                    errortag = true;
                validupdateADOQuery->Close();

                if("E"!=tmpXFLX)
				{
                    tmpSQLSTR = "select * from CARD_F where KH = '";
                    tmpSQLSTR += tmpKH;
                    tmpSQLSTR += "' and BH='";
                    tmpSQLSTR += F_bhstr;
                    tmpSQLSTR += "'";
                    validupdateADOQuery->SQL->Clear();
                    validupdateADOQuery->SQL->Add(tmpSQLSTR);
                    validupdateADOQuery->Open();
                    if(!validupdateADOQuery->IsEmpty())
					{
						if(currentsycs < tmpXFCS)
						{
							validupdateADOQuery->Edit();
							validupdateADOQuery->FieldByName("SYCS")->AsInteger = tmpXFCS;
							validupdateADOQuery->FieldByName("SF_YE")->AsFloat = tmpYE;
							validupdateADOQuery->FieldByName("SFYEDT")->AsString = tmpDATESTR;
							validupdateADOQuery->Post();
						}
                    }
                    else
                        errortag = true;
					validupdateADOQuery->Close();

					tmpSQLSTR = "select * from CARD where KH = '";
                    tmpSQLSTR += tmpKH;
                    tmpSQLSTR += "' and BH='";
                    tmpSQLSTR += F_bhstr;
                    tmpSQLSTR += "'";
                    validupdateADOQuery->SQL->Clear();
                    validupdateADOQuery->SQL->Add(tmpSQLSTR);
                    validupdateADOQuery->Open();
                    if(!validupdateADOQuery->IsEmpty())
					{
						if(currentsycs < tmpXFCS)
						{
							validupdateADOQuery->Edit();
							validupdateADOQuery->FieldByName("SYCS")->AsInteger = tmpXFCS;
							validupdateADOQuery->FieldByName("SF_YE")->AsFloat = tmpYE;
							validupdateADOQuery->FieldByName("SFYEDT")->AsString = tmpDATESTR;
							validupdateADOQuery->Post();
						}
                    }
                    else
                        errortag = true;
					validupdateADOQuery->Close();
                }

         /*       String UpdateTime;
                SYSTEMTIME tmpsystime;
                GetLocalTime(&tmpsystime);
                UpdateTime = DateTimeToStr(SystemTimeToDateTime(tmpsystime));

                if(!errortag)
                {
                    TmpSaveInsertRecordFile<<SerialNum.t_str()<<","<<tmpKH<<","<<tmpYE<<","<<tmpXFJE<<",";
                    TmpSaveInsertRecordFile<<tmpXFCS<<","<<tmpDATESTR.t_str()<<","<<PosNumber<<",0,";
                    TmpSaveInsertRecordFile<<tmpXFLX.t_str()<<","<<OperatorName.t_str()<<","<<UpdateTime.t_str()<<endl;
                }
                else
                {
                    TmpSaveInsertErrRecFile<<SerialNum.t_str()<<","<<tmpKH<<","<<tmpYE<<","<<tmpXFJE<<",";
                    TmpSaveInsertErrRecFile<<tmpXFCS<<","<<tmpDATESTR.t_str()<<","<<PosNumber<<",0,";
                    TmpSaveInsertErrRecFile<<tmpXFLX.t_str()<<","<<OperatorName.t_str()<<","<<UpdateTime.t_str()<<endl;
                }     */
            }
		}
		Sleep(100);
        if(insqlstr.Length()>0)
        {
            validupdateADOQuery->Close();
            validupdateADOQuery->SQL->Clear();
            validupdateADOQuery->SQL->Add(insqlstr);
            validupdateADOQuery->ExecSQL();
            validupdateADOQuery->Close();
        }

        Sleep(100);
        if(AddinPosinsqlstr.Length()>0)
        {
			validupdateADOQuery->Close();
            validupdateADOQuery->SQL->Clear();
            validupdateADOQuery->SQL->Add(AddinPosinsqlstr);
            validupdateADOQuery->ExecSQL();
            validupdateADOQuery->Close();
        }

        Sleep(100);
        if(Watersqlstr.Length()>0)
        {
			validupdateADOQuery->Close();
            validupdateADOQuery->SQL->Clear();
            validupdateADOQuery->SQL->Add(Watersqlstr);
            validupdateADOQuery->ExecSQL();
            validupdateADOQuery->Close();
        }
	}
	return;
}
//---------------------------------------------------------------------------
void __fastcall TMobileInDataBaseThread::UpdateDataBaseFunc()
{
	String tmppath = GlobalPath + "\\MobileToBaseMX.dat";
	String tmpSQLSTR = "bulk insert MX from '";
	tmpSQLSTR += tmppath;
	tmpSQLSTR += "' with (fieldterminator=',',rowterminator='\n')";
	validupdateADOQuery->SQL->Clear();
	validupdateADOQuery->SQL->Add(tmpSQLSTR);
	validupdateADOQuery->ExecSQL();
	validupdateADOQuery->Close();

/*	tmpSQLSTR = "bulk insert MXBAK from '";
	tmpSQLSTR += tmppath;
	tmpSQLSTR += "' with (fieldterminator=',',rowterminator='\n')";
//	tmpSQLSTR = "bulk insert MXBAK from 'WaitForInsertToMX.dat' with (fieldterminator=',',rowterminator='\n')";
	validupdateADOQuery->SQL->Clear();
	validupdateADOQuery->SQL->Add(tmpSQLSTR);
	validupdateADOQuery->ExecSQL();
	validupdateADOQuery->Close();   */

	DeleteFileA(tmppath.t_str());

	tmppath = GlobalPath + "\\MobileToBaseErrMX.dat";
	tmpSQLSTR = "bulk insert MX_ERROR from '";
	tmpSQLSTR += tmppath;
	tmpSQLSTR += "' with (fieldterminator=',',rowterminator='\n')";
	validupdateADOQuery->SQL->Clear();
	validupdateADOQuery->SQL->Add(tmpSQLSTR);
	validupdateADOQuery->ExecSQL();
	validupdateADOQuery->Close();

	DeleteFileA(tmppath.t_str());
	return;
}