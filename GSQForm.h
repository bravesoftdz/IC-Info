//---------------------------------------------------------------------------

#ifndef GSQFormH
#define GSQFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxGroupBox.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxProgressBar.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkRoom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringTime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinXmas2008Blue.hpp"
#include "frxClass.hpp"
#include "frxDBSet.hpp"
#include <ADODB.hpp>
#include <DB.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include "GlobalParameter.h"
#include "GSExportThread.h"
#include "cxCalendar.hpp"
#include "cxDropDownEdit.hpp"
#include "cxMaskEdit.hpp"
//---------------------------------------------------------------------------
class TGSQFrm : public TForm
{
__published:	// IDE-managed Components
	TcxGroupBox *cxGroupBox1;
	TcxLabel *cxLabel15;
	TcxTextEdit *KHTextEdit;
	TcxTextEdit *BHTextEdit;
	TcxLabel *cxLabel17;
	TcxLabel *cxLabel16;
	TcxTextEdit *XMTextEdit;
	TcxButton *QueryBTN;
	TcxGroupBox *cxGroupBox2;
	TcxGroupBox *cxGroupBox3;
	TcxGrid *DataGrid;
	TcxGridDBTableView *DataGridDBTV;
	TcxGridLevel *DataGridLL;
	TcxGroupBox *cxGroupBox4;
	TcxProgressBar *GSExportProgressBar;
	TcxGroupBox *cxGroupBox5;
	TPanel *Panel2;
	TcxButton *GSExportBTN;
	TcxButton *GSExitBTN;
	TcxButton *PreviewBTN;
	TcxGroupBox *cxGroupBox6;
	TPanel *Panel1;
	TcxStyleRepository *cxStyleRepository1;
	TcxStyle *cxStyle1;
	TcxStyle *cxStyle2;
	TcxStyle *cxStyle3;
	TcxStyle *cxStyle4;
	TcxStyle *cxStyle5;
	TcxStyle *cxStyle6;
	TcxStyle *cxStyle7;
	TcxStyle *cxStyle8;
	TcxStyle *cxStyle9;
	TcxStyle *cxStyle10;
	TcxStyle *cxStyle11;
	TcxStyle *cxStyle12;
	TcxStyle *cxStyle13;
	TcxStyle *cxStyle14;
	TcxGridTableViewStyleSheet *GridTableViewStyleSheetDevExpress;
	TADOQuery *GSADOQuery;
	TDataSource *GSDataSource;
	TSaveDialog *SaveDialog;
	TADOQuery *ADOQInThread;
	TfrxReport *frxGSReport;
	TfrxDBDataset *frxDBDataset1;
	TcxLabel *cxLabel4;
	TcxDateEdit *GSBeginDateEdit;
	TcxLabel *cxLabel3;
	TcxDateEdit *GSEndDateEdit;
	void __fastcall GSExitBTNClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall KHTextEditKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall QueryBTNClick(TObject *Sender);
	void __fastcall GSExportBTNClick(TObject *Sender);
	void __fastcall PreviewBTNClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TGSQFrm(TComponent* Owner);
    String KHStr;
    String BHStr;
    String XMStr;
	String CZYStr;
};
//---------------------------------------------------------------------------
extern PACKAGE TGSQFrm *GSQFrm;
//---------------------------------------------------------------------------
#endif
