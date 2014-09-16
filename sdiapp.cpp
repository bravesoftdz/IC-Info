//---------------------------------------------------------------------
#include <vcl.h>
#include "GlobalParameter.h"
#pragma hdrstop
//---------------------------------------------------------------------
USEFORM("SZHZQForm.cpp", SZHZQFrm);
USEFORM("TKQForm.cpp", TKQFrm);
USEFORM("QKMXShowForm.cpp", QKMXShowFrm);
USEFORM("ReadCardFRM.cpp", ReadCardInfoFRM);
USEFORM("RecordlosecardFRM.cpp", RecordLostCardFRM);
USEFORM("DataToFileForm.cpp", DataToFileFrm);
USEFORM("SysConFRM.cpp", SystemConfigFRM);
USEFORM("CZnoticeFRM.cpp", CZNoticForm);
USEFORM("AddPosFrm.cpp", ADDPOSForm);
USEFORM("BatchLaunchCardProcessFrm.cpp", BatchLaunchCardProcessForm);
USEFORM("CBQForm.cpp", CBQFrm);
USEFORM("LaunchNewCardFRM.cpp", LaunchNewUserCardFRM);
USEFORM("ReSendLostCardFRM.cpp", ResendLostCardnewFRM);
USEFORM("CardRechargeFRM.cpp", CardRechargeMoneyFRM);
USEFORM("CZMXShowForm.cpp", CZMXShowFrm);
USEFORM("CheckedBCFRM.cpp", CheckBatchCollectFRM);
USEFORM("JHQForm.cpp", JHQFrm);
USEFORM("CardCancelFRM.cpp", CardCanceledFRM);
USEFORM("FireLostCardFRM.cpp", FireLostCardInfoFRM);
USEFORM("BatchCollectDataFRM.cpp", BatchCollectFRM);
USEFORM("EMXQForm.cpp", EMXQFrm);
USEFORM("About.cpp", AboutBox);
USEFORM("ChangeSPWFrm.cpp", ChangeSPWForm);
USEFORM("BatchLaunchCardFRM.cpp", BatchLaunchCardForm);
USEFORM("RealCollectWithoutInBaseForm.cpp", RealCollectWOIBFrm);
USEFORM("CTQForm.cpp", CTQFrm);
USEFORM("WaterQForm.cpp", SKMXQFrm);
USEFORM("DealHJLForm.cpp", DealHJLFRM);
USEFORM("PXFMXShowForm.cpp", PXFMXShowFrm);
USEFORM("PXFXMQery.cpp", PXFXMForm);
USEFORM("StopConsumeQForm.cpp", StopConsumeQFrm);
USEFORM("ModeSetFrm.cpp", ModeSetForm);
USEFORM("FixLimitTimeFrm.cpp", FixLimitTimeForm);
USEFORM("BTXFMXQForm.cpp", BTFXMXQFrm);
USEFORM("SingleWDGSFrm.cpp", SingleWDGSForm);
USEFORM("WithDrawERRFRM.cpp", WithDrawERRForm);
USEFORM("SingleGSFrm.cpp", SingleGSForm);
USEFORM("DeleteCardInfoFRM.cpp", DeleteCardInfoFrom);
USEFORM("CZLForm.cpp", CZLQFrm);
USEFORM("PosConFRM.cpp", PosConfigFRM);
USEFORM("ChangeCardMMFRM.cpp", ChangeCardMMForm);
USEFORM("DealMistakFRM.cpp", DealMistakeForm);
USEFORM("ConfirmStoreData.cpp", ConfirmDataFrm);
USEFORM("BigWalletForm.cpp", BigWalletFrm);
USEFORM("CheckWRMachFRM.cpp", CheckWriteReadMachineFRM);
USEFORM("FixTitleFRM.cpp", FixTitleForm);
USEFORM("QKnoticeFRM.cpp", QKnoticeform);
USEFORM("ChooseDataFrm.cpp", ChooseDataForm);
USEFORM("SDIMAIN.CPP", SDIAppForm);
USEFORM("ChangePasswordFRM.cpp", ChangePasswordFrom);
USEFORM("LostCardInfoDLFRM.cpp", LostCardInfoDownloadFRM);
USEFORM("BonusInfoExportFRM.cpp", BonusInfoExportForm);
USEFORM("RealTimeCollectDataFRM.cpp", RealTimeCollectFRM);
USEFORM("CheckIDFRM.cpp", CheckIDForm);
USEFORM("ChangeCardInfoFRM.cpp", ChangeCardInfoForm);
USEFORM("SectionInfoMngFRM.cpp", SectionInfoManageFRM);
USEFORM("CardWithDrawFRM.cpp", CardWithDrawMoneyFRM);
USEFORM("KYQForm.cpp", KYQFrm);
USEFORM("CardMXForm.cpp", MXForm);
USEFORM("CARDQForm.cpp", CARDQFrm);
USEFORM("CARDShowForm.cpp", CARDShowFrm);
USEFORM("GSQForm.cpp", GSQFrm);
USEFORM("XFTJQForm.cpp", XFTJQFrm);
USEFORM("XFMXQForm.cpp", XFMXQFrm);
USEFORM("BackUpDateFrm.cpp", BackUpDatafrm);
USEFORM("CZYJSQForm.cpp", CZYJSQFrm);
USEFORM("MakeAssistanceFRM.cpp", MakeAssistancedFRM);
USEFORM("LoginFRM.cpp", LoginFrom);
USEFORM("ReChargeERRFRM.cpp", ReChargeERRForm);
USEFORM("GoonPWFRM.cpp", GoonPWForm);
USEFORM("CZMXQForm.cpp", CZMXQFrm);
USEFORM("BacthGSFRM.cpp", BatchGSForm);
USEFORM("XFMXShowForm.cpp", XFMXShowFrm);
USEFORM("QKMXQForm.cpp", QKMXQFrm);
USEFORM("ReChargePosMXQueryForm.cpp", ReChargePosForm);
USEFORM("CBMXShowForm.cpp", CBMXShowFrm);
USEFORM("PreOrderMXForm.cpp", PreOrderMXFrm);
USEFORM("PreOrderQueryForm.cpp", PreOrderQFrm);
USEFORM("BKMXShowForm.cpp", BKMXShowFrm);
USEFORM("BKMXQueryForm.cpp", BKMXQForm);
USEFORM("AddMPOSFrm.cpp", AddMPOSForm);
USEFORM("PreorderdealFRM.cpp", PreorderdealForm);
USEFORM("LostInfoDLFrm.cpp", LostInfoFRM);
USEFORM("FixRecordForm.cpp", FixRecordFRM);
USEFORM("PosStatusFRM.cpp", PosStatusForm);
USEFORM("BTDownloadForm.cpp", BTDownloadFrm);
USEFORM("BTMXShowForm.cpp", BTMXShowFRM);
USEFORM("BMQForm.cpp", BMQFrm);
USEFORM("QXFPFRM.cpp", qxfpform);
USEFORM("StopConsumeShowForm.cpp", StopConsumeShowFRM);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
//	SHELLEXECUTEINFO   e1;
	memset(&e1,0,sizeof(e1));
	e1.cbSize=sizeof(e1);
	e1.hwnd=NULL;
	e1.lpFile= "Initialzie.exe";
	e1.nShow=1;
	e1.fMask=SEE_MASK_NOCLOSEPROCESS;
	ShellExecuteEx(&e1);

	Application->Initialize();
	Application->CreateForm(__classid(TSDIAppForm), &SDIAppForm);
		Application->CreateForm(__classid(TAboutBox), &AboutBox);
		Application->CreateForm(__classid(TCheckWriteReadMachineFRM), &CheckWriteReadMachineFRM);
		Application->CreateForm(__classid(TReadCardInfoFRM), &ReadCardInfoFRM);
		Application->CreateForm(__classid(TChangePasswordFrom), &ChangePasswordFrom);
		Application->CreateForm(__classid(TLaunchNewUserCardFRM), &LaunchNewUserCardFRM);
		Application->CreateForm(__classid(TSystemConfigFRM), &SystemConfigFRM);
		Application->CreateForm(__classid(TSectionInfoManageFRM), &SectionInfoManageFRM);
		Application->CreateForm(__classid(TADDPOSForm), &ADDPOSForm);
		Application->CreateForm(__classid(TLostCardInfoDownloadFRM), &LostCardInfoDownloadFRM);
		Application->CreateForm(__classid(TDeleteCardInfoFrom), &DeleteCardInfoFrom);
		Application->CreateForm(__classid(TRecordLostCardFRM), &RecordLostCardFRM);
		Application->CreateForm(__classid(TChooseDataForm), &ChooseDataForm);
		Application->CreateForm(__classid(TBonusInfoExportForm), &BonusInfoExportForm);
		Application->CreateForm(__classid(TMXForm), &MXForm);
		Application->CreateForm(__classid(TChangeCardInfoForm), &ChangeCardInfoForm);
		Application->CreateForm(__classid(TCheckIDForm), &CheckIDForm);
		Application->CreateForm(__classid(TBTDownloadFrm), &BTDownloadFrm);
		Application->CreateForm(__classid(TCardWithDrawMoneyFRM), &CardWithDrawMoneyFRM);
		Application->CreateForm(__classid(TChangeCardMMForm), &ChangeCardMMForm);
		Application->CreateForm(__classid(TRealTimeCollectFRM), &RealTimeCollectFRM);
		Application->CreateForm(__classid(TMakeAssistancedFRM), &MakeAssistancedFRM);
		Application->CreateForm(__classid(TCardRechargeMoneyFRM), &CardRechargeMoneyFRM);
		Application->CreateForm(__classid(TBatchCollectFRM), &BatchCollectFRM);
		Application->CreateForm(__classid(TLoginFrom), &LoginFrom);
		Application->CreateForm(__classid(TCardCanceledFRM), &CardCanceledFRM);
		Application->CreateForm(__classid(TPosConfigFRM), &PosConfigFRM);
		Application->CreateForm(__classid(TCheckBatchCollectFRM), &CheckBatchCollectFRM);
		Application->CreateForm(__classid(TResendLostCardnewFRM), &ResendLostCardnewFRM);
		Application->CreateForm(__classid(TFireLostCardInfoFRM), &FireLostCardInfoFRM);
		Application->CreateForm(__classid(TQKnoticeform), &QKnoticeform);
		Application->CreateForm(__classid(TBatchLaunchCardForm), &BatchLaunchCardForm);
		Application->CreateForm(__classid(TCZNoticForm), &CZNoticForm);
		Application->CreateForm(__classid(TDataToFileFrm), &DataToFileFrm);
		Application->CreateForm(__classid(TBackUpDatafrm), &BackUpDatafrm);
		Application->CreateForm(__classid(TBatchLaunchCardProcessForm), &BatchLaunchCardProcessForm);
		Application->CreateForm(__classid(TCZMXQFrm), &CZMXQFrm);
		Application->CreateForm(__classid(TCZMXShowFrm), &CZMXShowFrm);
		Application->CreateForm(__classid(TQKMXQFrm), &QKMXQFrm);
		Application->CreateForm(__classid(TQKMXShowFrm), &QKMXShowFrm);
		Application->CreateForm(__classid(TXFMXQFrm), &XFMXQFrm);
		Application->CreateForm(__classid(TXFMXShowFrm), &XFMXShowFrm);
		Application->CreateForm(__classid(TCARDQFrm), &CARDQFrm);
		Application->CreateForm(__classid(TCARDShowFrm), &CARDShowFrm);
		Application->CreateForm(__classid(TCBQFrm), &CBQFrm);
		Application->CreateForm(__classid(TCBMXShowFrm), &CBMXShowFrm);
		Application->CreateForm(__classid(TCTQFrm), &CTQFrm);
		Application->CreateForm(__classid(TJHQFrm), &JHQFrm);
		Application->CreateForm(__classid(TBMQFrm), &BMQFrm);
		Application->CreateForm(__classid(TKYQFrm), &KYQFrm);
		Application->CreateForm(__classid(TTKQFrm), &TKQFrm);
		Application->CreateForm(__classid(TGSQFrm), &GSQFrm);
		Application->CreateForm(__classid(TEMXQFrm), &EMXQFrm);
		Application->CreateForm(__classid(TCZLQFrm), &CZLQFrm);
		Application->CreateForm(__classid(TCZYJSQFrm), &CZYJSQFrm);
		Application->CreateForm(__classid(TSZHZQFrm), &SZHZQFrm);
		Application->CreateForm(__classid(TXFTJQFrm), &XFTJQFrm);
		Application->CreateForm(__classid(TFixTitleForm), &FixTitleForm);
		Application->CreateForm(__classid(TAddMPOSForm), &AddMPOSForm);
		Application->CreateForm(__classid(TChangeSPWForm), &ChangeSPWForm);
		Application->CreateForm(__classid(TPreorderdealForm), &PreorderdealForm);
		Application->CreateForm(__classid(TRealCollectWOIBFrm), &RealCollectWOIBFrm);
		Application->CreateForm(__classid(TPreOrderQFrm), &PreOrderQFrm);
		Application->CreateForm(__classid(TPreOrderMXFrm), &PreOrderMXFrm);
		Application->CreateForm(__classid(TDealHJLFRM), &DealHJLFRM);
		Application->CreateForm(__classid(TConfirmDataFrm), &ConfirmDataFrm);
		Application->CreateForm(__classid(TBigWalletFrm), &BigWalletFrm);
		Application->CreateForm(__classid(TPosStatusForm), &PosStatusForm);
		Application->CreateForm(__classid(TReChargeERRForm), &ReChargeERRForm);
		Application->CreateForm(__classid(TDealMistakeForm), &DealMistakeForm);
		Application->CreateForm(__classid(TBatchGSForm), &BatchGSForm);
		Application->CreateForm(__classid(TSingleWDGSForm), &SingleWDGSForm);
		Application->CreateForm(__classid(TSingleGSForm), &SingleGSForm);
		Application->CreateForm(__classid(TWithDrawERRForm), &WithDrawERRForm);
		Application->CreateForm(__classid(TGoonPWForm), &GoonPWForm);
		Application->CreateForm(__classid(TReChargePosForm), &ReChargePosForm);
		Application->CreateForm(__classid(TBKMXQForm), &BKMXQForm);
		Application->CreateForm(__classid(TBKMXShowFrm), &BKMXShowFrm);
		Application->CreateForm(__classid(TSKMXQFrm), &SKMXQFrm);
		Application->CreateForm(__classid(TBTFXMXQFrm), &BTFXMXQFrm);
		Application->CreateForm(__classid(TBTMXShowFRM), &BTMXShowFRM);
		Application->CreateForm(__classid(TFixLimitTimeForm), &FixLimitTimeForm);
		Application->CreateForm(__classid(TFixRecordFRM), &FixRecordFRM);
		Application->CreateForm(__classid(TLostInfoFRM), &LostInfoFRM);
		Application->CreateForm(__classid(Tqxfpform), &qxfpform);
		Application->CreateForm(__classid(TPXFXMForm), &PXFXMForm);
		Application->CreateForm(__classid(TPXFMXShowFrm), &PXFMXShowFrm);
		Application->CreateForm(__classid(TModeSetForm), &ModeSetForm);
		Application->CreateForm(__classid(TStopConsumeQFrm), &StopConsumeQFrm);
		Application->CreateForm(__classid(TStopConsumeShowFRM), &StopConsumeShowFRM);
		UINT ExitCode;
	TerminateProcess(e1.hProcess,ExitCode);

	Application->Run();

	return 0;
}
//---------------------------------------------------------------------
