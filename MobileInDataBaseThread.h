//---------------------------------------------------------------------------

#ifndef MobileInDataBaseThreadH
#define MobileInDataBaseThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "cxTL.hpp"
#include "cxProgressBar.hpp"
#include "GlobalParameter.h"
#include <ADODB.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class TMobileInDataBaseThread : public TThread
{
private:
    String validfilepathname;
    TcxProgressBar* validInDataBasePBar;
    TADOQuery* validupdateADOQuery;
    String OrignalDataStr;
    String SerialNum;
	String Place;
	int PosNumber;

    unsigned char BufferFromFile[2048];
    ofstream TmpSaveInsertRecordFile;
	ofstream TmpSaveInsertErrRecFile;

    unsigned char* tmpdata;
	int tmpdatalen;
    int filelen;
	unsigned char* purifieddata;
	int purifieddatalen;
protected:
	void __fastcall Execute();
    void __fastcall AnalyzeDataFunc();
    void __fastcall UpdateDataBaseFunc();
public:
	__fastcall TMobileInDataBaseThread(bool CreateSuspended,
    								   String filepathname,
                                       TcxProgressBar* InDataBasePBar,
                                       TADOQuery* updateADOQuery);
};
//---------------------------------------------------------------------------
#endif
