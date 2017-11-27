unit Unit1;

interface

uses         
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, ExtCtrls, sPanel, StdCtrls,
  sComboBox, sButton, sEdit, sLabel, sAlphaListBox, sCheckBox,
  sMemo, ComCtrls, sTrackBar, sUpDown, Buttons, sBitBtn,
  sScrollBar, sScrollBox, ImgList, Menus,
  gifimage, sSpeedButton, sRichEdit, sComboBoxes, ShellApi,
  sDialogs, Grids,bass, sSplitter, OleCtrls, SHDocVw, sRadioButton, sBevel,
  sGauge;
                              
type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sPanel2: TsPanel;
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    popup1_1: TMenuItem;
    popup1_2: TMenuItem;
    popup1_3: TMenuItem;
    sPanel3: TsPanel;
    sEdit1: TsEdit;
    Image4: TImage;
    sComboBox2: TsComboBox;
    sComboBox1: TsComboBox;
    sButton3: TsButton;
    sEdit2: TsEdit;
    sPanel4: TsPanel;
    Image5: TImage;
    Label2: TLabel;
    sLabelFX8: TsLabelFX;
    Image_arrow1: TImage;
    Image_arrow2: TImage;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sPanel5: TsPanel;
    Image6: TImage;
    Label3: TLabel;
    sLabelFX12: TsLabelFX;
    sLabelFX13: TsLabelFX;
    sLabelFX15: TsLabelFX;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton5: TsButton;
    sPanel6: TsPanel;
    Image3: TImage;
    Label4: TLabel;
    sLabelFX16: TsLabelFX;
    sEdit6: TsEdit;
    sButton6: TsButton;
    sButton7: TsButton;
    sPanel7: TsPanel;
    Image7: TImage;
    Label5: TLabel;
    sPanel8: TsPanel;
    Label6: TLabel;
    sComboBox6: TsComboBox;
    sButton10: TsButton;
    sRichEdit1: TsRichEdit;
    sButton11: TsButton;
    sPanel9: TsPanel;
    Image11: TImage;
    Label7: TLabel;
    sEdit7: TsEdit;
    sLabelFX19: TsLabelFX;
    sListBox1: TsListBox;
    sListBox2: TsListBox;
    sLabelFX21: TsLabelFX;
    sEdit9: TsEdit;
    sListBox3: TsListBox;
    sEdit10: TsEdit;
    sLabelFX22: TsLabelFX;
    sLabelFX23: TsLabelFX;
    sColorBox1: TsColorBox;
    sLabelFX20: TsLabelFX;
    sColorBox2: TsColorBox;
    sLabelFX24: TsLabelFX;
    sColorBox3: TsColorBox;
    sLabelFX25: TsLabelFX;
    sColorBox4: TsColorBox;
    sLabelFX26: TsLabelFX;
    sColorBox5: TsColorBox;
    sPanel10: TsPanel;
    Image10: TImage;
    Label8: TLabel;
    sLabelFX27: TsLabelFX;
    sLabelFX28: TsLabelFX;
    sLabelFX29: TsLabelFX;
    sLabelFX30: TsLabelFX;
    sLabelFX31: TsLabelFX;
    sLabelFX32: TsLabelFX;
    sLabelFX33: TsLabelFX;
    sLabelFX34: TsLabelFX;
    sLabelFX35: TsLabelFX;
    sLabelFX36: TsLabelFX;
    sLabelFX37: TsLabelFX;
    sLabelFX38: TsLabelFX;
    sLabelFX39: TsLabelFX;
    sLabelFX40: TsLabelFX;
    sLabelFX41: TsLabelFX;
    sLabelFX42: TsLabelFX;
    sLabelFX43: TsLabelFX;
    sLabelFX44: TsLabelFX;
    sLabelFX45: TsLabelFX;
    sLabelFX46: TsLabelFX;
    sLabelFX47: TsLabelFX;
    sLabelFX48: TsLabelFX;
    sLabelFX49: TsLabelFX;
    sLabelFX50: TsLabelFX;
    sLabelFX51: TsLabelFX;
    sLabelFX52: TsLabelFX;
    sLabelFX53: TsLabelFX;
    sLabelFX54: TsLabelFX;
    sLabelFX55: TsLabelFX;
    sLabelFX56: TsLabelFX;
    sLabelFX57: TsLabelFX;
    sLabelFX58: TsLabelFX;
    sLabelFX59: TsLabelFX;
    sLabelFX60: TsLabelFX;
    sLabelFX61: TsLabelFX;
    sLabelFX62: TsLabelFX;
    sLabelFX63: TsLabelFX;
    sLabelFX64: TsLabelFX;
    sLabelFX65: TsLabelFX;
    sLabelFX66: TsLabelFX;
    sLabelFX67: TsLabelFX;
    sLabelFX68: TsLabelFX;
    sLabelFX69: TsLabelFX;
    sLabelFX70: TsLabelFX;
    sLabelFX71: TsLabelFX;
    sLabelFX72: TsLabelFX;
    sLabelFX73: TsLabelFX;
    sLabelFX74: TsLabelFX;
    sLabelFX75: TsLabelFX;
    sLabelFX76: TsLabelFX;
    sLabelFX77: TsLabelFX;
    sLabelFX78: TsLabelFX;
    sLabelFX79: TsLabelFX;
    sLabelFX80: TsLabelFX;
    sLabelFX81: TsLabelFX;
    sLabelFX82: TsLabelFX;
    sLabelFX83: TsLabelFX;
    sLabelFX84: TsLabelFX;
    sLabelFX85: TsLabelFX;
    sLabelFX86: TsLabelFX;
    sPanel1: TsPanel;
    Image1: TImage;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sLabelFX6: TsLabelFX;
    sLabelFX7: TsLabelFX;
    sLabelFX9: TsLabelFX;
    top1: TsLabelFX;
    plname1: TsLabelFX;
    plname2: TsLabelFX;
    plname3: TsLabelFX;
    plname4: TsLabelFX;
    plname5: TsLabelFX;
    plname6: TsLabelFX;
    plname7: TsLabelFX;
    plname8: TsLabelFX;
    plname9: TsLabelFX;
    onl_Image1: TImage;
    onl_Image2: TImage;
    onl_Image3: TImage;
    top2: TsLabelFX;
    top3: TsLabelFX;
    top4: TsLabelFX;
    sn1: TsLabelFX;
    sn2: TsLabelFX;
    po1: TsLabelFX;
    po2: TsLabelFX;
    na1: TsLabelFX;
    li1: TImage;
    top5: TsLabelFX;
    top6: TsLabelFX;
    plname10: TsLabelFX;
    plname11: TsLabelFX;
    plname12: TsLabelFX;
    plname13: TsLabelFX;
    plname14: TsLabelFX;
    onl_Image4: TImage;
    onl_Image6: TImage;
    onl_Image7: TImage;
    onl_Image8: TImage;
    onl_Image9: TImage;
    onl_Image10: TImage;
    onl_Image11: TImage;
    onl_Image12: TImage;
    onl_Image13: TImage;
    onl_Image5: TImage;
    onl_Image14: TImage;
    Label1: TLabel;
    sn3: TsLabelFX;
    sn4: TsLabelFX;
    sn5: TsLabelFX;
    sn6: TsLabelFX;
    sn7: TsLabelFX;
    sn8: TsLabelFX;
    sn9: TsLabelFX;
    sn10: TsLabelFX;
    sn11: TsLabelFX;
    sn12: TsLabelFX;
    sn13: TsLabelFX;
    sn14: TsLabelFX;
    po3: TsLabelFX;
    po4: TsLabelFX;
    po5: TsLabelFX;
    po6: TsLabelFX;
    po7: TsLabelFX;
    po8: TsLabelFX;
    po9: TsLabelFX;
    po10: TsLabelFX;
    po11: TsLabelFX;
    po12: TsLabelFX;
    po13: TsLabelFX;
    po14: TsLabelFX;
    li2: TImage;
    li3: TImage;
    li4: TImage;
    li5: TImage;
    li6: TImage;
    li7: TImage;
    li8: TImage;
    li9: TImage;
    li10: TImage;
    li11: TImage;
    li12: TImage;
    li13: TImage;
    li14: TImage;
    na2: TsLabelFX;
    na3: TsLabelFX;
    na4: TsLabelFX;
    na5: TsLabelFX;
    na6: TsLabelFX;
    na7: TsLabelFX;
    na8: TsLabelFX;
    na9: TsLabelFX;
    na10: TsLabelFX;
    na11: TsLabelFX;
    na12: TsLabelFX;
    na13: TsLabelFX;
    na14: TsLabelFX;
    as1: TsLabelFX;
    as2: TsLabelFX;
    as3: TsLabelFX;
    as4: TsLabelFX;
    as5: TsLabelFX;
    as6: TsLabelFX;
    as7: TsLabelFX;
    as8: TsLabelFX;
    as9: TsLabelFX;
    as12: TsLabelFX;
    as13: TsLabelFX;
    as14: TsLabelFX;
    as11: TsLabelFX;
    as10: TsLabelFX;
    g1: TsLabelFX;
    g2: TsLabelFX;
    g4: TsLabelFX;
    g3: TsLabelFX;
    g5: TsLabelFX;
    g6: TsLabelFX;
    g7: TsLabelFX;
    g8: TsLabelFX;
    g9: TsLabelFX;
    g10: TsLabelFX;
    g11: TsLabelFX;
    g12: TsLabelFX;
    g13: TsLabelFX;
    g14: TsLabelFX;
    a1: TsLabelFX;
    a2: TsLabelFX;
    a4: TsLabelFX;
    a3: TsLabelFX;
    a5: TsLabelFX;
    a6: TsLabelFX;
    a7: TsLabelFX;
    a8: TsLabelFX;
    a9: TsLabelFX;
    a10: TsLabelFX;
    a11: TsLabelFX;
    a12: TsLabelFX;
    a13: TsLabelFX;
    a14: TsLabelFX;
    kit_image1: TImage;
    kit_image3: TImage;
    kit_image5: TImage;
    kit_image2: TImage;
    kit_image4: TImage;
    kit_image6: TImage;
    Image8: TImage;
    sLabelFX17: TsLabelFX;
    sLabelFX18: TsLabelFX;
    sButton4: TsButton;
    sScrollBar1: TsScrollBar;
    sMemo2: TsMemo;
    sComboBox4: TsComboBox;
    sButton12: TsButton;
    sPanel11: TsPanel;
    Image12: TImage;
    Label9: TLabel;
    inv1: TsLabelFX;
    inv2: TsLabelFX;
    inv3: TsLabelFX;
    inv4: TsLabelFX;
    inv5: TsLabelFX;
    inv6: TsLabelFX;
    inv7: TsLabelFX;
    inv8: TsLabelFX;
    inv9: TsLabelFX;
    inv10: TsLabelFX;
    inv20: TsLabelFX;
    inv11: TsLabelFX;
    inv12: TsLabelFX;
    inv13: TsLabelFX;
    inv15: TsLabelFX;
    inv14: TsLabelFX;
    inv16: TsLabelFX;
    inv17: TsLabelFX;
    inv18: TsLabelFX;
    inv19: TsLabelFX;
    acc1: TsButton;
    rej1: TsButton;
    acc2: TsButton;
    rej2: TsButton;
    acc3: TsButton;
    rej3: TsButton;
    acc6: TsButton;
    rej6: TsButton;
    acc4: TsButton;
    rej4: TsButton;
    acc5: TsButton;
    rej5: TsButton;
    acc9: TsButton;
    rej9: TsButton;
    acc7: TsButton;
    rej7: TsButton;
    acc8: TsButton;
    rej8: TsButton;
    acc12: TsButton;
    rej12: TsButton;
    acc10: TsButton;
    rej10: TsButton;
    acc11: TsButton;
    rej11: TsButton;
    acc15: TsButton;
    rej15: TsButton;
    acc13: TsButton;
    rej13: TsButton;
    acc14: TsButton;
    rej14: TsButton;
    acc18: TsButton;
    rej18: TsButton;
    acc16: TsButton;
    rej16: TsButton;
    acc17: TsButton;
    rej17: TsButton;
    acc19: TsButton;
    rej19: TsButton;
    acc20: TsButton;
    rej20: TsButton;
    sTrackBar1: TsTrackBar;
    sTrackBar2: TsTrackBar;
    sCheckBox4: TsCheckBox;
    sLabelFX87: TsLabelFX;
    sLabelFX88: TsLabelFX;
    sLabelFX89: TsLabelFX;
    sButton9: TsButton;
    sCheckBox5: TsCheckBox;
    sLabelFX90: TsLabelFX;
    sLabelFX91: TsLabelFX;
    sEdit8: TsEdit;
    sEdit11: TsEdit;
    sButton13: TsButton;
    sLabelFX92: TsLabelFX;
    sLabelFX93: TsLabelFX;
    sLabelFX94: TsLabelFX;
    invited1: TsLabelFX;
    PopupMenu2: TPopupMenu;
    popup2_1: TMenuItem;
    name1: TMenuItem;
    popup2_2: TMenuItem;
    popup2_3: TMenuItem;
    sColorDialog1: TsColorDialog;
    invited2: TsLabelFX;
    invited3: TsLabelFX;
    invited4: TsLabelFX;
    invited5: TsLabelFX;
    invited6: TsLabelFX;
    invited7: TsLabelFX;
    invited8: TsLabelFX;
    invited9: TsLabelFX;
    invited10: TsLabelFX;
    invited11: TsLabelFX;
    invited12: TsLabelFX;
    invited13: TsLabelFX;
    invited14: TsLabelFX;
    invited15: TsLabelFX;
    invited16: TsLabelFX;
    invited17: TsLabelFX;
    invited18: TsLabelFX;
    invited19: TsLabelFX;
    invited20: TsLabelFX;
    invcan1: TsButton;
    invcan2: TsButton;
    invcan3: TsButton;
    invcan4: TsButton;
    invcan5: TsButton;
    invcan6: TsButton;
    invcan7: TsButton;
    invcan8: TsButton;
    invcan9: TsButton;
    invcan10: TsButton;
    invcan11: TsButton;
    invcan12: TsButton;
    invcan13: TsButton;
    invcan14: TsButton;
    invcan15: TsButton;
    invcan16: TsButton;
    invcan17: TsButton;
    invcan18: TsButton;
    invcan19: TsButton;
    invcan20: TsButton;
    sPanel12: TsPanel;
    Image13: TImage;
    Label10: TLabel;
    sLabelFX95: TsLabelFX;
    sLabelFX96: TsLabelFX;
    pserv1: TsLabelFX;
    pserv2: TsLabelFX;
    pserv3: TsLabelFX;
    pserv4: TsLabelFX;
    pserv5: TsLabelFX;
    pserv6: TsLabelFX;
    pserv7: TsLabelFX;
    pserv8: TsLabelFX;
    pserv9: TsLabelFX;
    pserv10: TsLabelFX;
    pserv11: TsLabelFX;
    pserv12: TsLabelFX;
    pserv13: TsLabelFX;
    pserv14: TsLabelFX;
    pserv15: TsLabelFX;
    pserv16: TsLabelFX;
    pserv17: TsLabelFX;
    pserv18: TsLabelFX;
    pserv19: TsLabelFX;
    pserv20: TsLabelFX;
    sScrollBar2: TsScrollBar;
    sLabelFX97: TsLabelFX;
    sLabelFX98: TsLabelFX;
    sLabelFX100: TsLabelFX;
    sLabelFX101: TsLabelFX;
    sButton14: TsButton;
    plrs1: TsLabelFX;
    plrs2: TsLabelFX;
    plrs3: TsLabelFX;
    plrs4: TsLabelFX;
    plrs5: TsLabelFX;
    plrs6: TsLabelFX;
    plrs7: TsLabelFX;
    plrs8: TsLabelFX;
    plrs9: TsLabelFX;
    plrs10: TsLabelFX;
    plrs11: TsLabelFX;
    plrs12: TsLabelFX;
    plrs13: TsLabelFX;
    plrs14: TsLabelFX;
    plrs15: TsLabelFX;
    plrs16: TsLabelFX;
    plrs17: TsLabelFX;
    plrs18: TsLabelFX;
    plrs19: TsLabelFX;
    plrs20: TsLabelFX;
    sLabelFX103: TsLabelFX;
    sComboBox3: TsComboBox;
    sComboBox12: TsComboBox;
    sLabelFX104: TsLabelFX;
    sLabelFX105: TsLabelFX;
    sLabelFX106: TsLabelFX;
    sComboBox13: TsComboBox;
    sComboBox14: TsComboBox;
    sLabelFX107: TsLabelFX;
    sComboBox15: TsComboBox;
    sLabelFX108: TsLabelFX;
    sLabelFX114: TsLabelFX;
    sLabelFX115: TsLabelFX;
    sLabelFX116: TsLabelFX;
    sLabelFX117: TsLabelFX;
    sButton15: TsButton;
    sButton16: TsButton;
    sButton17: TsButton;
    sButton18: TsButton;
    sComboBox16: TsComboBox;
    sComboBox17: TsComboBox;
    sComboBox18: TsComboBox;
    sComboBox20: TsComboBox;
    sButton19: TsButton;
    sButton20: TsButton;
    sButton21: TsButton;
    sButton23: TsButton;
    sPanel14: TsPanel;
    Image14: TImage;
    Label11: TLabel;
    sScrollBar3: TsScrollBar;
    sLabelFX109: TsLabelFX;
    sLabelFX110: TsLabelFX;
    sLabelFX111: TsLabelFX;
    sLabelFX113: TsLabelFX;
    playing4: TsLabelFX;
    chalteam1: TsLabelFX;
    chalteam2: TsLabelFX;
    chalteam3: TsLabelFX;
    chalteam4: TsLabelFX;
    chalteam5: TsLabelFX;
    chalteam6: TsLabelFX;
    chalteam7: TsLabelFX;
    chalteam8: TsLabelFX;
    chalteam9: TsLabelFX;
    chalteam10: TsLabelFX;
    chalteam11: TsLabelFX;
    chalteam12: TsLabelFX;
    sButton25: TsButton;
    chalteam13: TsLabelFX;
    chalteam14: TsLabelFX;
    chalteam15: TsLabelFX;
    chalteam16: TsLabelFX;
    chalteam17: TsLabelFX;
    chalteam18: TsLabelFX;
    plrs_onl1: TsLabelFX;
    plrs_onl2: TsLabelFX;
    plrs_onl3: TsLabelFX;
    plrs_onl4: TsLabelFX;
    plrs_onl5: TsLabelFX;
    plrs_onl6: TsLabelFX;
    plrs_onl7: TsLabelFX;
    plrs_onl8: TsLabelFX;
    plrs_onl9: TsLabelFX;
    plrs_onl11: TsLabelFX;
    plrs_onl12: TsLabelFX;
    plrs_onl13: TsLabelFX;
    plrs_onl14: TsLabelFX;
    plrs_onl17: TsLabelFX;
    plrs_onl10: TsLabelFX;
    plrs_onl15: TsLabelFX;
    plrs_onl16: TsLabelFX;
    plrs_onl18: TsLabelFX;
    ranking1: TsLabelFX;
    ranking2: TsLabelFX;
    ranking3: TsLabelFX;
    ranking4: TsLabelFX;
    ranking5: TsLabelFX;
    ranking6: TsLabelFX;
    ranking7: TsLabelFX;
    ranking8: TsLabelFX;
    ranking9: TsLabelFX;
    ranking10: TsLabelFX;
    ranking11: TsLabelFX;
    ranking12: TsLabelFX;
    ranking13: TsLabelFX;
    ranking14: TsLabelFX;
    ranking15: TsLabelFX;
    ranking16: TsLabelFX;
    ranking17: TsLabelFX;
    ranking18: TsLabelFX;
    playing1: TsLabelFX;
    playing2: TsLabelFX;
    playing3: TsLabelFX;
    playing5: TsLabelFX;
    playing6: TsLabelFX;
    playing7: TsLabelFX;
    playing8: TsLabelFX;
    playing9: TsLabelFX;
    playing10: TsLabelFX;
    playing11: TsLabelFX;
    playing12: TsLabelFX;
    playing13: TsLabelFX;
    playing14: TsLabelFX;
    playing15: TsLabelFX;
    playing16: TsLabelFX;
    playing17: TsLabelFX;
    playing18: TsLabelFX;
    sPanel15: TsPanel;
    Image15: TImage;
    Label12: TLabel;
    kit_image1b: TImage;
    kit_image2b: TImage;
    kit_image3b: TImage;
    kit_image4b: TImage;
    kit_image5b: TImage;
    kit_image6b: TImage;
    sButton24: TsButton;
    sButton26: TsButton;
    Challenge: TsButton;
    sComboBox21: TsComboBox;
    sLabelFX119: TsLabelFX;
    sLabelFX120: TsLabelFX;
    sLabelFX121: TsLabelFX;
    sTrackBar3: TsTrackBar;
    Livescores1: TMenuItem;
    sPanel16: TsPanel;
    Label13: TLabel;
    Image16: TImage;
    sScrollBar4: TsScrollBar;
    sLabelFX122: TsLabelFX;
    sLabelFX123: TsLabelFX;
    sLabelFX124: TsLabelFX;
    time1: TsLabelFX;
    time2: TsLabelFX;
    time3: TsLabelFX;
    time4: TsLabelFX;
    time5: TsLabelFX;
    time6: TsLabelFX;
    time7: TsLabelFX;
    time8: TsLabelFX;
    time9: TsLabelFX;
    time10: TsLabelFX;
    time11: TsLabelFX;
    time12: TsLabelFX;
    time13: TsLabelFX;
    time14: TsLabelFX;
    time15: TsLabelFX;
    time16: TsLabelFX;
    time17: TsLabelFX;
    time18: TsLabelFX;
    time19: TsLabelFX;
    time20: TsLabelFX;
    score1: TsLabelFX;
    score2: TsLabelFX;
    score3: TsLabelFX;
    score4: TsLabelFX;
    score5: TsLabelFX;
    score6: TsLabelFX;
    score7: TsLabelFX;
    score8: TsLabelFX;
    score9: TsLabelFX;
    score10: TsLabelFX;
    score11: TsLabelFX;
    score12: TsLabelFX;
    score13: TsLabelFX;
    score14: TsLabelFX;
    score15: TsLabelFX;
    score16: TsLabelFX;
    score17: TsLabelFX;
    score18: TsLabelFX;
    score19: TsLabelFX;
    score20: TsLabelFX;
    match1: TsLabelFX;
    match2: TsLabelFX;
    match3: TsLabelFX;
    match4: TsLabelFX;
    match5: TsLabelFX;
    match6: TsLabelFX;
    match7: TsLabelFX;
    match8: TsLabelFX;
    match9: TsLabelFX;
    match10: TsLabelFX;
    match11: TsLabelFX;
    match12: TsLabelFX;
    match13: TsLabelFX;
    match14: TsLabelFX;
    match15: TsLabelFX;
    match16: TsLabelFX;
    match17: TsLabelFX;
    match18: TsLabelFX;
    match19: TsLabelFX;
    match20: TsLabelFX;
    sLabelFX125: TsLabelFX;
    sButton27: TsButton;
    sLabelFX127: TsLabelFX;
    sLabelFX129: TsLabelFX;
    sButton29: TsButton;
    sButton30: TsButton;
    career_team11: TsLabelFX;
    sLabelFX11: TsLabelFX;
    career_team10: TsLabelFX;
    career_team9: TsLabelFX;
    career_team8: TsLabelFX;
    career_team7: TsLabelFX;
    career_team6: TsLabelFX;
    career_team5: TsLabelFX;
    career_team4: TsLabelFX;
    career_team3: TsLabelFX;
    career_team2: TsLabelFX;
    career_team1: TsLabelFX;
    sLabelFX142: TsLabelFX;
    sLabelFX143: TsLabelFX;
    sLabelFX144: TsLabelFX;
    sLabelFX145: TsLabelFX;
    sLabelFX146: TsLabelFX;
    sLabelFX147: TsLabelFX;
    sLabelFX148: TsLabelFX;
    sLabelFX149: TsLabelFX;
    car_ap11: TsLabelFX;
    car_ap10: TsLabelFX;
    car_ap9: TsLabelFX;
    car_ap8: TsLabelFX;
    car_ap7: TsLabelFX;
    car_ap6: TsLabelFX;
    car_ap5: TsLabelFX;
    car_ap4: TsLabelFX;
    car_ap3: TsLabelFX;
    car_ap2: TsLabelFX;
    car_ap1: TsLabelFX;
    car_sta6: TsLabelFX;
    car_gl11: TsLabelFX;
    car_gl10: TsLabelFX;
    car_gl9: TsLabelFX;
    car_gl8: TsLabelFX;
    car_gl7: TsLabelFX;
    car_gl6: TsLabelFX;
    car_gl5: TsLabelFX;
    car_gl4: TsLabelFX;
    car_gl3: TsLabelFX;
    car_gl2: TsLabelFX;
    car_gl1: TsLabelFX;
    car_sta1: TsLabelFX;
    car_sta7: TsLabelFX;
    car_as11: TsLabelFX;
    car_as10: TsLabelFX;
    car_as9: TsLabelFX;
    car_as8: TsLabelFX;
    car_as7: TsLabelFX;
    car_as6: TsLabelFX;
    car_as5: TsLabelFX;
    car_as4: TsLabelFX;
    car_as3: TsLabelFX;
    car_as2: TsLabelFX;
    car_as1: TsLabelFX;
    car_sta2: TsLabelFX;
    car_sta8: TsLabelFX;
    car_pa10: TsLabelFX;
    car_pa9: TsLabelFX;
    car_pa8: TsLabelFX;
    car_pa7: TsLabelFX;
    car_pa6: TsLabelFX;
    car_pa5: TsLabelFX;
    car_pa4: TsLabelFX;
    car_pa3: TsLabelFX;
    car_pa2: TsLabelFX;
    car_pa1: TsLabelFX;
    car_pa11: TsLabelFX;
    car_sta3: TsLabelFX;
    car_sta9: TsLabelFX;
    car_tc11: TsLabelFX;
    car_tc10: TsLabelFX;
    car_tc9: TsLabelFX;
    car_tc8: TsLabelFX;
    car_tc7: TsLabelFX;
    car_tc6: TsLabelFX;
    car_tc5: TsLabelFX;
    car_tc4: TsLabelFX;
    car_tc3: TsLabelFX;
    car_tc2: TsLabelFX;
    car_tc1: TsLabelFX;
    car_sta4: TsLabelFX;
    car_sta10: TsLabelFX;
    car_he11: TsLabelFX;
    car_he10: TsLabelFX;
    car_he9: TsLabelFX;
    car_he8: TsLabelFX;
    car_he7: TsLabelFX;
    car_he6: TsLabelFX;
    car_he5: TsLabelFX;
    car_he4: TsLabelFX;
    car_he3: TsLabelFX;
    car_he2: TsLabelFX;
    car_he1: TsLabelFX;
    car_sta5: TsLabelFX;
    car_sta11: TsLabelFX;
    Image17: TImage;
    sMemo1: TsMemo;
    sEdit12: TsEdit;
    sEdit13: TsEdit;
    sButton31: TsButton;
    sLabelFX10: TsLabelFX;
    sLabelFX132: TsLabelFX;
    Image18: TImage;
    sLabelFX133: TsLabelFX;
    sLabelFX135: TsLabelFX;
    sLabelFX136: TsLabelFX;
    sLabelFX137: TsLabelFX;
    sLabelFX138: TsLabelFX;
    qwa1: TsLabelFX;
    qwa2: TsLabelFX;
    qwa3: TsLabelFX;
    qwa4: TsLabelFX;
    qwa5: TsLabelFX;
    sPanel17: TsPanel;
    Image19: TImage;
    sButton32: TsButton;
    sListBox4: TsListBox;
    sRichEdit2: TsRichEdit;
    Label14: TLabel;
    chalteam19: TsLabelFX;
    chalteam20: TsLabelFX;
    plrs_onl19: TsLabelFX;
    plrs_onl20: TsLabelFX;
    ranking19: TsLabelFX;
    ranking20: TsLabelFX;
    playing19: TsLabelFX;
    playing20: TsLabelFX;
    chalXlabel1: TsLabelFX;
    chalXlabel2: TsLabelFX;
    chalXlabel3: TsLabelFX;
    chalXlabel7: TsLabelFX;
    chalXlabel8: TsLabelFX;
    chalXlabel9: TsLabelFX;
    chalXlabel10: TsLabelFX;
    chalXlabel11: TsLabelFX;
    chalXlabel12: TsLabelFX;
    chalXlabel4: TsLabelFX;
    chalXlabel5: TsLabelFX;
    chalXlabel6: TsLabelFX;
    sPanel13: TsPanel;
    Image20: TImage;
    Label15: TLabel;
    sScrollBar5: TsScrollBar;
    pssija1: TsLabelFX;
    pssija2: TsLabelFX;
    pssija3: TsLabelFX;
    pssija4: TsLabelFX;
    pssija5: TsLabelFX;
    pssija6: TsLabelFX;
    pssija7: TsLabelFX;
    pssija8: TsLabelFX;
    pssija9: TsLabelFX;
    pssija10: TsLabelFX;
    pssija11: TsLabelFX;
    pssija12: TsLabelFX;
    pssija13: TsLabelFX;
    pssija14: TsLabelFX;
    pssija15: TsLabelFX;
    pssija16: TsLabelFX;
    pssija17: TsLabelFX;
    pssija18: TsLabelFX;
    pssija19: TsLabelFX;
    pssija20: TsLabelFX;
    psname1: TsLabelFX;
    psname2: TsLabelFX;
    psname3: TsLabelFX;
    psname4: TsLabelFX;
    psname5: TsLabelFX;
    psname6: TsLabelFX;
    psname7: TsLabelFX;
    psname8: TsLabelFX;
    psname9: TsLabelFX;
    psname10: TsLabelFX;
    psname11: TsLabelFX;
    psname12: TsLabelFX;
    psname13: TsLabelFX;
    psname14: TsLabelFX;
    psname15: TsLabelFX;
    psname16: TsLabelFX;
    psname17: TsLabelFX;
    psname18: TsLabelFX;
    psname19: TsLabelFX;
    psname20: TsLabelFX;
    psteam1: TsLabelFX;
    psteam2: TsLabelFX;
    psteam3: TsLabelFX;
    psteam4: TsLabelFX;
    psteam5: TsLabelFX;
    psteam6: TsLabelFX;
    psteam7: TsLabelFX;
    psteam8: TsLabelFX;
    psteam9: TsLabelFX;
    psteam10: TsLabelFX;
    psteam11: TsLabelFX;
    psteam12: TsLabelFX;
    psteam13: TsLabelFX;
    psteam14: TsLabelFX;
    psteam15: TsLabelFX;
    psteam16: TsLabelFX;
    psteam17: TsLabelFX;
    psteam18: TsLabelFX;
    psteam19: TsLabelFX;
    psteam20: TsLabelFX;
    psapps1: TsLabelFX;
    psapps2: TsLabelFX;
    psapps3: TsLabelFX;
    psapps4: TsLabelFX;
    psapps5: TsLabelFX;
    psapps6: TsLabelFX;
    psapps7: TsLabelFX;
    psapps8: TsLabelFX;
    psapps9: TsLabelFX;
    psapps10: TsLabelFX;
    psapps11: TsLabelFX;
    psapps12: TsLabelFX;
    psapps13: TsLabelFX;
    psapps14: TsLabelFX;
    psapps15: TsLabelFX;
    psapps16: TsLabelFX;
    psapps17: TsLabelFX;
    psapps18: TsLabelFX;
    psapps19: TsLabelFX;
    psapps20: TsLabelFX;
    psgls1: TsLabelFX;
    psgls2: TsLabelFX;
    psgls3: TsLabelFX;
    psgls4: TsLabelFX;
    psgls5: TsLabelFX;
    psgls6: TsLabelFX;
    psgls7: TsLabelFX;
    psgls8: TsLabelFX;
    psgls9: TsLabelFX;
    psgls10: TsLabelFX;
    psgls11: TsLabelFX;
    psgls12: TsLabelFX;
    psgls13: TsLabelFX;
    psgls14: TsLabelFX;
    psgls15: TsLabelFX;
    psgls16: TsLabelFX;
    psgls17: TsLabelFX;
    psgls18: TsLabelFX;
    psgls19: TsLabelFX;
    psgls20: TsLabelFX;
    psasts1: TsLabelFX;
    psasts2: TsLabelFX;
    psasts3: TsLabelFX;
    psasts4: TsLabelFX;
    psasts5: TsLabelFX;
    psasts6: TsLabelFX;
    psasts7: TsLabelFX;
    psasts8: TsLabelFX;
    psasts9: TsLabelFX;
    psasts10: TsLabelFX;
    psasts11: TsLabelFX;
    psasts12: TsLabelFX;
    psasts13: TsLabelFX;
    psasts14: TsLabelFX;
    psasts15: TsLabelFX;
    psasts16: TsLabelFX;
    psasts17: TsLabelFX;
    psasts18: TsLabelFX;
    psasts19: TsLabelFX;
    psasts20: TsLabelFX;
    pspass1: TsLabelFX;
    pspass2: TsLabelFX;
    pspass3: TsLabelFX;
    pspass4: TsLabelFX;
    pspass5: TsLabelFX;
    pspass6: TsLabelFX;
    pspass7: TsLabelFX;
    pspass8: TsLabelFX;
    pspass9: TsLabelFX;
    pspass10: TsLabelFX;
    pspass11: TsLabelFX;
    pspass12: TsLabelFX;
    pspass13: TsLabelFX;
    pspass14: TsLabelFX;
    pspass15: TsLabelFX;
    pspass16: TsLabelFX;
    pspass17: TsLabelFX;
    pspass18: TsLabelFX;
    pspass19: TsLabelFX;
    pspass20: TsLabelFX;
    sLabelFX278: TsLabelFX;
    sLabelFX279: TsLabelFX;
    sLabelFX280: TsLabelFX;
    sLabelFX281: TsLabelFX;
    pstck1: TsLabelFX;
    pstck2: TsLabelFX;
    pstck3: TsLabelFX;
    pstck4: TsLabelFX;
    pstck5: TsLabelFX;
    pstck6: TsLabelFX;
    pstck7: TsLabelFX;
    pstck8: TsLabelFX;
    pstck9: TsLabelFX;
    pstck10: TsLabelFX;
    pstck11: TsLabelFX;
    pstck12: TsLabelFX;
    pstck13: TsLabelFX;
    pstck14: TsLabelFX;
    pstck15: TsLabelFX;
    pstck16: TsLabelFX;
    pstck17: TsLabelFX;
    pstck18: TsLabelFX;
    pstck19: TsLabelFX;
    pstck20: TsLabelFX;
    sLabelFX302: TsLabelFX;
    pshead1: TsLabelFX;
    pshead2: TsLabelFX;
    pshead3: TsLabelFX;
    pshead4: TsLabelFX;
    pshead5: TsLabelFX;
    pshead6: TsLabelFX;
    pshead7: TsLabelFX;
    pshead8: TsLabelFX;
    pshead9: TsLabelFX;
    pshead10: TsLabelFX;
    pshead11: TsLabelFX;
    pshead12: TsLabelFX;
    pshead13: TsLabelFX;
    pshead14: TsLabelFX;
    pshead15: TsLabelFX;
    pshead16: TsLabelFX;
    pshead17: TsLabelFX;
    pshead18: TsLabelFX;
    pshead19: TsLabelFX;
    pshead20: TsLabelFX;
    sLabelFX323: TsLabelFX;
    sComboBox5: TsComboBox;
    sLabelFX14: TsLabelFX;
    sLabelFX99: TsLabelFX;
    sComboBox22: TsComboBox;
    sPanel18: TsPanel;
    Image21: TImage;
    Label16: TLabel;
    sScrollBar6: TsScrollBar;
    tssija1: TsLabelFX;
    tssija2: TsLabelFX;
    tssija3: TsLabelFX;
    tssija4: TsLabelFX;
    tssija5: TsLabelFX;
    tssija6: TsLabelFX;
    tssija7: TsLabelFX;
    tssija8: TsLabelFX;
    tssija9: TsLabelFX;
    tssija10: TsLabelFX;
    tssija11: TsLabelFX;
    tssija12: TsLabelFX;
    tssija13: TsLabelFX;
    tssija14: TsLabelFX;
    tssija15: TsLabelFX;
    tssija16: TsLabelFX;
    tssija17: TsLabelFX;
    tssija18: TsLabelFX;
    tssija19: TsLabelFX;
    tssija20: TsLabelFX;
    tsteam1: TsLabelFX;
    tsteam2: TsLabelFX;
    tsteam3: TsLabelFX;
    tsteam4: TsLabelFX;
    tsteam5: TsLabelFX;
    tsteam6: TsLabelFX;
    tsteam7: TsLabelFX;
    tsteam8: TsLabelFX;
    tsteam9: TsLabelFX;
    tsteam10: TsLabelFX;
    tsteam11: TsLabelFX;
    tsteam12: TsLabelFX;
    tsteam13: TsLabelFX;
    tsteam14: TsLabelFX;
    tsteam15: TsLabelFX;
    tsteam16: TsLabelFX;
    tsteam17: TsLabelFX;
    tsteam18: TsLabelFX;
    tsteam19: TsLabelFX;
    tsteam20: TsLabelFX;
    tsrank1: TsLabelFX;
    tsrank2: TsLabelFX;
    tsrank3: TsLabelFX;
    tsrank4: TsLabelFX;
    tsrank5: TsLabelFX;
    tsrank6: TsLabelFX;
    tsrank7: TsLabelFX;
    tsrank8: TsLabelFX;
    tsrank9: TsLabelFX;
    tsrank10: TsLabelFX;
    tsrank11: TsLabelFX;
    tsrank13: TsLabelFX;
    tsrank12: TsLabelFX;
    tsrank14: TsLabelFX;
    tsrank15: TsLabelFX;
    tsrank16: TsLabelFX;
    tsrank17: TsLabelFX;
    tsrank18: TsLabelFX;
    tsrank19: TsLabelFX;
    tsrank20: TsLabelFX;
    sLabelFX102: TsLabelFX;
    sComboBox7: TsComboBox;
    sLabelFX118: TsLabelFX;
    qwa6: TsLabelFX;
    sLabelFX128: TsLabelFX;
    Timer1: TTimer;
    latestNameH1: TsLabelFX;
    vs1: TsLabelFX;
    latestNameA1: TsLabelFX;
    latestRankMuutos1: TsLabelFX;
    latestTulos1: TsLabelFX;
    latestDate1: TsLabelFX;
    latestNameH2: TsLabelFX;
    latestNameH3: TsLabelFX;
    latestNameH4: TsLabelFX;
    latestNameH5: TsLabelFX;
    latestNameH6: TsLabelFX;
    latestNameH7: TsLabelFX;
    latestNameH8: TsLabelFX;
    latestNameH9: TsLabelFX;
    latestNameH10: TsLabelFX;
    vs2: TsLabelFX;
    vs3: TsLabelFX;
    vs4: TsLabelFX;
    vs5: TsLabelFX;
    vs6: TsLabelFX;
    vs7: TsLabelFX;
    vs8: TsLabelFX;
    vs9: TsLabelFX;
    vs10: TsLabelFX;
    latestNameA2: TsLabelFX;
    latestNameA3: TsLabelFX;
    latestNameA4: TsLabelFX;
    latestNameA5: TsLabelFX;
    latestNameA6: TsLabelFX;
    latestNameA7: TsLabelFX;
    latestNameA8: TsLabelFX;
    latestNameA9: TsLabelFX;
    latestNameA10: TsLabelFX;
    latestTulos2: TsLabelFX;
    latestTulos3: TsLabelFX;
    latestTulos4: TsLabelFX;
    latestTulos5: TsLabelFX;
    latestTulos6: TsLabelFX;
    latestTulos7: TsLabelFX;
    latestTulos8: TsLabelFX;
    latestTulos9: TsLabelFX;
    latestTulos10: TsLabelFX;
    latestRankMuutos2: TsLabelFX;
    latestRankMuutos3: TsLabelFX;
    latestRankMuutos4: TsLabelFX;
    latestRankMuutos5: TsLabelFX;
    latestRankMuutos6: TsLabelFX;
    latestRankMuutos7: TsLabelFX;
    latestRankMuutos8: TsLabelFX;
    latestRankMuutos9: TsLabelFX;
    latestRankMuutos10: TsLabelFX;
    latestDate2: TsLabelFX;
    latestDate3: TsLabelFX;
    latestDate4: TsLabelFX;
    latestDate5: TsLabelFX;
    latestDate6: TsLabelFX;
    latestDate7: TsLabelFX;
    latestDate8: TsLabelFX;
    latestDate9: TsLabelFX;
    latestDate10: TsLabelFX;
    sButton33: TsButton;
    sPanel19: TsPanel;
    Image22: TImage;
    Label17: TLabel;
    sEdit14: TsEdit;
    sLabelFX126: TsLabelFX;
    sLabelFX130: TsLabelFX;
    sLabelFX131: TsLabelFX;
    sButton34: TsButton;
    sEdit15: TsEdit;
    sPanel20: TsPanel;
    Image23: TImage;
    Label18: TLabel;
    sMemo3: TsMemo;
    sCheckBox3: TsCheckBox;
    Timer2: TTimer;
    sCheckBox6: TsCheckBox;
    kick1: TsButton;
    kick2: TsButton;
    kick3: TsButton;
    kick4: TsButton;
    kick5: TsButton;
    kick6: TsButton;
    kick7: TsButton;
    kick8: TsButton;
    kick9: TsButton;
    kick10: TsButton;
    kick11: TsButton;
    kick12: TsButton;
    kick13: TsButton;
    kick14: TsButton;
    Timer3: TTimer;
    sPanel21: TsPanel;
    Label19: TLabel;
    sLabelFX139: TsLabelFX;
    sLabelFX140: TsLabelFX;
    sButton37: TsButton;
    sLabelFX141: TsLabelFX;
    sLabelFX150: TsLabelFX;
    sLabelFX151: TsLabelFX;
    sLabelFX152: TsLabelFX;
    sLabelFX153: TsLabelFX;
    sLabelFX154: TsLabelFX;
    sButton38: TsButton;
    sButton39: TsButton;
    WebBrowser1: TWebBrowser;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sButton40: TsButton;
    sLabelFX156: TsLabelFX;
    sLabelFX159: TsLabelFX;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sEdit18: TsEdit;
    sLabelFX160: TsLabelFX;
    sButton429: TsButton;
    sButton22: TsButton;
    sPanel22: TsPanel;
    Label20: TLabel;
    sEdit19: TsEdit;
    sButton36: TsButton;
    sLabelFX112: TsLabelFX;
    sBitBtn3: TsBitBtn;
    matchDet1: TsLabelFX;
    matchDet2: TsLabelFX;
    matchDet3: TsLabelFX;
    matchDet4: TsLabelFX;
    matchDet5: TsLabelFX;
    matchDet6: TsLabelFX;
    matchDet7: TsLabelFX;
    matchDet8: TsLabelFX;
    matchDet9: TsLabelFX;
    matchDet10: TsLabelFX;
    sPanel23: TsPanel;
    Label21: TLabel;
    sLabelFX161: TsLabelFX;
    sLabelFX162: TsLabelFX;
    sLabelFX163: TsLabelFX;
    sLabelFX164: TsLabelFX;
    sButton44: TsButton;
    MDScorerH1: TsLabelFX;
    MDScorerA1: TsLabelFX;
    MDScorerH2: TsLabelFX;
    MDScorerH3: TsLabelFX;
    MDScorerH4: TsLabelFX;
    MDScorerH5: TsLabelFX;
    MDScorerH6: TsLabelFX;
    MDScorerH7: TsLabelFX;
    MDScorerH8: TsLabelFX;
    MDScorerH9: TsLabelFX;
    MDScorerH10: TsLabelFX;
    MDScorerH11: TsLabelFX;
    MDScorerH12: TsLabelFX;
    MDScorerH13: TsLabelFX;
    MDScorerH14: TsLabelFX;
    MDScorerH15: TsLabelFX;
    MDScorerA2: TsLabelFX;
    MDScorerA3: TsLabelFX;
    MDScorerA4: TsLabelFX;
    MDScorerA5: TsLabelFX;
    MDScorerA6: TsLabelFX;
    MDScorerA7: TsLabelFX;
    MDScorerA8: TsLabelFX;
    MDScorerA9: TsLabelFX;
    MDScorerA10: TsLabelFX;
    MDScorerA11: TsLabelFX;
    MDScorerA12: TsLabelFX;
    MDScorerA13: TsLabelFX;
    MDScorerA14: TsLabelFX;
    MDScorerA15: TsLabelFX;
    sButton45: TsButton;
    Image24: TImage;
    acZone1: TsPanel;
    acZone2: TsPanel;
    acZone3: TsPanel;
    acZone4: TsPanel;
    acZone5: TsPanel;
    acZone6: TsPanel;
    sButton43: TsButton;
    sButton46: TsButton;
    sButton47: TsButton;
    sButton48: TsButton;
    acZoneLabel1: TsLabelFX;
    acZoneLabel2: TsLabelFX;
    acZoneLabel3: TsLabelFX;
    acZoneLabel4: TsLabelFX;
    acZoneLabel5: TsLabelFX;
    acZoneLabel6: TsLabelFX;
    sLabelFX165: TsLabelFX;
    sLabelFX166: TsLabelFX;
    sLabelFX167: TsLabelFX;
    sLabelFX168: TsLabelFX;
    sLabelFX169: TsLabelFX;
    sLabelFX170: TsLabelFX;
    sLabelFX171: TsLabelFX;
    sLabelFX172: TsLabelFX;
    sLabelFX173: TsLabelFX;
    sLabelFX174: TsLabelFX;
    MDpas1: TsLabelFX;
    MDpas2: TsLabelFX;
    MDpas3: TsLabelFX;
    MDpas4: TsLabelFX;
    MDpas5: TsLabelFX;
    MDpas6: TsLabelFX;
    MDpas7: TsLabelFX;
    MDpas8: TsLabelFX;
    MDpas9: TsLabelFX;
    MDpas10: TsLabelFX;
    MDpas11: TsLabelFX;
    MDpas12: TsLabelFX;
    MDpas13: TsLabelFX;
    MDpas14: TsLabelFX;
    MDpas15: TsLabelFX;
    MDsho1: TsLabelFX;
    MDsho2: TsLabelFX;
    MDsho3: TsLabelFX;
    MDsho4: TsLabelFX;
    MDsho5: TsLabelFX;
    MDsho6: TsLabelFX;
    MDsho7: TsLabelFX;
    MDsho8: TsLabelFX;
    MDsho9: TsLabelFX;
    MDsho10: TsLabelFX;
    MDsho11: TsLabelFX;
    MDsho12: TsLabelFX;
    MDsho13: TsLabelFX;
    MDsho14: TsLabelFX;
    MDsho15: TsLabelFX;
    MDheab1: TsLabelFX;
    MDheab2: TsLabelFX;
    MDheab3: TsLabelFX;
    MDheab4: TsLabelFX;
    MDheab5: TsLabelFX;
    MDheab6: TsLabelFX;
    MDheab7: TsLabelFX;
    MDheab8: TsLabelFX;
    MDheab9: TsLabelFX;
    MDheab10: TsLabelFX;
    MDheab11: TsLabelFX;
    MDheab12: TsLabelFX;
    MDheab13: TsLabelFX;
    MDheab14: TsLabelFX;
    MDheab15: TsLabelFX;
    MDhea1: TsLabelFX;
    MDhea2: TsLabelFX;
    MDhea3: TsLabelFX;
    MDhea4: TsLabelFX;
    MDhea5: TsLabelFX;
    MDhea6: TsLabelFX;
    MDhea7: TsLabelFX;
    MDhea8: TsLabelFX;
    MDhea9: TsLabelFX;
    MDhea10: TsLabelFX;
    MDhea11: TsLabelFX;
    MDhea12: TsLabelFX;
    MDhea13: TsLabelFX;
    MDhea14: TsLabelFX;
    MDhea15: TsLabelFX;
    MDtckb1: TsLabelFX;
    MDtckb2: TsLabelFX;
    MDtckb3: TsLabelFX;
    MDtckb4: TsLabelFX;
    MDtckb5: TsLabelFX;
    MDtckb6: TsLabelFX;
    MDtckb7: TsLabelFX;
    MDtckb8: TsLabelFX;
    MDtckb9: TsLabelFX;
    MDtckb10: TsLabelFX;
    MDtckb11: TsLabelFX;
    MDtckb12: TsLabelFX;
    MDtckb13: TsLabelFX;
    MDtckb14: TsLabelFX;
    MDtckb15: TsLabelFX;
    MDpasb1: TsLabelFX;
    MDpasb2: TsLabelFX;
    MDpasb3: TsLabelFX;
    MDpasb4: TsLabelFX;
    MDpasb5: TsLabelFX;
    MDpasb6: TsLabelFX;
    MDpasb7: TsLabelFX;
    MDpasb8: TsLabelFX;
    MDpasb9: TsLabelFX;
    MDpasb10: TsLabelFX;
    MDpasb11: TsLabelFX;
    MDpasb12: TsLabelFX;
    MDpasb13: TsLabelFX;
    MDpasb14: TsLabelFX;
    MDpasb15: TsLabelFX;
    MDshob1: TsLabelFX;
    MDshob2: TsLabelFX;
    MDshob3: TsLabelFX;
    MDshob4: TsLabelFX;
    MDshob5: TsLabelFX;
    MDshob6: TsLabelFX;
    MDshob7: TsLabelFX;
    MDshob8: TsLabelFX;
    MDshob9: TsLabelFX;
    MDshob10: TsLabelFX;
    MDshob11: TsLabelFX;
    MDshob12: TsLabelFX;
    MDshob13: TsLabelFX;
    MDshob14: TsLabelFX;
    MDshob15: TsLabelFX;
    MDast1: TsLabelFX;
    MDast2: TsLabelFX;
    MDast3: TsLabelFX;
    MDast4: TsLabelFX;
    MDast5: TsLabelFX;
    MDast6: TsLabelFX;
    MDast7: TsLabelFX;
    MDast8: TsLabelFX;
    MDast9: TsLabelFX;
    MDast10: TsLabelFX;
    MDast11: TsLabelFX;
    MDast12: TsLabelFX;
    MDast13: TsLabelFX;
    MDast14: TsLabelFX;
    MDast15: TsLabelFX;
    MDgls1: TsLabelFX;
    MDgls2: TsLabelFX;
    MDgls3: TsLabelFX;
    MDgls4: TsLabelFX;
    MDgls5: TsLabelFX;
    MDgls6: TsLabelFX;
    MDgls7: TsLabelFX;
    MDgls8: TsLabelFX;
    MDgls9: TsLabelFX;
    MDgls10: TsLabelFX;
    MDgls11: TsLabelFX;
    MDgls12: TsLabelFX;
    MDgls13: TsLabelFX;
    MDgls14: TsLabelFX;
    MDgls15: TsLabelFX;
    MDtck1: TsLabelFX;
    MDtck2: TsLabelFX;
    MDtck3: TsLabelFX;
    MDtck4: TsLabelFX;
    MDtck5: TsLabelFX;
    MDtck6: TsLabelFX;
    MDtck7: TsLabelFX;
    MDtck8: TsLabelFX;
    MDtck9: TsLabelFX;
    MDtck10: TsLabelFX;
    MDtck11: TsLabelFX;
    MDtck12: TsLabelFX;
    MDtck13: TsLabelFX;
    MDtck14: TsLabelFX;
    MDtck15: TsLabelFX;
    MDoff1: TsLabelFX;
    MDoff2: TsLabelFX;
    MDoff3: TsLabelFX;
    MDoff4: TsLabelFX;
    MDoff5: TsLabelFX;
    MDoff6: TsLabelFX;
    MDoff7: TsLabelFX;
    MDoff8: TsLabelFX;
    MDoff9: TsLabelFX;
    MDoff10: TsLabelFX;
    MDoff11: TsLabelFX;
    MDoff12: TsLabelFX;
    MDoff13: TsLabelFX;
    MDoff14: TsLabelFX;
    MDoff15: TsLabelFX;
    MDmin1: TsLabelFX;
    MDmin2: TsLabelFX;
    MDmin3: TsLabelFX;
    MDmin4: TsLabelFX;
    MDmin5: TsLabelFX;
    MDmin6: TsLabelFX;
    MDmin7: TsLabelFX;
    MDmin8: TsLabelFX;
    MDmin9: TsLabelFX;
    MDmin10: TsLabelFX;
    MDmin11: TsLabelFX;
    MDmin12: TsLabelFX;
    MDmin13: TsLabelFX;
    MDmin14: TsLabelFX;
    MDmin15: TsLabelFX;
    sLabelFX175: TsLabelFX;
    sLabelFX176: TsLabelFX;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sEdit16: TsEdit;
    sEdit17: TsEdit;
    sButton28: TsButton;
    sButton41: TsButton;
    sLabelFX155: TsLabelFX;
    sLabelFX158: TsLabelFX;
    sLabelFX177: TsLabelFX;
    sLabelFX178: TsLabelFX;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sComboBox9: TsComboBox;
    sEdit20: TsEdit;
    sButton49: TsButton;
    sButton50: TsButton;
    sLabelFX179: TsLabelFX;
    sLabelFX180: TsLabelFX;
    sCheckBox13: TsCheckBox;
    sLabelFX181: TsLabelFX;
    sComboBox10: TsComboBox;
    sLabelFX182: TsLabelFX;
    location1: TsLabelFX;
    location2: TsLabelFX;
    location3: TsLabelFX;
    location4: TsLabelFX;
    location5: TsLabelFX;
    location6: TsLabelFX;
    location7: TsLabelFX;
    location8: TsLabelFX;
    location9: TsLabelFX;
    location10: TsLabelFX;
    location11: TsLabelFX;
    location12: TsLabelFX;
    location13: TsLabelFX;
    location14: TsLabelFX;
    location15: TsLabelFX;
    location16: TsLabelFX;
    location17: TsLabelFX;
    location18: TsLabelFX;
    location19: TsLabelFX;
    location20: TsLabelFX;
    sLabelFX183: TsLabelFX;
    sCheckBox14: TsCheckBox;
    sComboBox11: TsComboBox;
    sCheckBox15: TsCheckBox;
    sEdit21: TsEdit;
    sLabelFX184: TsLabelFX;
    sButton51: TsButton;
    sLabelFX185: TsLabelFX;
    sEdit22: TsEdit;
    sButton52: TsButton;
    sComboBox8: TsComboBox;
    sButton53: TsButton;
    sPanel24: TsPanel;
    Label22: TLabel;
    sSpeedButton1: TsSpeedButton;
    PopupMenu3: TPopupMenu;
    popup3_1: TMenuItem;
    popup3_2: TMenuItem;
    popup3_3: TMenuItem;
    sLabelFX134: TsLabelFX;
    sLabelFX186: TsLabelFX;
    trainingPlrNameH1: TsLabelFX;
    trainingPlrNameH2: TsLabelFX;
    trainingPlrNameH3: TsLabelFX;
    trainingPlrNameH4: TsLabelFX;
    trainingPlrNameH5: TsLabelFX;
    trainingPlrNameH6: TsLabelFX;
    trainingPlrNameH7: TsLabelFX;
    trainingPlrNameH8: TsLabelFX;
    trainingPlrNameH9: TsLabelFX;
    trainingPlrNameH10: TsLabelFX;
    trainingPlrNameA1: TsLabelFX;
    trainingPlrNameA2: TsLabelFX;
    trainingPlrNameA3: TsLabelFX;
    trainingPlrNameA4: TsLabelFX;
    trainingPlrNameA5: TsLabelFX;
    trainingPlrNameA6: TsLabelFX;
    trainingPlrNameA7: TsLabelFX;
    trainingPlrNameA8: TsLabelFX;
    trainingPlrNameA9: TsLabelFX;
    trainingPlrNameA10: TsLabelFX;
    sButton8: TsButton;
    sPanel25: TsPanel;
    Image9: TImage;
    Label23: TLabel;
    kit_imageb1: TImage;
    kit_imageb2: TImage;
    kit_imageb3: TImage;
    kit_imageb4: TImage;
    kit_imageb5: TImage;
    kit_imageb6: TImage;
    sLabelFX189: TsLabelFX;
    sLabelFX190: TsLabelFX;
    sButton55: TsButton;
    sComboBox19: TsComboBox;
    sTrackBar4: TsTrackBar;
    sEdit23: TsEdit;
    sEdit24: TsEdit;
    sCheckBox16: TsCheckBox;
    sCheckBox17: TsCheckBox;
    sTrackBar5: TsTrackBar;
    sTrackBar6: TsTrackBar;
    sLabelFX187: TsLabelFX;
    sEdit25: TsEdit;
    sLabelFX188: TsLabelFX;
    sEdit26: TsEdit;
    passworded1: TsLabelFX;
    passworded2: TsLabelFX;
    passworded3: TsLabelFX;
    passworded4: TsLabelFX;
    passworded5: TsLabelFX;
    passworded6: TsLabelFX;
    passworded7: TsLabelFX;
    passworded8: TsLabelFX;
    passworded9: TsLabelFX;
    passworded10: TsLabelFX;
    passworded11: TsLabelFX;
    passworded12: TsLabelFX;
    passworded13: TsLabelFX;
    passworded14: TsLabelFX;
    passworded15: TsLabelFX;
    passworded16: TsLabelFX;
    passworded17: TsLabelFX;
    passworded18: TsLabelFX;
    passworded19: TsLabelFX;
    passworded20: TsLabelFX;
    sButton35: TsButton;
    sPanel26: TsPanel;
    Label24: TLabel;
    sCheckBox18: TsCheckBox;
    sCheckBox19: TsCheckBox;
    sCheckBox20: TsCheckBox;
    sComboBox23: TsComboBox;
    sLabelFX191: TsLabelFX;
    sButton54: TsButton;
    sButton588: TsButton;
    procedure FormCreate(Sender: TObject);
    procedure popup2_1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure sListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sListBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sListBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sColorBox1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sColorBox3Change(Sender: TObject);
    procedure sColorBox4Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sColorBox5Change(Sender: TObject);
    procedure popup1_1Click(Sender: TObject);
    procedure sScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure plname1Click(Sender: TObject);
    procedure plname2Click(Sender: TObject);
    procedure plname3Click(Sender: TObject);
    procedure plname4Click(Sender: TObject);
    procedure plname5Click(Sender: TObject);
    procedure plname6Click(Sender: TObject);
    procedure plname7Click(Sender: TObject);
    procedure plname8Click(Sender: TObject);
    procedure plname9Click(Sender: TObject);
    procedure plname10Click(Sender: TObject);
    procedure plname11Click(Sender: TObject);
    procedure plname12Click(Sender: TObject);
    procedure plname13Click(Sender: TObject);
    procedure plname14Click(Sender: TObject);
    procedure sEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sEdit2Click(Sender: TObject);
    procedure sLabelFX27Click(Sender: TObject);
    procedure sLabelFX28Click(Sender: TObject);
    procedure sLabelFX29Click(Sender: TObject);
    procedure sLabelFX30Click(Sender: TObject);
    procedure sLabelFX31Click(Sender: TObject);
    procedure sLabelFX32Click(Sender: TObject);
    procedure sLabelFX33Click(Sender: TObject);
    procedure sLabelFX34Click(Sender: TObject);
    procedure sLabelFX35Click(Sender: TObject);
    procedure sLabelFX36Click(Sender: TObject);
    procedure sLabelFX37Click(Sender: TObject);
    procedure sLabelFX38Click(Sender: TObject);
    procedure sLabelFX39Click(Sender: TObject);
    procedure sLabelFX40Click(Sender: TObject);
    procedure sLabelFX41Click(Sender: TObject);
    procedure sLabelFX42Click(Sender: TObject);
    procedure sLabelFX43Click(Sender: TObject);
    procedure sLabelFX44Click(Sender: TObject);
    procedure sLabelFX45Click(Sender: TObject);
    procedure sLabelFX46Click(Sender: TObject);
    procedure sLabelFX67Click(Sender: TObject);
    procedure sLabelFX68Click(Sender: TObject);
    procedure sLabelFX69Click(Sender: TObject);
    procedure sLabelFX70Click(Sender: TObject);
    procedure sLabelFX71Click(Sender: TObject);
    procedure sLabelFX72Click(Sender: TObject);
    procedure sLabelFX73Click(Sender: TObject);
    procedure sLabelFX74Click(Sender: TObject);
    procedure sLabelFX75Click(Sender: TObject);
    procedure sLabelFX76Click(Sender: TObject);
    procedure sLabelFX77Click(Sender: TObject);
    procedure sLabelFX78Click(Sender: TObject);
    procedure sLabelFX79Click(Sender: TObject);
    procedure sLabelFX80Click(Sender: TObject);
    procedure sLabelFX81Click(Sender: TObject);
    procedure sLabelFX82Click(Sender: TObject);
    procedure sLabelFX83Click(Sender: TObject);
    procedure sLabelFX84Click(Sender: TObject);
    procedure sLabelFX85Click(Sender: TObject);
    procedure sLabelFX86Click(Sender: TObject);
    procedure name1Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure inv1Click(Sender: TObject);
    procedure inv2Click(Sender: TObject);
    procedure inv3Click(Sender: TObject);
    procedure inv4Click(Sender: TObject);
    procedure inv5Click(Sender: TObject);
    procedure inv6Click(Sender: TObject);
    procedure inv7Click(Sender: TObject);
    procedure inv8Click(Sender: TObject);
    procedure inv9Click(Sender: TObject);
    procedure inv10Click(Sender: TObject);
    procedure inv11Click(Sender: TObject);
    procedure inv12Click(Sender: TObject);
    procedure inv13Click(Sender: TObject);
    procedure inv14Click(Sender: TObject);
    procedure inv15Click(Sender: TObject);
    procedure inv16Click(Sender: TObject);
    procedure inv17Click(Sender: TObject);
    procedure inv18Click(Sender: TObject);
    procedure inv19Click(Sender: TObject);
    procedure inv20Click(Sender: TObject);
    procedure acc1Click(Sender: TObject);
    procedure acc2Click(Sender: TObject);
    procedure acc3Click(Sender: TObject);
    procedure acc4Click(Sender: TObject);
    procedure acc5Click(Sender: TObject);
    procedure acc6Click(Sender: TObject);
    procedure acc7Click(Sender: TObject);
    procedure acc8Click(Sender: TObject);
    procedure acc9Click(Sender: TObject);
    procedure acc10Click(Sender: TObject);
    procedure acc11Click(Sender: TObject);
    procedure acc12Click(Sender: TObject);
    procedure acc13Click(Sender: TObject);
    procedure acc14Click(Sender: TObject);
    procedure acc15Click(Sender: TObject);
    procedure acc16Click(Sender: TObject);
    procedure acc17Click(Sender: TObject);
    procedure acc18Click(Sender: TObject);
    procedure acc19Click(Sender: TObject);
    procedure acc20Click(Sender: TObject);
    procedure rej1Click(Sender: TObject);
    procedure rej2Click(Sender: TObject);
    procedure rej3Click(Sender: TObject);
    procedure rej4Click(Sender: TObject);
    procedure rej5Click(Sender: TObject);
    procedure rej6Click(Sender: TObject);
    procedure rej7Click(Sender: TObject);
    procedure rej8Click(Sender: TObject);
    procedure rej9Click(Sender: TObject);
    procedure rej10Click(Sender: TObject);
    procedure rej11Click(Sender: TObject);
    procedure rej12Click(Sender: TObject);
    procedure rej13Click(Sender: TObject);
    procedure rej14Click(Sender: TObject);
    procedure rej15Click(Sender: TObject);
    procedure rej16Click(Sender: TObject);
    procedure rej17Click(Sender: TObject);
    procedure rej18Click(Sender: TObject);
    procedure rej19Click(Sender: TObject);
    procedure rej20Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure po1Click(Sender: TObject);
    procedure po2Click(Sender: TObject);
    procedure po3Click(Sender: TObject);
    procedure po4Click(Sender: TObject);
    procedure po5Click(Sender: TObject);
    procedure po6Click(Sender: TObject);
    procedure po7Click(Sender: TObject);
    procedure po8Click(Sender: TObject);
    procedure po9Click(Sender: TObject);
    procedure po10Click(Sender: TObject);
    procedure po11Click(Sender: TObject);
    procedure po12Click(Sender: TObject);
    procedure po13Click(Sender: TObject);
    procedure po14Click(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure kit_image1Click(Sender: TObject);
    procedure kit_image2Click(Sender: TObject);
    procedure kit_image3Click(Sender: TObject);
    procedure kit_image4Click(Sender: TObject);
    procedure kit_image5Click(Sender: TObject);
    procedure kit_image6Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sEdit8Change(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure invited1Click(Sender: TObject);
    procedure invited2Click(Sender: TObject);
    procedure invited3Click(Sender: TObject);
    procedure invited4Click(Sender: TObject);
    procedure invited5Click(Sender: TObject);
    procedure invited6Click(Sender: TObject);
    procedure invited7Click(Sender: TObject);
    procedure invited8Click(Sender: TObject);
    procedure invited9Click(Sender: TObject);
    procedure invited10Click(Sender: TObject);
    procedure invited11Click(Sender: TObject);
    procedure invited12Click(Sender: TObject);
    procedure invited13Click(Sender: TObject);
    procedure invited14Click(Sender: TObject);
    procedure invited15Click(Sender: TObject);
    procedure invited16Click(Sender: TObject);
    procedure invited17Click(Sender: TObject);
    procedure invited18Click(Sender: TObject);
    procedure invited19Click(Sender: TObject);
    procedure invited20Click(Sender: TObject);
    procedure invcan1Click(Sender: TObject);
    procedure invcan2Click(Sender: TObject);
    procedure invcan3Click(Sender: TObject);
    procedure invcan4Click(Sender: TObject);
    procedure invcan5Click(Sender: TObject);
    procedure invcan6Click(Sender: TObject);
    procedure invcan7Click(Sender: TObject);
    procedure invcan8Click(Sender: TObject);
    procedure invcan9Click(Sender: TObject);
    procedure invcan10Click(Sender: TObject);
    procedure invcan11Click(Sender: TObject);
    procedure invcan12Click(Sender: TObject);
    procedure invcan13Click(Sender: TObject);
    procedure invcan14Click(Sender: TObject);
    procedure invcan15Click(Sender: TObject);
    procedure invcan16Click(Sender: TObject);
    procedure invcan17Click(Sender: TObject);
    procedure invcan18Click(Sender: TObject);
    procedure invcan19Click(Sender: TObject);
    procedure invcan20Click(Sender: TObject);
    procedure popup1_2Click(Sender: TObject);
    procedure sButton14Click(Sender: TObject);
    procedure sComboBox12Change(Sender: TObject);
    procedure sComboBox13Change(Sender: TObject);
    procedure sComboBox14Change(Sender: TObject);
    procedure sComboBox15Change(Sender: TObject);
    procedure sButton31Click(Sender: TObject);
    procedure sScrollBar2Change(Sender: TObject);
    procedure pserv1Click(Sender: TObject);
    procedure pserv2Click(Sender: TObject);
    procedure pserv3Click(Sender: TObject);
    procedure pserv4Click(Sender: TObject);
    procedure pserv5Click(Sender: TObject);
    procedure pserv6Click(Sender: TObject);
    procedure pserv7Click(Sender: TObject);
    procedure pserv8Click(Sender: TObject);
    procedure pserv9Click(Sender: TObject);
    procedure pserv10Click(Sender: TObject);
    procedure pserv11Click(Sender: TObject);
    procedure pserv12Click(Sender: TObject);
    procedure pserv13Click(Sender: TObject);
    procedure pserv14Click(Sender: TObject);
    procedure pserv15Click(Sender: TObject);
    procedure pserv16Click(Sender: TObject);
    procedure pserv17Click(Sender: TObject);
    procedure pserv18Click(Sender: TObject);
    procedure pserv19Click(Sender: TObject);
    procedure pserv20Click(Sender: TObject);
    procedure sButton32Click(Sender: TObject);
    procedure sEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure popup1_3Click(Sender: TObject);
    procedure sScrollBar3Change(Sender: TObject);
    procedure chalteam1Click(Sender: TObject);
    procedure chalteam2Click(Sender: TObject);
    procedure chalteam3Click(Sender: TObject);
    procedure chalteam4Click(Sender: TObject);
    procedure chalteam5Click(Sender: TObject);
    procedure chalteam6Click(Sender: TObject);
    procedure chalteam7Click(Sender: TObject);
    procedure chalteam8Click(Sender: TObject);
    procedure chalteam9Click(Sender: TObject);
    procedure chalteam10Click(Sender: TObject);
    procedure chalteam11Click(Sender: TObject);
    procedure chalteam12Click(Sender: TObject);
    procedure chalteam13Click(Sender: TObject);
    procedure chalteam14Click(Sender: TObject);
    procedure chalteam15Click(Sender: TObject);
    procedure chalteam16Click(Sender: TObject);
    procedure chalteam17Click(Sender: TObject);
    procedure chalteam18Click(Sender: TObject);
    procedure chalteam19Click(Sender: TObject);
    procedure chalteam20Click(Sender: TObject);
    procedure sButton30Click(Sender: TObject);
    procedure sButton29Click(Sender: TObject);
    procedure sButton25Click(Sender: TObject);
    procedure ChallengeClick(Sender: TObject);
    procedure Livescores1Click(Sender: TObject);
    procedure sScrollBar4Change(Sender: TObject);
    procedure match1Click(Sender: TObject);
    procedure match2Click(Sender: TObject);
    procedure match3Click(Sender: TObject);
    procedure match4Click(Sender: TObject);
    procedure match5Click(Sender: TObject);
    procedure match6Click(Sender: TObject);
    procedure match7Click(Sender: TObject);
    procedure match8Click(Sender: TObject);
    procedure match9Click(Sender: TObject);
    procedure match10Click(Sender: TObject);
    procedure match11Click(Sender: TObject);
    procedure match12Click(Sender: TObject);
    procedure match13Click(Sender: TObject);
    procedure match14Click(Sender: TObject);
    procedure match15Click(Sender: TObject);
    procedure match16Click(Sender: TObject);
    procedure match17Click(Sender: TObject);
    procedure match18Click(Sender: TObject);
    procedure match19Click(Sender: TObject);
    procedure match20Click(Sender: TObject);
    procedure sButton27Click(Sender: TObject);
    procedure popup2_2Click(Sender: TObject);
    procedure sComboBox5Change(Sender: TObject);
    procedure sScrollBar5Change(Sender: TObject);
    procedure sComboBox22Change(Sender: TObject);
    procedure sLabelFX278Click(Sender: TObject);
    procedure sLabelFX279Click(Sender: TObject);
    procedure sLabelFX280Click(Sender: TObject);
    procedure sLabelFX281Click(Sender: TObject);
    procedure sLabelFX302Click(Sender: TObject);
    procedure sLabelFX323Click(Sender: TObject);
    procedure popup2_3Click(Sender: TObject);
    procedure sScrollBar6Change(Sender: TObject);
    procedure career_team10Click(Sender: TObject);
    procedure career_team9Click(Sender: TObject);
    procedure career_team8Click(Sender: TObject);
    procedure career_team7Click(Sender: TObject);
    procedure career_team6Click(Sender: TObject);
    procedure career_team5Click(Sender: TObject);
    procedure career_team4Click(Sender: TObject);
    procedure career_team3Click(Sender: TObject);
    procedure career_team2Click(Sender: TObject);
    procedure career_team1Click(Sender: TObject);
    procedure tsteam1Click(Sender: TObject);
    procedure tsteam2Click(Sender: TObject);
    procedure tsteam3Click(Sender: TObject);
    procedure tsteam4Click(Sender: TObject);
    procedure tsteam5Click(Sender: TObject);
    procedure tsteam6Click(Sender: TObject);
    procedure tsteam7Click(Sender: TObject);
    procedure tsteam8Click(Sender: TObject);
    procedure tsteam9Click(Sender: TObject);
    procedure tsteam10Click(Sender: TObject);
    procedure tsteam11Click(Sender: TObject);
    procedure tsteam12Click(Sender: TObject);
    procedure tsteam13Click(Sender: TObject);
    procedure tsteam14Click(Sender: TObject);
    procedure tsteam15Click(Sender: TObject);
    procedure tsteam16Click(Sender: TObject);
    procedure tsteam17Click(Sender: TObject);
    procedure tsteam18Click(Sender: TObject);
    procedure tsteam19Click(Sender: TObject);
    procedure tsteam20Click(Sender: TObject);
    procedure psname1Click(Sender: TObject);
    procedure psname2Click(Sender: TObject);
    procedure psname3Click(Sender: TObject);
    procedure psname4Click(Sender: TObject);
    procedure psname5Click(Sender: TObject);
    procedure psname6Click(Sender: TObject);
    procedure psname7Click(Sender: TObject);
    procedure psname8Click(Sender: TObject);
    procedure psname9Click(Sender: TObject);
    procedure psname10Click(Sender: TObject);
    procedure psname11Click(Sender: TObject);
    procedure psname12Click(Sender: TObject);
    procedure psname13Click(Sender: TObject);
    procedure psname14Click(Sender: TObject);
    procedure psname15Click(Sender: TObject);
    procedure psname16Click(Sender: TObject);
    procedure psname17Click(Sender: TObject);
    procedure psname18Click(Sender: TObject);
    procedure psname19Click(Sender: TObject);
    procedure psname20Click(Sender: TObject);
    procedure psteam1Click(Sender: TObject);
    procedure psteam2Click(Sender: TObject);
    procedure psteam3Click(Sender: TObject);
    procedure psteam4Click(Sender: TObject);
    procedure psteam5Click(Sender: TObject);
    procedure psteam6Click(Sender: TObject);
    procedure psteam7Click(Sender: TObject);
    procedure psteam8Click(Sender: TObject);
    procedure psteam9Click(Sender: TObject);
    procedure psteam10Click(Sender: TObject);
    procedure psteam11Click(Sender: TObject);
    procedure psteam12Click(Sender: TObject);
    procedure psteam13Click(Sender: TObject);
    procedure psteam14Click(Sender: TObject);
    procedure psteam15Click(Sender: TObject);
    procedure psteam16Click(Sender: TObject);
    procedure psteam17Click(Sender: TObject);
    procedure psteam18Click(Sender: TObject);
    procedure psteam19Click(Sender: TObject);
    procedure psteam20Click(Sender: TObject);
    procedure sComboBox7Change(Sender: TObject);
    procedure sEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure latestNameH1Click(Sender: TObject);
    procedure latestNameH2Click(Sender: TObject);
    procedure latestNameH3Click(Sender: TObject);
    procedure latestNameH4Click(Sender: TObject);
    procedure latestNameH5Click(Sender: TObject);
    procedure latestNameH6Click(Sender: TObject);
    procedure latestNameH7Click(Sender: TObject);
    procedure latestNameH8Click(Sender: TObject);
    procedure latestNameH9Click(Sender: TObject);
    procedure latestNameH10Click(Sender: TObject);
    procedure latestNameA1Click(Sender: TObject);
    procedure latestNameA2Click(Sender: TObject);
    procedure latestNameA3Click(Sender: TObject);
    procedure latestNameA4Click(Sender: TObject);
    procedure latestNameA5Click(Sender: TObject);
    procedure latestNameA6Click(Sender: TObject);
    procedure latestNameA7Click(Sender: TObject);
    procedure latestNameA8Click(Sender: TObject);
    procedure latestNameA9Click(Sender: TObject);
    procedure latestNameA10Click(Sender: TObject);
    procedure sButton33Click(Sender: TObject);
    procedure sEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure sButton34Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure kick1Click(Sender: TObject);
    procedure kick2Click(Sender: TObject);
    procedure kick3Click(Sender: TObject);
    procedure kick4Click(Sender: TObject);
    procedure kick5Click(Sender: TObject);
    procedure kick6Click(Sender: TObject);
    procedure kick7Click(Sender: TObject);
    procedure kick8Click(Sender: TObject);
    procedure kick9Click(Sender: TObject);
    procedure kick10Click(Sender: TObject);
    procedure kick11Click(Sender: TObject);
    procedure kick12Click(Sender: TObject);
    procedure kick13Click(Sender: TObject);
    procedure kick14Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure sButton37Click(Sender: TObject);
    procedure sButton38Click(Sender: TObject);
    procedure sButton39Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sButton40Click(Sender: TObject);
    procedure sEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure sButton4Click(Sender: TObject);
    procedure sButton429Click(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sButton17Click(Sender: TObject);
    procedure sButton15Click(Sender: TObject);
    procedure sButton16Click(Sender: TObject);
    procedure sButton18Click(Sender: TObject);
    procedure sButton19Click(Sender: TObject);
    procedure sButton20Click(Sender: TObject);
    procedure sButton21Click(Sender: TObject);
    procedure sButton23Click(Sender: TObject);
    procedure sButton22Click(Sender: TObject);
    procedure sButton36Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure matchDet1Click(Sender: TObject);
    procedure matchDet2Click(Sender: TObject);
    procedure matchDet3Click(Sender: TObject);
    procedure matchDet4Click(Sender: TObject);
    procedure matchDet5Click(Sender: TObject);
    procedure matchDet6Click(Sender: TObject);
    procedure matchDet7Click(Sender: TObject);
    procedure matchDet8Click(Sender: TObject);
    procedure matchDet9Click(Sender: TObject);
    procedure matchDet10Click(Sender: TObject);
    procedure sButton45Click(Sender: TObject);
    procedure sButton46Click(Sender: TObject);
    procedure sButton44Click(Sender: TObject);
    procedure sButton47Click(Sender: TObject);
    procedure sButton48Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sButton41Click(Sender: TObject);
    procedure sButton28Click(Sender: TObject);
    procedure sListBox4Click(Sender: TObject);
    procedure sEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure sButton49Click(Sender: TObject);
    procedure sButton50Click(Sender: TObject);
    procedure sEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure sButton51Click(Sender: TObject);
    procedure sButton52Click(Sender: TObject);
    procedure sButton53Click(Sender: TObject);
    procedure popup3_1Click(Sender: TObject);
    procedure popup3_2Click(Sender: TObject);
    procedure popup3_3Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sTrackBar4Change(Sender: TObject);
    procedure kit_imageb1Click(Sender: TObject);
    procedure kit_imageb2Click(Sender: TObject);
    procedure kit_imageb3Click(Sender: TObject);
    procedure kit_imageb4Click(Sender: TObject);
    procedure kit_imageb5Click(Sender: TObject);
    procedure kit_imageb6Click(Sender: TObject);
    procedure sTrackBar5Change(Sender: TObject);
    procedure sTrackBar6Change(Sender: TObject);
    procedure sButton55Click(Sender: TObject);
    procedure sButton35Click(Sender: TObject);
    procedure sButton54Click(Sender: TObject);
    procedure sButton24Click(Sender: TObject);
    procedure sButton26Click(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure trainingPlrNameH1Click(Sender: TObject);
    procedure trainingPlrNameH2Click(Sender: TObject);
    procedure trainingPlrNameH3Click(Sender: TObject);
    procedure trainingPlrNameH4Click(Sender: TObject);
    procedure trainingPlrNameH5Click(Sender: TObject);
    procedure trainingPlrNameH6Click(Sender: TObject);
    procedure trainingPlrNameH7Click(Sender: TObject);
    procedure trainingPlrNameH8Click(Sender: TObject);
    procedure trainingPlrNameH9Click(Sender: TObject);
    procedure trainingPlrNameH10Click(Sender: TObject);
    procedure trainingPlrNameA1Click(Sender: TObject);
    procedure trainingPlrNameA2Click(Sender: TObject);
    procedure trainingPlrNameA3Click(Sender: TObject);
    procedure trainingPlrNameA4Click(Sender: TObject);
    procedure trainingPlrNameA5Click(Sender: TObject);
    procedure trainingPlrNameA6Click(Sender: TObject);
    procedure trainingPlrNameA7Click(Sender: TObject);
    procedure trainingPlrNameA8Click(Sender: TObject);
    procedure trainingPlrNameA9Click(Sender: TObject);
    procedure trainingPlrNameA10Click(Sender: TObject);
    procedure sButton588Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses proseduurit, Unit2, muuttujat, Unit3, Unit5,freepractise;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var texttied: textfile;
begin

  width:=951;
  height:=695;
  WebBrowser1.Left:=936;
  lataa_favs_ja_ignores;


//******************************************************************************

  Caption:='Netsoccer 2.'+versio;

  assignfile(texttied,'skin.txt');
  reset(texttied);
  readln(texttied,selected_skin);
  closefile(texttied);

  sSkinManager1.SkinName:=selected_skin;
  sSkinManager1.Active:=true;

  loadFilterSettings;

  panelit_kohdalleen;
  lataa_lobby_kuvat;
  forminAsettelua;

end;

procedure TForm1.popup2_1Click(Sender: TObject);
begin
  if please_wait_arvo=true then exit;

  if popup2_1.Caption='Create team' then begin 
    panel_visiblet(6);
  end else begin
    pyyda_joukkue_dataa(popup2_1.Caption,1);
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bmp1.Free;
  application.Terminate;
end;

procedure TForm1.sButton1Click(Sender: TObject);
begin
  sEdit3.Text:=Settings.username;
  sEdit4.Text:=Settings.password;
  sbutton5.Caption:=sbutton1.Caption;
  sLabelFX15.visible:=false;
  sEdit5.visible:=false;
  sPanel5.Visible:=true;
  sButton5.SetFocus;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
  sbutton5.Caption:=sbutton2.Caption;
  sLabelFX15.visible:=true;
  sEdit5.visible:=true;
  sPanel5.Visible:=true;
end;

procedure TForm1.sButton5Click(Sender: TObject);
type
  TLogin = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
    password: string[15];
    p: boolean;
  end;

  TRekisterointi = record
    mtype: word;
    mtype2: word;
    ra: word;
    email: string[50];
    name: string[15];
    password: string[15];
    p: boolean;
  end;

var
  Login: TLogin;
  Rekisterointi: TRekisterointi;
begin
  if please_wait_arvo=true then exit;
  if tarkasta_login_register(sButton5.Caption)=false then exit;

  if sButton5.Caption='Login' then begin
    please_wait(true);
    Login.mtype:=16;
    Login.mtype2:=16;
    Login.ra:=random(55000)+1;
    Login.name:=sedit3.text;
    Login.password:=sedit4.text;
    Login.p:=Settings.panaani;
    TCPClient2.WriteBuffer(@Login,sizeof(Login));
  end;

  if sButton5.Caption='Register' then begin
    please_wait(true);
    Rekisterointi.mtype:=18;
    Rekisterointi.mtype2:=18;
    Rekisterointi.ra:=random(55000)+1;
    Rekisterointi.email:=sedit5.text;
    Rekisterointi.name:=sedit3.text;
    Rekisterointi.password:=sedit4.text;
    Rekisterointi.p:=Settings.panaani;
    TCPClient2.WriteBuffer(@Rekisterointi,sizeof(Rekisterointi));
  end;

  oma_login_name:=sEdit3.Text;
  oma_login_password:=sEdit4.Text;
  name1.Caption:=oma_login_name;

  if sCheckbox7.Checked then begin
    Settings.username:=sEdit3.Text;
    Settings.password:=sEdit4.Text;
  end
  else begin
    Settings.username:='';
    Settings.password:='';
  end;

  tallennaSettings;

end;

procedure TForm1.sButton7Click(Sender: TObject);
begin
  spanel6.Visible:=false;
end;

procedure TForm1.sButton6Click(Sender: TObject);
type
  TCreate_team = record
    mtype: word;
    mtype2: word;
    ra: word;
    teamname: string[20];
  end;

var
  Create_team: TCreate_team;
begin
  if please_wait_arvo=true then exit;

  if form1.sEdit6.text='' then exit;
  if form1.sEdit6.text[1]=' ' then begin
    AddInfoMessage('Team name may not start with space');
    exit;
  end;
  if form1.sEdit6.text[length(form1.sEdit6.text)]=' ' then begin
    AddInfoMessage('Team name may not end with space');
    exit;
  end;

  if tarkastetaan_ettei_invalid_kirjaimia(form1.sEdit6.text)=false then begin
    AddInfoMessage('Only following letters allowed: A-Z '' - _ @ .');
    exit;
  end;

  if AnsiLowerCase(sedit6.Text)='create team' then exit;

  please_wait_arvo:=true;
  Create_team.mtype:=20;
  Create_team.mtype2:=20;
  Create_team.ra:=random(55000)+1;
  Create_team.teamname:=sedit6.Text;
  TCPClient2.WriteBuffer(@Create_team,sizeof(Create_team));

end;

procedure TForm1.sButton10Click(Sender: TObject);
begin
  panel_visiblet(8);
end;

procedure TForm1.sButton11Click(Sender: TObject);
begin

  lataa_favs_ja_ignores;
  aseta_chat_settings;

  panel_visiblet(9);
end;

procedure TForm1.sListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var texttied: textfile;
    i: integer;
begin

  if key=VK_DELETE then begin
    if slistbox1.itemindex=-1 then exit;
    slistbox1.Items.Delete(slistbox1.itemindex);
    assignfile(texttied,'data/pfav.txt');
    rewrite(texttied);
    for i:=0 to slistbox1.Items.Count-1 do
      writeln(texttied,slistbox1.Items[i]);
    closefile(texttied);
  end;

end;

procedure TForm1.sEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var texttied: textfile;
    i: integer;
begin

  if key=VK_RETURN then begin
    if sedit7.text='' then exit;
    slistbox1.Items.Add(sedit7.text);
    assignfile(texttied,'data/pfav.txt');
    rewrite(texttied);
    for i:=0 to slistbox1.Items.Count-1 do
      writeln(texttied,slistbox1.Items[i]);
    closefile(texttied);
    sedit7.text:='';
  end;

end;

procedure TForm1.sEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var texttied: textfile;
    i: integer;
begin

  if key=VK_RETURN then begin
    if sedit9.text='' then exit;
    slistbox2.Items.Add(sedit9.text);
    assignfile(texttied,'data/tfav.txt');
    rewrite(texttied);
    for i:=0 to slistbox2.Items.Count-1 do
      writeln(texttied,slistbox2.Items[i]);
    closefile(texttied);
    sedit9.text:='';
  end;

end;

procedure TForm1.sListBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var texttied: textfile;
    i: integer;
begin

  if key=VK_DELETE then begin
    if slistbox2.itemindex=-1 then exit;
    slistbox2.Items.Delete(slistbox2.itemindex);
    assignfile(texttied,'data/tfav.txt');
    rewrite(texttied);
    for i:=0 to slistbox2.Items.Count-1 do
      writeln(texttied,slistbox2.Items[i]);
    closefile(texttied);
  end;

end;

procedure TForm1.sEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var texttied: textfile;
    i: integer;
begin

  if key=VK_RETURN then begin
    if sedit10.text='' then exit;

    for i:=0 to sListbox3.Count-1 do
      if sListbox3.Items[i]=sedit10.text then exit;

    slistbox3.Items.Add(sedit10.text);
    assignfile(texttied,'data/ignlist.txt');
    rewrite(texttied);
    for i:=0 to slistbox3.Items.Count-1 do
      writeln(texttied,slistbox3.Items[i]);
    closefile(texttied);
    sedit10.text:='';
  end;

end;

procedure TForm1.sListBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var texttied: textfile;
    i: integer;
begin

  if key=VK_DELETE then begin
    if slistbox3.itemindex=-1 then exit;
    slistbox3.Items.Delete(slistbox3.itemindex);
    assignfile(texttied,'data/ignlist.txt');
    rewrite(texttied);
    for i:=0 to slistbox3.Items.Count-1 do
      writeln(texttied,slistbox3.Items[i]);
    closefile(texttied);
  end;

end;

procedure TForm1.sColorBox1Change(Sender: TObject);
begin
  tallenna_chat_settings(2,0,sColorBox1.Selected);
end;

procedure TForm1.sColorBox2Change(Sender: TObject);
begin
  tallenna_chat_settings(3,0,sColorBox2.Selected);
end;

procedure TForm1.sColorBox3Change(Sender: TObject);
begin
  tallenna_chat_settings(4,0,sColorBox3.Selected);
end;

procedure TForm1.sColorBox4Change(Sender: TObject);
begin
  tallenna_chat_settings(5,0,sColorBox4.Selected);
end;

procedure TForm1.sColorBox5Change(Sender: TObject);
begin
  tallenna_chat_settings(6,0,sColorBox5.Selected);
end;

procedure TForm1.sComboBox1Change(Sender: TObject);
var texttied: textfile;
    s: string;
begin
  if sComboBox1.ItemIndex=-1 then exit;

  if sComboBox1.ItemIndex=0 then begin //person favs
    sComboBox2.Items.Clear;
    assignfile(texttied,'data/pfav.txt');
    reset(texttied);
    while not Eof(texttied) do begin
      readln(texttied,s);
      sComboBox2.Items.Add(s);
    end;
    sComboBox2.ItemIndex:=0;
    closefile(texttied);
  end;

  if sComboBox1.ItemIndex=2 then begin //team favs
    sComboBox2.Items.Clear;
    assignfile(texttied,'data/tfav.txt');
    reset(texttied);
    while not Eof(texttied) do begin
      readln(texttied,s);
      sComboBox2.Items.Add(s);
    end;
    sComboBox2.ItemIndex:=0;
    closefile(texttied);
  end;

  if (sComboBox1.ItemIndex=1) or (sComboBox1.ItemIndex=3) then
    sComboBox2.Visible:=false
  else
    sComboBox2.Visible:=true;

end;

procedure TForm1.popup1_1Click(Sender: TObject);
var i,j: integer;
begin

  for i:=1 to 10 do
    for j:=1 to 2 do
      Ingame_data.playerNames[i,j]:='';

  Ingame_data.omaPeliIndex:=1;
  Ingame_data.omaPeliTeamIndex:=1;
  Ingame_data.gameStatus:=1;
  Ingame_data.maxPlayers:=1;
  Ingame_data.playerNames[1,1]:=oma_login_name;

  Ingame_data.character[1,1,1]:=0;
  Ingame_data.character[1,1,3]:=1;

  for i:=1 to 2 do begin
    Ingame_data.shirtColors[1,1,i]:=247;
    Ingame_data.shirtColors[1,2,i]:=147;
    Ingame_data.shirtColors[1,3,i]:=51;  
    Ingame_data.shirtColors[2,1,i]:=0;
    Ingame_data.shirtColors[2,2,i]:=0;
    Ingame_data.shirtColors[2,3,i]:=255;
    Ingame_data.shirtColors[3,1,i]:=255;
    Ingame_data.shirtColors[3,2,i]:=255;
    Ingame_data.shirtColors[3,3,i]:=255;
    Ingame_data.shirtColors[4,1,i]:=0;
    Ingame_data.shirtColors[4,2,i]:=0;
    Ingame_data.shirtColors[4,3,i]:=255;
  end;

  Ingame_data.shirtStyle[1]:=2;



  freepractise.servers.control[1,1,1]:=Settings.control;
  freepractise.servers.slowMoving[1,1,1]:=Settings.slowMoving;
  freepractise.servers.index[1,1,1]:=1;
  freepractise.servers.max_plrs[1]:=5;

//****************************
  servers.gameStatus[1]:=1;
  //nollaa_pelaajien_koordinaatit(1);
  servers.homeAloitusPuoli[1]:=random(2)+1;
  servers.kickoffAloittaja[1]:=random(2)+1;
  //aseta_kickoff_positiot(1,servers.homeAloitusPuoli[1],servers.kickoffAloittaja[1]);
  //servers.autoRunning[1]:=1;

  servers.plr_names[1,1,1]:=oma_login_name;
  servers.puoliaika[1]:=1;
  //servers.ballCoords[1,1]:=0;
  //servers.ballCoords[1,2]:=0;
  servers.ballNopeus[1]:=0;
  servers.ballKorkeus[1]:=0;

  servers.keeperCoords[1,1,1]:=0;
  servers.keeperCoords[1,1,2]:=-580;
  servers.keeperCoords[1,2,1]:=0;
  servers.keeperCoords[1,2,2]:=580;

  servers.kumman_heitto[1]:=0;
  servers.kumman_vapari[1]:=0;
  //servers.mista_ulos[1]:=0;
  servers.vaparin_antaja[1,1]:=0;
  servers.vaparin_antaja[1,2]:=0;


//*****************************




  freePractiseMode:=true;
  form3.omegatimer1.Enabled:=true;
  form3.Visible:=true;

  //form3.DanJetX1.FullScreen:=true;
  form1.Visible:=false;


  asetaNappaimet;
end;

procedure TForm1.sScrollBar1Scroll(Sender: TObject;
  ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
  if scombobox4.ItemIndex=0 then aseta_team_Players_General_info;
  if scombobox4.ItemIndex=1 then aseta_team_Players_Administration;
  if scombobox4.ItemIndex=2 then aseta_team_Records;
  if scombobox4.ItemIndex=3 then aseta_team_Latest_scores;
  if scombobox4.ItemIndex=4 then aseta_team_Invites;
  if scombobox4.ItemIndex=5 then aseta_team_Settings;  
end;

procedure TForm1.plname1Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname1.Caption);
end;

procedure TForm1.plname2Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname2.Caption);
end;

procedure TForm1.plname3Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname3.Caption);
end;

procedure TForm1.plname4Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname4.Caption);
end;

procedure TForm1.plname5Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname5.Caption);
end;

procedure TForm1.plname6Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname6.Caption);
end;

procedure TForm1.plname7Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname7.Caption);
end;

procedure TForm1.plname8Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname8.Caption);
end;

procedure TForm1.plname9Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname9.Caption);
end;

procedure TForm1.plname10Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname10.Caption);
end;

procedure TForm1.plname11Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname11.Caption);
end;

procedure TForm1.plname12Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname12.Caption);
end;

procedure TForm1.plname13Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname13.Caption);
end;

procedure TForm1.plname14Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(plname14.Caption);
end;

procedure TForm1.sEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
type
  TSearch = record
    mtype: word;
    mtype2: word;
    ra: word;
    search: string[20];
  end;
var
  Search: TSearch;
begin

  if key=VK_RETURN then begin
    if sEdit2.Text='' then exit;
    if please_wait_arvo=true then exit;

    Search.mtype:=31;
    Search.mtype2:=31;
    Search.ra:=random(55000)+1;
    Search.search:=sEdit2.Text;
    TCPClient2.WriteBuffer(@Search,sizeof(Search));
    please_wait(true);

  end;

end;

procedure TForm1.sEdit2Click(Sender: TObject);
begin
  if sEdit2.Text='Search...' then sEdit2.Text:='';
end;

procedure TForm1.sLabelFX27Click(Sender: TObject);
begin
  search(sLabelFX27.Caption,sLabelFX47.Caption);
end;

procedure TForm1.sLabelFX28Click(Sender: TObject);
begin
  search(sLabelFX28.Caption,sLabelFX48.Caption);
end;

procedure TForm1.sLabelFX29Click(Sender: TObject);
begin
  search(sLabelFX29.Caption,sLabelFX49.Caption);
end;

procedure TForm1.sLabelFX30Click(Sender: TObject);
begin
  search(sLabelFX30.Caption,sLabelFX50.Caption);
end;

procedure TForm1.sLabelFX31Click(Sender: TObject);
begin
  search(sLabelFX31.Caption,sLabelFX51.Caption);
end;

procedure TForm1.sLabelFX32Click(Sender: TObject);
begin
  search(sLabelFX32.Caption,sLabelFX52.Caption);
end;

procedure TForm1.sLabelFX33Click(Sender: TObject);
begin
  search(sLabelFX33.Caption,sLabelFX53.Caption);
end;

procedure TForm1.sLabelFX34Click(Sender: TObject);
begin
  search(sLabelFX34.Caption,sLabelFX54.Caption);
end;

procedure TForm1.sLabelFX35Click(Sender: TObject);
begin
  search(sLabelFX35.Caption,sLabelFX55.Caption);
end;

procedure TForm1.sLabelFX36Click(Sender: TObject);
begin
  search(sLabelFX36.Caption,sLabelFX56.Caption);
end;

procedure TForm1.sLabelFX37Click(Sender: TObject);
begin
  search(sLabelFX37.Caption,sLabelFX57.Caption);
end;

procedure TForm1.sLabelFX38Click(Sender: TObject);
begin
  search(sLabelFX38.Caption,sLabelFX58.Caption);
end;

procedure TForm1.sLabelFX39Click(Sender: TObject);
begin
  search(sLabelFX39.Caption,sLabelFX59.Caption);
end;

procedure TForm1.sLabelFX40Click(Sender: TObject);
begin
  search(sLabelFX40.Caption,sLabelFX60.Caption);
end;

procedure TForm1.sLabelFX41Click(Sender: TObject);
begin
  search(sLabelFX41.Caption,sLabelFX61.Caption);
end;

procedure TForm1.sLabelFX42Click(Sender: TObject);
begin
  search(sLabelFX42.Caption,sLabelFX62.Caption);
end;

procedure TForm1.sLabelFX43Click(Sender: TObject);
begin
  search(sLabelFX43.Caption,sLabelFX63.Caption);
end;

procedure TForm1.sLabelFX44Click(Sender: TObject);
begin
  search(sLabelFX44.Caption,sLabelFX64.Caption);
end;

procedure TForm1.sLabelFX45Click(Sender: TObject);
begin
  search(sLabelFX45.Caption,sLabelFX65.Caption);
end;

procedure TForm1.sLabelFX46Click(Sender: TObject);
begin
  search(sLabelFX46.Caption,sLabelFX66.Caption);
end;

procedure TForm1.sLabelFX67Click(Sender: TObject);
begin
  search(sLabelFX67.Caption,'Team');
end;

procedure TForm1.sLabelFX68Click(Sender: TObject);
begin
  search(sLabelFX68.Caption,'Team');
end;

procedure TForm1.sLabelFX69Click(Sender: TObject);
begin
  search(sLabelFX69.Caption,'Team');
end;

procedure TForm1.sLabelFX70Click(Sender: TObject);
begin
  search(sLabelFX70.Caption,'Team');
end;

procedure TForm1.sLabelFX71Click(Sender: TObject);
begin
  search(sLabelFX71.Caption,'Team');
end;

procedure TForm1.sLabelFX72Click(Sender: TObject);
begin
  search(sLabelFX72.Caption,'Team');
end;

procedure TForm1.sLabelFX73Click(Sender: TObject);
begin
  search(sLabelFX73.Caption,'Team');
end;

procedure TForm1.sLabelFX74Click(Sender: TObject);
begin
  search(sLabelFX74.Caption,'Team');
end;

procedure TForm1.sLabelFX75Click(Sender: TObject);
begin
  search(sLabelFX75.Caption,'Team');
end;

procedure TForm1.sLabelFX76Click(Sender: TObject);
begin
  search(sLabelFX76.Caption,'Team');
end;

procedure TForm1.sLabelFX77Click(Sender: TObject);
begin
  search(sLabelFX77.Caption,'Team');
end;

procedure TForm1.sLabelFX78Click(Sender: TObject);
begin
  search(sLabelFX78.Caption,'Team');
end;

procedure TForm1.sLabelFX79Click(Sender: TObject);
begin
  search(sLabelFX79.Caption,'Team');
end;

procedure TForm1.sLabelFX80Click(Sender: TObject);
begin
  search(sLabelFX80.Caption,'Team');
end;

procedure TForm1.sLabelFX81Click(Sender: TObject);
begin
  search(sLabelFX81.Caption,'Team');
end;

procedure TForm1.sLabelFX82Click(Sender: TObject);
begin
  search(sLabelFX82.Caption,'Team');
end;

procedure TForm1.sLabelFX83Click(Sender: TObject);
begin
  search(sLabelFX83.Caption,'Team');
end;

procedure TForm1.sLabelFX84Click(Sender: TObject);
begin
  search(sLabelFX84.Caption,'Team');
end;

procedure TForm1.sLabelFX85Click(Sender: TObject);
begin
  search(sLabelFX85.Caption,'Team');
end;

procedure TForm1.sLabelFX86Click(Sender: TObject);
begin
  search(sLabelFX86.Caption,'Team');
end;

procedure TForm1.name1Click(Sender: TObject);
type
  TPyyda_omat_datat = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  Pyyda_omat_datat: TPyyda_omat_datat;
begin
  if please_wait_arvo=true then exit;

  if oma_team=0 then sButton13.Visible:=false else sButton13.Visible:=true;

  Pyyda_omat_datat.mtype:=34;
  Pyyda_omat_datat.mtype2:=34;
  Pyyda_omat_datat.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@Pyyda_omat_datat,sizeof(Pyyda_omat_datat));

  please_wait(true);

end;

procedure TForm1.sButton12Click(Sender: TObject);
type
  TLaheta_invite = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
  end;
var
  Laheta_invite: TLaheta_invite;
begin

  if please_wait_arvo=true then exit;
  if oma_adminstatus<2 then exit;

  Laheta_invite.mtype:=35;
  Laheta_invite.mtype2:=35;
  Laheta_invite.ra:=random(55000)+1;
  Laheta_invite.name:=sLabelFX8.Caption;
  TCPClient2.WriteBuffer(@Laheta_invite,sizeof(Laheta_invite));

  please_wait(true);

end;

procedure TForm1.inv1Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv1.caption,1);
end;

procedure TForm1.inv2Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv2.caption,1);
end;

procedure TForm1.inv3Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv3.caption,1);
end;

procedure TForm1.inv4Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv4.caption,1);
end;

procedure TForm1.inv5Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv5.caption,1);
end;

procedure TForm1.inv6Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv6.caption,1);
end;

procedure TForm1.inv7Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv7.caption,1);
end;

procedure TForm1.inv8Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv8.caption,1);
end;

procedure TForm1.inv9Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv9.caption,1);
end;

procedure TForm1.inv10Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv10.caption,1);
end;

procedure TForm1.inv11Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv11.caption,1);
end;

procedure TForm1.inv12Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv12.caption,1);
end;

procedure TForm1.inv13Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv13.caption,1);
end;

procedure TForm1.inv14Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv14.caption,1);
end;

procedure TForm1.inv15Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv15.caption,1);
end;

procedure TForm1.inv16Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv16.caption,1);
end;

procedure TForm1.inv17Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv17.caption,1);
end;

procedure TForm1.inv18Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv18.caption,1);
end;

procedure TForm1.inv19Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv19.caption,1);
end;

procedure TForm1.inv20Click(Sender: TObject);
begin
  pyyda_joukkue_dataa(inv20.caption,1);
end;

procedure TForm1.acc1Click(Sender: TObject);
begin
  vastaus_accrej(inv1.Caption,1);
end;

procedure TForm1.acc2Click(Sender: TObject);
begin
  vastaus_accrej(inv2.Caption,1);
end;

procedure TForm1.acc3Click(Sender: TObject);
begin
  vastaus_accrej(inv3.Caption,1);
end;

procedure TForm1.acc4Click(Sender: TObject);
begin
  vastaus_accrej(inv4.Caption,1);
end;

procedure TForm1.acc5Click(Sender: TObject);
begin
  vastaus_accrej(inv5.Caption,1);
end;

procedure TForm1.acc6Click(Sender: TObject);
begin
  vastaus_accrej(inv6.Caption,1);
end;

procedure TForm1.acc7Click(Sender: TObject);
begin
  vastaus_accrej(inv7.Caption,1);
end;

procedure TForm1.acc8Click(Sender: TObject);
begin
  vastaus_accrej(inv8.Caption,1);
end;

procedure TForm1.acc9Click(Sender: TObject);
begin
  vastaus_accrej(inv9.Caption,1);
end;

procedure TForm1.acc10Click(Sender: TObject);
begin
  vastaus_accrej(inv10.Caption,1);
end;

procedure TForm1.acc11Click(Sender: TObject);
begin
  vastaus_accrej(inv11.Caption,1);
end;

procedure TForm1.acc12Click(Sender: TObject);
begin
  vastaus_accrej(inv12.Caption,1);
end;

procedure TForm1.acc13Click(Sender: TObject);
begin
  vastaus_accrej(inv13.Caption,1);
end;

procedure TForm1.acc14Click(Sender: TObject);
begin
  vastaus_accrej(inv14.Caption,1);
end;

procedure TForm1.acc15Click(Sender: TObject);
begin
  vastaus_accrej(inv15.Caption,1);
end;

procedure TForm1.acc16Click(Sender: TObject);
begin
  vastaus_accrej(inv16.Caption,1);
end;

procedure TForm1.acc17Click(Sender: TObject);
begin
  vastaus_accrej(inv17.Caption,1);
end;

procedure TForm1.acc18Click(Sender: TObject);
begin
  vastaus_accrej(inv18.Caption,1);
end;

procedure TForm1.acc19Click(Sender: TObject);
begin
  vastaus_accrej(inv19.Caption,1);
end;

procedure TForm1.acc20Click(Sender: TObject);
begin
  vastaus_accrej(inv20.Caption,1);
end;

procedure TForm1.rej1Click(Sender: TObject);
begin
  vastaus_accrej(inv1.Caption,2);
end;

procedure TForm1.rej2Click(Sender: TObject);
begin
  vastaus_accrej(inv2.Caption,2);
end;

procedure TForm1.rej3Click(Sender: TObject);
begin
  vastaus_accrej(inv3.Caption,2);
end;

procedure TForm1.rej4Click(Sender: TObject);
begin
  vastaus_accrej(inv4.Caption,2);
end;

procedure TForm1.rej5Click(Sender: TObject);
begin
  vastaus_accrej(inv5.Caption,2);
end;

procedure TForm1.rej6Click(Sender: TObject);
begin
  vastaus_accrej(inv6.Caption,2);
end;

procedure TForm1.rej7Click(Sender: TObject);
begin
  vastaus_accrej(inv7.Caption,2);
end;

procedure TForm1.rej8Click(Sender: TObject);
begin
  vastaus_accrej(inv8.Caption,2);
end;

procedure TForm1.rej9Click(Sender: TObject);
begin
  vastaus_accrej(inv9.Caption,2);
end;

procedure TForm1.rej10Click(Sender: TObject);
begin
  vastaus_accrej(inv10.Caption,2);
end;

procedure TForm1.rej11Click(Sender: TObject);
begin
  vastaus_accrej(inv11.Caption,2);
end;

procedure TForm1.rej12Click(Sender: TObject);
begin
  vastaus_accrej(inv12.Caption,2);
end;

procedure TForm1.rej13Click(Sender: TObject);
begin
  vastaus_accrej(inv13.Caption,2);
end;

procedure TForm1.rej14Click(Sender: TObject);
begin
  vastaus_accrej(inv14.Caption,2);
end;

procedure TForm1.rej15Click(Sender: TObject);
begin
  vastaus_accrej(inv15.Caption,2);
end;

procedure TForm1.rej16Click(Sender: TObject);
begin
  vastaus_accrej(inv16.Caption,2);
end;

procedure TForm1.rej17Click(Sender: TObject);
begin
  vastaus_accrej(inv17.Caption,2);
end;

procedure TForm1.rej18Click(Sender: TObject);
begin
  vastaus_accrej(inv18.Caption,2);
end;

procedure TForm1.rej19Click(Sender: TObject);
begin
  vastaus_accrej(inv19.Caption,2);
end;

procedure TForm1.rej20Click(Sender: TObject);
begin
  vastaus_accrej(inv20.Caption,2);
end;

procedure TForm1.sComboBox4Change(Sender: TObject);
begin

  if scombobox4.ItemIndex=0 then aseta_team_Players_General_info;
  if scombobox4.ItemIndex=1 then aseta_team_Players_Administration;
  if scombobox4.ItemIndex=2 then aseta_team_Records;
  if scombobox4.ItemIndex=3 then aseta_team_Latest_scores;
  if scombobox4.ItemIndex=4 then aseta_team_Invites;
  if scombobox4.ItemIndex=5 then aseta_team_Settings;

end;

procedure TForm1.po1Click(Sender: TObject);
begin
  admin_muutos(po1.Caption,plname1.caption);
end;

procedure TForm1.po2Click(Sender: TObject);
begin
  admin_muutos(po2.Caption,plname2.caption);
end;

procedure TForm1.po3Click(Sender: TObject);
begin
  admin_muutos(po3.Caption,plname3.caption);
end;

procedure TForm1.po4Click(Sender: TObject);
begin
  admin_muutos(po4.Caption,plname4.caption);
end;

procedure TForm1.po5Click(Sender: TObject);
begin
  admin_muutos(po5.Caption,plname5.caption);
end;

procedure TForm1.po6Click(Sender: TObject);
begin
  admin_muutos(po6.Caption,plname6.caption);
end;

procedure TForm1.po7Click(Sender: TObject);
begin
  admin_muutos(po7.Caption,plname7.caption);
end;

procedure TForm1.po8Click(Sender: TObject);
begin
  admin_muutos(po8.Caption,plname8.caption);
end;

procedure TForm1.po9Click(Sender: TObject);
begin
  admin_muutos(po9.Caption,plname9.caption);
end;

procedure TForm1.po10Click(Sender: TObject);
begin
  admin_muutos(po10.Caption,plname10.caption);
end;

procedure TForm1.po11Click(Sender: TObject);
begin
  admin_muutos(po11.Caption,plname11.caption);
end;

procedure TForm1.po12Click(Sender: TObject);
begin
  admin_muutos(po12.Caption,plname12.caption);
end;

procedure TForm1.po13Click(Sender: TObject);
begin
  admin_muutos(po13.Caption,plname13.caption);
end;

procedure TForm1.po14Click(Sender: TObject);
begin
  admin_muutos(po14.Caption,plname14.caption);
end;

procedure TForm1.sTrackBar1Change(Sender: TObject);
begin
  Joukkue_data.shirt_style[1]:=sTrackBar1.Position;
  kit_colors;
end;

procedure TForm1.sTrackBar2Change(Sender: TObject);
begin
  Joukkue_data.shirt_style[2]:=sTrackBar2.Position;
  kit_colors;
end;

procedure TForm1.kit_image1Click(Sender: TObject);
begin
  if sCheckbox4.Checked=true then asun_varimuutos(1,1);
  if sCheckbox4.Checked=false then asun_varimuutos(2,1);
end;

procedure TForm1.kit_image2Click(Sender: TObject);
begin
  if sCheckbox4.Checked=true then asun_varimuutos(1,2);
  if sCheckbox4.Checked=false then asun_varimuutos(2,2);
end;

procedure TForm1.kit_image3Click(Sender: TObject);
begin
  asun_varimuutos(3,1);
end;

procedure TForm1.kit_image4Click(Sender: TObject);
begin
  asun_varimuutos(3,2);
end;

procedure TForm1.kit_image5Click(Sender: TObject);
begin
  asun_varimuutos(4,1);
end;

procedure TForm1.kit_image6Click(Sender: TObject);
begin
  asun_varimuutos(4,2);
end;

procedure TForm1.sButton9Click(Sender: TObject);
type
  TTeam_setting_muutos = record
    mtype: word;
    mtype2: word;
    ra: word;
    shirt_types: array [1..2] of byte;
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    allow_joining: byte;
    text: string[255];
    URL: string[100];
    location: byte;
  end;
var
  Team_setting_muutos: TTeam_setting_muutos;
  i,j,k: integer;
  p_str: string;
  p_bool: boolean;
begin

  if please_wait_arvo=true then exit;
  if not (strtoint(sLabelFX17.caption)=oma_team) then exit;
  if not (sLabelFX1.caption=oma_team_name) then exit;
  if sCombobox10.ItemIndex<0 then exit;
  if sCombobox10.ItemIndex>2 then exit;

  if oma_adminstatus<2 then begin
    AddInfoMessage('Only master can change settings');
    exit;
  end;

  Team_setting_muutos.mtype:=39;
  Team_setting_muutos.mtype2:=39;
  Team_setting_muutos.ra:=random(55000)+1;
  for i:=1 to 4 do
    for j:=1 to 3 do
      for k:=1 to 2 do
        Team_setting_muutos.shirt_colors[i,j,k]:=Joukkue_data.shirt_colors[i,j,k];

  for i:=1 to 2 do Team_setting_muutos.shirt_types[i]:=Joukkue_data.shirt_style[i];

  if sCheckBox5.Checked=true then
    Team_setting_muutos.allow_joining:=1 else
    Team_setting_muutos.allow_joining:=0;

  Team_setting_muutos.text:=sedit8.Text;
  Team_setting_muutos.location:=sCombobox10.ItemIndex;

  //tarkasta URL:n toimivuus

  Team_setting_muutos.URL:='';
  if length(sedit11.Text)>4 then begin
    p_bool:=false;
    p_str:=AnsiLowerCase(sedit11.Text);
    if not (p_str[length(p_str)]='f') then p_bool:=true;
    if not (p_str[length(p_str)-1]='i') then p_bool:=true;
    if not (p_str[length(p_str)-2]='g') then p_bool:=true;
    if not (p_str[length(p_str)-3]='.') then p_bool:=true;
    if p_bool=true then Team_setting_muutos.URL:='' else Team_setting_muutos.URL:=sedit11.Text;
  end;

  please_wait(true);

  TCPClient2.WriteBuffer(@Team_setting_muutos,sizeof(Team_setting_muutos));

end;

procedure TForm1.sEdit8Change(Sender: TObject);
begin
  smemo2.Lines.Clear;
  smemo2.Lines.Add(sEdit8.text);
end;


procedure TForm1.sButton13Click(Sender: TObject);
type
  TLeave_team = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  Leave_team: TLeave_team;
  p_buttonSelected : Integer;
begin

  if oma_team=0 then exit;
  if please_wait_arvo=true then exit;

  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then begin
    Leave_team.mtype:=40;
    Leave_team.mtype2:=40;
    Leave_team.ra:=random(55000)+1;
    TCPClient2.WriteBuffer(@Leave_team,sizeof(Leave_team));
    please_wait(true);
  end;

  if p_buttonSelected=mrCancel then exit;

end;

procedure TForm1.invited1Click(Sender: TObject);
begin
  search(invited1.Caption,'Player');
end;

procedure TForm1.invited2Click(Sender: TObject);
begin
  search(invited2.Caption,'Player');
end;

procedure TForm1.invited3Click(Sender: TObject);
begin
  search(invited3.Caption,'Player');
end;

procedure TForm1.invited4Click(Sender: TObject);
begin
  search(invited4.Caption,'Player');
end;

procedure TForm1.invited5Click(Sender: TObject);
begin
  search(invited5.Caption,'Player');
end;

procedure TForm1.invited6Click(Sender: TObject);
begin
  search(invited6.Caption,'Player');
end;

procedure TForm1.invited7Click(Sender: TObject);
begin
  search(invited7.Caption,'Player');
end;

procedure TForm1.invited8Click(Sender: TObject);
begin
  search(invited8.Caption,'Player');
end;

procedure TForm1.invited9Click(Sender: TObject);
begin
  search(invited9.Caption,'Player');
end;

procedure TForm1.invited10Click(Sender: TObject);
begin
  search(invited10.Caption,'Player');
end;

procedure TForm1.invited11Click(Sender: TObject);
begin
  search(invited11.Caption,'Player');
end;

procedure TForm1.invited12Click(Sender: TObject);
begin
  search(invited12.Caption,'Player');
end;

procedure TForm1.invited13Click(Sender: TObject);
begin
  search(invited13.Caption,'Player');
end;

procedure TForm1.invited14Click(Sender: TObject);
begin
  search(invited14.Caption,'Player');
end;

procedure TForm1.invited15Click(Sender: TObject);
begin
  search(invited15.Caption,'Player');
end;

procedure TForm1.invited16Click(Sender: TObject);
begin
  search(invited16.Caption,'Player');
end;

procedure TForm1.invited17Click(Sender: TObject);
begin
  search(invited17.Caption,'Player');
end;

procedure TForm1.invited18Click(Sender: TObject);
begin
  search(invited18.Caption,'Player');
end;

procedure TForm1.invited19Click(Sender: TObject);
begin
  search(invited19.Caption,'Player');
end;

procedure TForm1.invited20Click(Sender: TObject);
begin
  search(invited20.Caption,'Player');
end;

procedure TForm1.invcan1Click(Sender: TObject);
begin
  peruuta_invite(invited1.Caption);
end;

procedure TForm1.invcan2Click(Sender: TObject);
begin
  peruuta_invite(invited2.Caption);
end;

procedure TForm1.invcan3Click(Sender: TObject);
begin
  peruuta_invite(invited3.Caption);
end;

procedure TForm1.invcan4Click(Sender: TObject);
begin
  peruuta_invite(invited4.Caption);
end;

procedure TForm1.invcan5Click(Sender: TObject);
begin
  peruuta_invite(invited5.Caption);
end;

procedure TForm1.invcan6Click(Sender: TObject);
begin
  peruuta_invite(invited6.Caption);
end;

procedure TForm1.invcan7Click(Sender: TObject);
begin
  peruuta_invite(invited7.Caption);
end;

procedure TForm1.invcan8Click(Sender: TObject);
begin
  peruuta_invite(invited8.Caption);
end;

procedure TForm1.invcan9Click(Sender: TObject);
begin
  peruuta_invite(invited9.Caption);
end;

procedure TForm1.invcan10Click(Sender: TObject);
begin
  peruuta_invite(invited10.Caption);
end;

procedure TForm1.invcan11Click(Sender: TObject);
begin
  peruuta_invite(invited11.Caption);
end;

procedure TForm1.invcan12Click(Sender: TObject);
begin
  peruuta_invite(invited12.Caption);
end;

procedure TForm1.invcan13Click(Sender: TObject);
begin
  peruuta_invite(invited13.Caption);
end;

procedure TForm1.invcan14Click(Sender: TObject);
begin
  peruuta_invite(invited14.Caption);
end;

procedure TForm1.invcan15Click(Sender: TObject);
begin
  peruuta_invite(invited15.Caption);
end;

procedure TForm1.invcan16Click(Sender: TObject);
begin
  peruuta_invite(invited16.Caption);
end;

procedure TForm1.invcan17Click(Sender: TObject);
begin
  peruuta_invite(invited17.Caption);
end;

procedure TForm1.invcan18Click(Sender: TObject);
begin
  peruuta_invite(invited18.Caption);
end;

procedure TForm1.invcan19Click(Sender: TObject);
begin
  peruuta_invite(invited19.Caption);
end;

procedure TForm1.invcan20Click(Sender: TObject);
begin
  peruuta_invite(invited20.Caption);
end;

procedure TForm1.popup1_2Click(Sender: TObject);
begin

  if please_wait_arvo=true then exit;
  please_wait(true);

  sLabelFX97.Visible:=false;
  sLabelFX98.Visible:=false;
  sbutton14.Visible:=false;
  sLabelFX100.Caption:='';
  sLabelFX101.Caption:='';

  sLabelFX188.Visible:=false;
  sEdit26.Visible:=false;

  form1.sLabelFX186.Visible:=false;
  form1.trainingPlrNameH1.Visible:=false;
  form1.trainingPlrNameH2.Visible:=false;
  form1.trainingPlrNameH3.Visible:=false;
  form1.trainingPlrNameH4.Visible:=false;
  form1.trainingPlrNameH5.Visible:=false;
  form1.trainingPlrNameH6.Visible:=false;
  form1.trainingPlrNameH7.Visible:=false;
  form1.trainingPlrNameH8.Visible:=false;
  form1.trainingPlrNameH9.Visible:=false;
  form1.trainingPlrNameH10.Visible:=false;
  form1.trainingPlrNameA1.Visible:=false;
  form1.trainingPlrNameA2.Visible:=false;
  form1.trainingPlrNameA3.Visible:=false;
  form1.trainingPlrNameA4.Visible:=false;
  form1.trainingPlrNameA5.Visible:=false;
  form1.trainingPlrNameA6.Visible:=false;
  form1.trainingPlrNameA7.Visible:=false;
  form1.trainingPlrNameA8.Visible:=false;
  form1.trainingPlrNameA9.Visible:=false;
  form1.trainingPlrNameA10.Visible:=false;

  form1.trainingPlrNameH1.caption:='';
  form1.trainingPlrNameH2.caption:='';
  form1.trainingPlrNameH3.caption:='';
  form1.trainingPlrNameH4.caption:='';
  form1.trainingPlrNameH5.caption:='';
  form1.trainingPlrNameH6.caption:='';
  form1.trainingPlrNameH7.caption:='';
  form1.trainingPlrNameH8.caption:='';
  form1.trainingPlrNameH9.caption:='';
  form1.trainingPlrNameH10.caption:='';
  form1.trainingPlrNameA1.caption:='';
  form1.trainingPlrNameA2.caption:='';
  form1.trainingPlrNameA3.caption:='';
  form1.trainingPlrNameA4.caption:='';
  form1.trainingPlrNameA5.caption:='';
  form1.trainingPlrNameA6.caption:='';
  form1.trainingPlrNameA7.caption:='';
  form1.trainingPlrNameA8.caption:='';
  form1.trainingPlrNameA9.caption:='';
  form1.trainingPlrNameA10.caption:='';

  form1.passworded1.caption:='';
  form1.passworded2.caption:='';
  form1.passworded3.caption:='';
  form1.passworded4.caption:='';
  form1.passworded5.caption:='';
  form1.passworded6.caption:='';
  form1.passworded7.caption:='';
  form1.passworded8.caption:='';
  form1.passworded9.caption:='';
  form1.passworded10.caption:='';
  form1.passworded11.caption:='';
  form1.passworded12.caption:='';
  form1.passworded13.caption:='';
  form1.passworded14.caption:='';
  form1.passworded15.caption:='';
  form1.passworded16.caption:='';
  form1.passworded17.caption:='';
  form1.passworded18.caption:='';
  form1.passworded19.caption:='';
  form1.passworded20.caption:='';

  publicServersAlkuNollaukset;
  pyydaPublicServereita(1);

end;

procedure TForm1.sButton14Click(Sender: TObject);
begin

  if please_wait_arvo=true then exit;

  if sLabelFX101.caption='' then exit;

  if sEdit26.Visible then begin
    if sEdit26.Text='' then begin
      addInfoMessage('Enter password');
      exit;
    end;
  end;     

  selectedGameType:=1;
  TCPClient1.Host:=sLabelFX101.caption;
  UDPClient1.Host:=sLabelFX101.caption;
  //TCPClient1.Port:=sLabelFX102.caption;
  //UDPClient1.Port:=sLabelFX102.caption;
  nollaaSocket;
  perusNollauksia;
  TCPClient2.Close;
  TCPClient1.Open;

  please_wait(true);

end;

procedure TForm1.sComboBox12Change(Sender: TObject);   //skin
begin

  if (sComboBox12.ItemIndex>2) or (sComboBox12.ItemIndex<0) then exit;  
  oma_skin:=sComboBox12.ItemIndex;

end;

procedure TForm1.sComboBox13Change(Sender: TObject); //shoe
begin
  if (sComboBox13.ItemIndex>7) or (sComboBox13.ItemIndex<0) then exit;
  oma_shoe:=sComboBox13.ItemIndex;

end;

procedure TForm1.sComboBox14Change(Sender: TObject); //number
begin
  if (sComboBox14.ItemIndex>99) or (sComboBox14.ItemIndex<0) then exit;
  oma_number:=sComboBox14.ItemIndex;
end;

procedure TForm1.sComboBox15Change(Sender: TObject); //body
begin

  if (sComboBox15.ItemIndex>2) or (sComboBox15.ItemIndex<0) then exit;
  oma_body:=sComboBox15.ItemIndex;
  asetacharacterSysteemit(oma_body);
  
end;

procedure TForm1.sButton31Click(Sender: TObject);
type
  TPelaaja_URL_ja_text_muutos = record
    mtype: word;
    mtype2: word;
    ra: word;
    text: string[255];
    URL: string[100];
  end;
var
  Pelaaja_URL_ja_text_muutos: TPelaaja_URL_ja_text_muutos;
  p_bool: boolean;
  p_str: string;
begin

  if please_wait_arvo=true then exit;
  if vipMinsRemaining<=0 then begin
    vainVipit;
    exit;
  end;

  Pelaaja_URL_ja_text_muutos.mtype:=236;
  Pelaaja_URL_ja_text_muutos.mtype2:=236;
  Pelaaja_URL_ja_text_muutos.ra:=random(55000)+1;
  Pelaaja_URL_ja_text_muutos.text:=sedit13.Text;

  //tarkasta URL:n toimivuus
  Pelaaja_URL_ja_text_muutos.URL:='';
  if length(sedit12.Text)>4 then begin
    p_bool:=false;
    p_str:=AnsiLowerCase(sedit12.Text);
    if not (p_str[length(p_str)]='f') then p_bool:=true;
    if not (p_str[length(p_str)-1]='i') then p_bool:=true;
    if not (p_str[length(p_str)-2]='g') then p_bool:=true;
    if not (p_str[length(p_str)-3]='.') then p_bool:=true;
    if p_bool=true then Pelaaja_URL_ja_text_muutos.URL:='' else Pelaaja_URL_ja_text_muutos.URL:=sedit12.Text;
  end;

  please_wait(true);

  TCPClient2.WriteBuffer(@Pelaaja_URL_ja_text_muutos,sizeof(Pelaaja_URL_ja_text_muutos));

end;

procedure TForm1.sScrollBar2Change(Sender: TObject);
begin
  asetaPublicServers;
end;

procedure TForm1.pserv1Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(1);
end;

procedure TForm1.pserv2Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(2);
end;

procedure TForm1.pserv3Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(3);
end;

procedure TForm1.pserv4Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(4);
end;

procedure TForm1.pserv5Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(5);
end;

procedure TForm1.pserv6Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(6);
end;

procedure TForm1.pserv7Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(7);
end;

procedure TForm1.pserv8Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(8);
end;

procedure TForm1.pserv9Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(9);
end;

procedure TForm1.pserv10Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(10);
end;

procedure TForm1.pserv11Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(11);
end;

procedure TForm1.pserv12Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(12);
end;

procedure TForm1.pserv13Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(13);
end;

procedure TForm1.pserv14Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(14);
end;

procedure TForm1.pserv15Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(15);
end;

procedure TForm1.pserv16Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(16);
end;

procedure TForm1.pserv17Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(17);
end;

procedure TForm1.pserv18Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(18);
end;

procedure TForm1.pserv19Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(19);
end;

procedure TForm1.pserv20Click(Sender: TObject);
begin
  pyydaPublanTarkatTiedot(20);
end;

procedure TForm1.sButton32Click(Sender: TObject);
type
  TlistanPyynto = record
    mtype: word;
    mtype2: word;
    ra: word;
    next_i: integer;
  end;
var
  listanPyynto: TlistanPyynto;
begin
  
  if please_wait_arvo then exit;

  if publicChattersReceived then
    panel_visiblet(17)
  else begin
    slistbox4.Items.Clear;
    listanPyynto.mtype:=9000;
    listanPyynto.mtype2:=9000;
    listanPyynto.ra:=random(55000)+1;
    listanPyynto.next_i:=1;
    TCPClient2.WriteBuffer(@listanPyynto,sizeof(listanPyynto));
    please_Wait(true);
  end;

end;

procedure TForm1.sEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var str: string;
begin

  if key=VK_RETURN then begin

    if kickAdminKicks(sEdit1.text) then exit;
    if adminRequestListOfPlayers(sEdit1.text) then exit;
    if superAdminBanRequest(sEdit1.text) then exit;

    if spam=true then exit;
    if sEdit1.Text='' then exit;
    if sComboBox1.ItemIndex<0 then exit;
    if ((sComboBox1.ItemIndex=0) or (sComboBox1.ItemIndex=2)) and (sComboBox2.text='') then exit;

    //   /team
    if teamCommand(sEdit1.Text) then begin
      sEdit1.Text:='';
      sendTeamCommandMS;
      exit;
    end;

    //  /info name
    str:=infoCommand(sEdit1.Text);
    if not (str='') then begin
      sEdit1.Text:='';
      sendInfoCommandMS(str);
      exit;
    end;

    AddChatMessage(oma_login_name,'',sEdit1.Text,sComboBox1.ItemIndex,sComboBox2.text);

    SendChatMsg(sComboBox1.ItemIndex+1,sComboBox2.Text,sEdit1.Text);
    spam:=true;
    sEdit1.Text:='';

  end;
end;

procedure TForm1.popup1_3Click(Sender: TObject);
begin

  if please_wait_arvo then exit;

  please_Wait(true);

  chalXlabel1.Caption:='';
  chalXlabel2.Caption:='';
  chalXlabel3.Caption:='';
  chalXlabel4.Caption:='';
  chalXlabel5.Caption:='';
  chalXlabel6.Caption:='';
  chalXlabel7.Caption:='';
  chalXlabel8.Caption:='';
  chalXlabel9.Caption:='';
  chalXlabel10.Caption:='';
  chalXlabel11.Caption:='';
  chalXlabel12.Caption:='';

  sButton25.Visible:=false;
  sButton29.Visible:=false;
  sButton30.Visible:=false;

  challengePanelAlkuNollaukset;
  pyydaChallengeTietoja(1);

end;

procedure TForm1.sScrollBar3Change(Sender: TObject);
begin
  asetaChallengeTeams;
end;

procedure TForm1.chalteam1Click(Sender: TObject);
begin
  challengeTeamClick(chalteam1.caption);
end;

procedure TForm1.chalteam2Click(Sender: TObject);
begin
  challengeTeamClick(chalteam2.caption);
end;

procedure TForm1.chalteam3Click(Sender: TObject);
begin
  challengeTeamClick(chalteam3.caption);
end;

procedure TForm1.chalteam4Click(Sender: TObject);
begin
  challengeTeamClick(chalteam4.caption);
end;

procedure TForm1.chalteam5Click(Sender: TObject);
begin
  challengeTeamClick(chalteam5.caption);
end;

procedure TForm1.chalteam6Click(Sender: TObject);
begin
  challengeTeamClick(chalteam6.caption);
end;

procedure TForm1.chalteam7Click(Sender: TObject);
begin
  challengeTeamClick(chalteam7.caption);
end;

procedure TForm1.chalteam8Click(Sender: TObject);
begin
  challengeTeamClick(chalteam8.caption);
end;

procedure TForm1.chalteam9Click(Sender: TObject);
begin
  challengeTeamClick(chalteam9.caption);
end;

procedure TForm1.chalteam10Click(Sender: TObject);
begin
  challengeTeamClick(chalteam10.caption);
end;

procedure TForm1.chalteam11Click(Sender: TObject);
begin
  challengeTeamClick(chalteam11.caption);
end;

procedure TForm1.chalteam12Click(Sender: TObject);
begin
  challengeTeamClick(chalteam12.caption);
end;

procedure TForm1.chalteam13Click(Sender: TObject);
begin
  challengeTeamClick(chalteam13.caption);
end;

procedure TForm1.chalteam14Click(Sender: TObject);
begin
  challengeTeamClick(chalteam14.caption);
end;

procedure TForm1.chalteam15Click(Sender: TObject);
begin
  challengeTeamClick(chalteam15.caption);
end;

procedure TForm1.chalteam16Click(Sender: TObject);
begin
  challengeTeamClick(chalteam16.caption);
end;

procedure TForm1.chalteam17Click(Sender: TObject);
begin
  challengeTeamClick(chalteam17.caption);
end;

procedure TForm1.chalteam18Click(Sender: TObject);
begin
  challengeTeamClick(chalteam18.caption);
end;

procedure TForm1.chalteam19Click(Sender: TObject);
begin
  challengeTeamClick(chalteam19.caption);
end;

procedure TForm1.chalteam20Click(Sender: TObject);
begin
  challengeTeamClick(chalteam20.caption);
end;

procedure TForm1.sButton30Click(Sender: TObject);
begin
  search(chalXlabel4.caption,'Team');
end;

procedure TForm1.sButton29Click(Sender: TObject);
begin
  sComboBox2.Text:=chalXlabel4.caption;
  sCombobox1.ItemIndex:=2;
  sComboBox2.visible:=true;
end;

procedure TForm1.sButton25Click(Sender: TObject);
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[20];
  end;
var
  Paketti: TPaketti;
begin

  if please_wait_arvo=true then exit;
  if oma_team=0 then exit;
  if oma_adminstatus=0 then exit;

  please_Wait(true);

  Paketti.mtype:=54;
  Paketti.mtype2:=54;
  Paketti.ra:=random(55000)+1;
  Paketti.name:=chalXlabel4.caption;
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

procedure TForm1.ChallengeClick(Sender: TObject);
type
  TStartChallenge = record
    mtype: word;
    mtype2: word;
    ra: word;
    max_plrs: byte; //5-10 eli paljonko yhdell‰ puolella max
    host_server: string[20];
    teams: array [1..2] of string[20];
    kits: array [1..2] of byte;
  end;
var
  StartChallenge: TStartChallenge;
begin

  if please_wait_arvo=true then exit;
  if sComboBox21.text='' then exit;

  please_Wait(true);

  StartChallenge.mtype:=55;
  StartChallenge.mtype2:=55;
  StartChallenge.ra:=random(55000)+1;

  StartChallenge.max_plrs:=sTrackBar3.Position;
  StartChallenge.teams[1]:=sLabelFX119.Caption;
  StartChallenge.teams[2]:=sLabelFX120.Caption;
  StartChallenge.host_server:=sComboBox21.text;
  StartChallenge.kits[1]:=Kits_muistiin.valitut[1];
  StartChallenge.kits[2]:=Kits_muistiin.valitut[2];
  TCPClient2.WriteBuffer(@StartChallenge,sizeof(StartChallenge));

end;

procedure TForm1.Livescores1Click(Sender: TObject);
begin

  if please_wait_arvo=true then exit;
  please_wait(true);

  LiveScoresAlkuNollaukset;
  pyydaLiveScores(1);

end;

procedure TForm1.sScrollBar4Change(Sender: TObject);
begin
  asetaLivescoret;
end;

procedure TForm1.match1Click(Sender: TObject);
begin
  matchClick(0+sScrollBar4.Position);
end;

procedure TForm1.match2Click(Sender: TObject);
begin
  matchClick(1+sScrollBar4.Position);
end;

procedure TForm1.match3Click(Sender: TObject);
begin
  matchClick(2+sScrollBar4.Position);
end;

procedure TForm1.match4Click(Sender: TObject);
begin
  matchClick(3+sScrollBar4.Position);
end;

procedure TForm1.match5Click(Sender: TObject);
begin
  matchClick(4+sScrollBar4.Position);
end;

procedure TForm1.match6Click(Sender: TObject);
begin
  matchClick(5+sScrollBar4.Position);
end;

procedure TForm1.match7Click(Sender: TObject);
begin
  matchClick(6+sScrollBar4.Position);
end;

procedure TForm1.match8Click(Sender: TObject);
begin
  matchClick(7+sScrollBar4.Position);
end;

procedure TForm1.match9Click(Sender: TObject);
begin
  matchClick(8+sScrollBar4.Position);
end;

procedure TForm1.match10Click(Sender: TObject);
begin
  matchClick(9+sScrollBar4.Position);
end;

procedure TForm1.match11Click(Sender: TObject);
begin
  matchClick(10+sScrollBar4.Position);
end;

procedure TForm1.match12Click(Sender: TObject);
begin
  matchClick(11+sScrollBar4.Position);
end;

procedure TForm1.match13Click(Sender: TObject);
begin
  matchClick(12+sScrollBar4.Position);
end;

procedure TForm1.match14Click(Sender: TObject);
begin
  matchClick(13+sScrollBar4.Position);
end;

procedure TForm1.match15Click(Sender: TObject);
begin
  matchClick(14+sScrollBar4.Position);
end;

procedure TForm1.match16Click(Sender: TObject);
begin
  matchClick(15+sScrollBar4.Position);
end;

procedure TForm1.match17Click(Sender: TObject);
begin
  matchClick(16+sScrollBar4.Position);
end;

procedure TForm1.match18Click(Sender: TObject);
begin
  matchClick(17+sScrollBar4.Position);
end;

procedure TForm1.match19Click(Sender: TObject);
begin
  matchClick(18+sScrollBar4.Position);
end;

procedure TForm1.match20Click(Sender: TObject);
begin
  matchClick(19+sScrollBar4.Position);
end;

procedure TForm1.sButton27Click(Sender: TObject);
begin
  if please_wait_arvo=true then exit;

  if sLabelFX127.caption='' then exit;

  selectedGameType:=2;
  TCPClient1.Host:=sLabelFX127.caption;
  UDPClient1.Host:=sLabelFX127.caption;
  //TCPClient1.Port:=sLabelFX102.caption;
  //UDPClient1.Port:=sLabelFX102.caption;
  nollaaSocket;
  perusNollauksia;
  TCPClient2.Close;
  TCPClient1.Open;

  please_wait(true);
end;

procedure TForm1.popup2_2Click(Sender: TObject);
begin

  if please_wait_arvo=true then exit;
  please_wait(true);

  sComboBox22.ItemIndex:=0;
  sComboBox5.ItemIndex:=0;
  PlayerStatMuisti.gametype:=2;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(2,2,1,255);


end;

procedure TForm1.sComboBox5Change(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;  
  pyydaPlayerStats(gametype,PlayerStatMuisti.stat,1,nat);

end;

procedure TForm1.sScrollBar5Change(Sender: TObject);
begin
  asetaPlayerStats;
end;

procedure TForm1.sComboBox22Change(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,PlayerStatMuisti.stat,1,nat);

end;

procedure TForm1.sLabelFX278Click(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,1,1,nat);

end;

procedure TForm1.sLabelFX279Click(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,2,1,nat);

end;

procedure TForm1.sLabelFX280Click(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,3,1,nat);

end;

procedure TForm1.sLabelFX281Click(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,4,1,nat);

end;

procedure TForm1.sLabelFX302Click(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,5,1,nat);

end;

procedure TForm1.sLabelFX323Click(Sender: TObject);
var nat,gametype: integer;
begin
  if please_wait_arvo=true then exit;
  please_wait(true);

  nat:=nation_str_to_int(sCombobox5.text);
  if nat=-1 then nat:=255;

  if sCombobox22.ItemIndex=0 then gametype:=2
  else if sCombobox22.ItemIndex=1 then gametype:=1
  else gametype:=2;

  PlayerStatMuisti.gameType:=gametype;
  playerStatsAlkuNollaukset;
  pyydaPlayerStats(gametype,6,1,nat);

end;

procedure TForm1.popup2_3Click(Sender: TObject);
var
  str: string;
  strArray,strArray2: TStringArray;
  i: integer;
begin

  teamStatsAlkuNollaukset;

  str:=getphp('http://62.212.67.219/nsp/rankings.php');

  strArray:=explode('#',str);
  strArray2:=nil;

  for i:=0 to high(strArray) do begin
    strArray2:=explode(';',strArray[i]);
    RankingList.id[i]:=strtoint(strArray2[0]);
    RankingList.name[i]:=strArray2[1];
    RankingList.rank[i]:=strtoint(strArray2[2]);
  end;

  form1.sScrollBar6.Max:=30;
  asetaTeamStats;

  panel_visiblet(18);

  please_wait(false);
   {
  if please_wait_arvo=true then exit;
  please_wait(true);

  teamStatsAlkuNollaukset;
  pyydaTeamStats(1);  }   
end;

procedure TForm1.sScrollBar6Change(Sender: TObject);
begin
  asetaTeamStats;
end;

procedure TForm1.career_team10Click(Sender: TObject);
begin
  search(career_team10.Caption,'Team');
end;

procedure TForm1.career_team9Click(Sender: TObject);
begin
  search(career_team9.Caption,'Team');
end;

procedure TForm1.career_team8Click(Sender: TObject);
begin
  search(career_team8.Caption,'Team');
end;

procedure TForm1.career_team7Click(Sender: TObject);
begin
  search(career_team7.Caption,'Team');
end;

procedure TForm1.career_team6Click(Sender: TObject);
begin
  search(career_team6.Caption,'Team');
end;

procedure TForm1.career_team5Click(Sender: TObject);
begin
  search(career_team5.Caption,'Team');
end;

procedure TForm1.career_team4Click(Sender: TObject);
begin
  search(career_team4.Caption,'Team');
end;

procedure TForm1.career_team3Click(Sender: TObject);
begin
  search(career_team3.Caption,'Team');
end;

procedure TForm1.career_team2Click(Sender: TObject);
begin
  search(career_team2.Caption,'Team');
end;

procedure TForm1.career_team1Click(Sender: TObject);
begin
  search(career_team1.Caption,'Team');
end;

procedure TForm1.tsteam1Click(Sender: TObject);
begin
  Search(tsteam1.caption,'Team');
end;

procedure TForm1.tsteam2Click(Sender: TObject);
begin
  Search(tsteam2.caption,'Team');
end;

procedure TForm1.tsteam3Click(Sender: TObject);
begin
  Search(tsteam3.caption,'Team');
end;

procedure TForm1.tsteam4Click(Sender: TObject);
begin
  Search(tsteam4.caption,'Team');
end;

procedure TForm1.tsteam5Click(Sender: TObject);
begin
  Search(tsteam5.caption,'Team');
end;

procedure TForm1.tsteam6Click(Sender: TObject);
begin
  Search(tsteam6.caption,'Team');
end;

procedure TForm1.tsteam7Click(Sender: TObject);
begin
  Search(tsteam7.caption,'Team');
end;

procedure TForm1.tsteam8Click(Sender: TObject);
begin
  Search(tsteam8.caption,'Team');
end;

procedure TForm1.tsteam9Click(Sender: TObject);
begin
  Search(tsteam9.caption,'Team');
end;

procedure TForm1.tsteam10Click(Sender: TObject);
begin
  Search(tsteam10.caption,'Team');
end;

procedure TForm1.tsteam11Click(Sender: TObject);
begin
  Search(tsteam11.caption,'Team');
end;

procedure TForm1.tsteam12Click(Sender: TObject);
begin
  Search(tsteam12.caption,'Team');
end;

procedure TForm1.tsteam13Click(Sender: TObject);
begin
  Search(tsteam13.caption,'Team');
end;

procedure TForm1.tsteam14Click(Sender: TObject);
begin
  Search(tsteam14.caption,'Team');
end;

procedure TForm1.tsteam15Click(Sender: TObject);
begin
  Search(tsteam15.caption,'Team');
end;

procedure TForm1.tsteam16Click(Sender: TObject);
begin
  Search(tsteam16.caption,'Team');
end;

procedure TForm1.tsteam17Click(Sender: TObject);
begin
  Search(tsteam17.caption,'Team');
end;

procedure TForm1.tsteam18Click(Sender: TObject);
begin
  Search(tsteam18.caption,'Team');
end;

procedure TForm1.tsteam19Click(Sender: TObject);
begin
  Search(tsteam19.caption,'Team');
end;

procedure TForm1.tsteam20Click(Sender: TObject);
begin
  Search(tsteam20.caption,'Team');
end;

procedure TForm1.psname1Click(Sender: TObject);
begin
  Search(psname1.caption,'Player');
end;

procedure TForm1.psname2Click(Sender: TObject);
begin
  Search(psname2.caption,'Player');
end;

procedure TForm1.psname3Click(Sender: TObject);
begin
  Search(psname3.caption,'Player');
end;

procedure TForm1.psname4Click(Sender: TObject);
begin
  Search(psname4.caption,'Player');
end;

procedure TForm1.psname5Click(Sender: TObject);
begin
  Search(psname5.caption,'Player');
end;

procedure TForm1.psname6Click(Sender: TObject);
begin
  Search(psname6.caption,'Player');
end;

procedure TForm1.psname7Click(Sender: TObject);
begin
  Search(psname7.caption,'Player');
end;

procedure TForm1.psname8Click(Sender: TObject);
begin
  Search(psname8.caption,'Player');
end;

procedure TForm1.psname9Click(Sender: TObject);
begin
  Search(psname9.caption,'Player');
end;

procedure TForm1.psname10Click(Sender: TObject);
begin
  Search(psname10.caption,'Player');
end;

procedure TForm1.psname11Click(Sender: TObject);
begin
  Search(psname11.caption,'Player');
end;

procedure TForm1.psname12Click(Sender: TObject);
begin
  Search(psname12.caption,'Player');
end;

procedure TForm1.psname13Click(Sender: TObject);
begin
  Search(psname13.caption,'Player');
end;

procedure TForm1.psname14Click(Sender: TObject);
begin
  Search(psname14.caption,'Player');
end;

procedure TForm1.psname15Click(Sender: TObject);
begin
  Search(psname15.caption,'Player');
end;

procedure TForm1.psname16Click(Sender: TObject);
begin
  Search(psname16.caption,'Player');
end;

procedure TForm1.psname17Click(Sender: TObject);
begin
  Search(psname17.caption,'Player');
end;

procedure TForm1.psname18Click(Sender: TObject);
begin
  Search(psname18.caption,'Player');
end;

procedure TForm1.psname19Click(Sender: TObject);
begin
  Search(psname19.caption,'Player');
end;

procedure TForm1.psname20Click(Sender: TObject);
begin
  Search(psname20.caption,'Player');
end;

procedure TForm1.psteam1Click(Sender: TObject);
begin
  Search(psteam1.caption,'Team');
end;

procedure TForm1.psteam2Click(Sender: TObject);
begin
  Search(psteam2.caption,'Team');
end;

procedure TForm1.psteam3Click(Sender: TObject);
begin
  Search(psteam3.caption,'Team');
end;

procedure TForm1.psteam4Click(Sender: TObject);
begin
  Search(psteam4.caption,'Team');
end;

procedure TForm1.psteam5Click(Sender: TObject);
begin
  Search(psteam5.caption,'Team');
end;

procedure TForm1.psteam6Click(Sender: TObject);
begin
  Search(psteam6.caption,'Team');
end;

procedure TForm1.psteam7Click(Sender: TObject);
begin
  Search(psteam7.caption,'Team');
end;

procedure TForm1.psteam8Click(Sender: TObject);
begin
  Search(psteam8.caption,'Team');
end;

procedure TForm1.psteam9Click(Sender: TObject);
begin
  Search(psteam9.caption,'Team');
end;

procedure TForm1.psteam10Click(Sender: TObject);
begin
  Search(psteam10.caption,'Team');
end;

procedure TForm1.psteam11Click(Sender: TObject);
begin
  Search(psteam11.caption,'Team');
end;

procedure TForm1.psteam12Click(Sender: TObject);
begin
  Search(psteam12.caption,'Team');
end;

procedure TForm1.psteam13Click(Sender: TObject);
begin
  Search(psteam13.caption,'Team');
end;

procedure TForm1.psteam14Click(Sender: TObject);
begin
  Search(psteam14.caption,'Team');
end;

procedure TForm1.psteam15Click(Sender: TObject);
begin
  Search(psteam15.caption,'Team');
end;

procedure TForm1.psteam16Click(Sender: TObject);
begin
  Search(psteam16.caption,'Team');
end;

procedure TForm1.psteam17Click(Sender: TObject);
begin
  Search(psteam17.caption,'Team');
end;

procedure TForm1.psteam18Click(Sender: TObject);
begin
  Search(psteam18.caption,'Team');
end;

procedure TForm1.psteam19Click(Sender: TObject);
begin
  Search(psteam19.caption,'Team');
end;

procedure TForm1.psteam20Click(Sender: TObject);
begin
  Search(psteam20.caption,'Team');
end;

procedure TForm1.sComboBox7Change(Sender: TObject);
begin
  if (sComboBox7.ItemIndex>5) or (sComboBox7.ItemIndex<0) then exit;
  oma_hair:=sComboBox7.ItemIndex;

end;

procedure TForm1.sEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Integer(key)=VK_RETURN then
    sButton5Click(nil);
end;

procedure TForm1.sEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Integer(key)=VK_RETURN then
    sButton5Click(nil);
end;

procedure TForm1.sEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Integer(key)=VK_RETURN then
    sButton5Click(nil);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
type
  TTimeoutMSGtoGameserver = record
    mtype: word;
    mtype2: word;
  end;
var
  TimeoutMSGtoGameserver: TTimeoutMSGtoGameserver;
begin
  //INTERVALIN ON OLTAVA 10SEK
  if not (form3.Visible) then exit;
           
//******************************************************************************
//clientin timeout message gameservulle

  TimeoutMSGtoGameserver.mtype:=5003;
  TimeoutMSGtoGameserver.mtype2:=5003;
  TCPClient1.WriteBuffer(@TimeoutMSGtoGameserver,sizeof(TimeoutMSGtoGameserver));

//******************************************************************************


end;

procedure TForm1.sButton3Click(Sender: TObject);
begin
  if replyName='' then exit;
  sComboBox1.ItemIndex:=0;
  sComboBox2.Text:=replyName;
  sComboBox2.Visible:=true;
end;

procedure TForm1.latestNameH1Click(Sender: TObject);
begin           
  search(latestNameH1.Caption,'Team');
end;

procedure TForm1.latestNameH2Click(Sender: TObject);
begin
  search(latestNameH2.Caption,'Team');
end;

procedure TForm1.latestNameH3Click(Sender: TObject);
begin
  search(latestNameH3.Caption,'Team');
end;

procedure TForm1.latestNameH4Click(Sender: TObject);
begin
  search(latestNameH4.Caption,'Team');
end;

procedure TForm1.latestNameH5Click(Sender: TObject);
begin
  search(latestNameH5.Caption,'Team');
end;

procedure TForm1.latestNameH6Click(Sender: TObject);
begin
  search(latestNameH6.Caption,'Team');
end;

procedure TForm1.latestNameH7Click(Sender: TObject);
begin
  search(latestNameH7.Caption,'Team');
end;

procedure TForm1.latestNameH8Click(Sender: TObject);
begin
  search(latestNameH8.Caption,'Team');
end;

procedure TForm1.latestNameH9Click(Sender: TObject);
begin
  search(latestNameH9.Caption,'Team');
end;

procedure TForm1.latestNameH10Click(Sender: TObject);
begin
  search(latestNameH10.Caption,'Team');
end;

procedure TForm1.latestNameA1Click(Sender: TObject);
begin
  search(latestNameA1.Caption,'Team');
end;

procedure TForm1.latestNameA2Click(Sender: TObject);
begin
  search(latestNameA2.Caption,'Team');
end;

procedure TForm1.latestNameA3Click(Sender: TObject);
begin
  search(latestNameA3.Caption,'Team');
end;

procedure TForm1.latestNameA4Click(Sender: TObject);
begin
  search(latestNameA4.Caption,'Team');
end;

procedure TForm1.latestNameA5Click(Sender: TObject);
begin
  search(latestNameA5.Caption,'Team');
end;

procedure TForm1.latestNameA6Click(Sender: TObject);
begin
  search(latestNameA6.Caption,'Team');
end;

procedure TForm1.latestNameA7Click(Sender: TObject);
begin
  search(latestNameA7.Caption,'Team');
end;

procedure TForm1.latestNameA8Click(Sender: TObject);
begin
  search(latestNameA8.Caption,'Team');
end;

procedure TForm1.latestNameA9Click(Sender: TObject);
begin
  search(latestNameA9.Caption,'Team');
end;

procedure TForm1.latestNameA10Click(Sender: TObject);
begin
  search(latestNameA10.Caption,'Team');
end;

procedure TForm1.sButton33Click(Sender: TObject);
begin
  sLabelFX131.Caption:='Vip time remaining in days: '+inttostr(trunc(vipMinsRemaining/60/24));
  panel_Visiblet(19);
end;

procedure TForm1.sEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sButton34Click(Sender: TObject);
type
  TVipTransfer = record
    mtype: word;
    mtype2: word;
    ra: word;
    pID: integer;
    vipTime: integer;
    username: string[15];
  end;
var
  VipTransfer: TVipTransfer;
  pID: integer;
  vipTime: integer;
begin

  if please_wait_arvo=true then exit;
  if sEdit15.text='' then exit;
  if sEdit14.text='' then begin
    srichedit1.Lines.Add('Insert vip index and username');
    exit;
  end;
  if sEdit18.text='' then begin
    srichedit1.Lines.Add('Insert vip index and username');
    exit;
  end;

  pID:=strtoint(sEdit14.text);
  vipTime:=strtoint(sEdit15.text);
  if pID<1 then exit;
  if vipTime<1 then exit;
  if pID=oma_lobbyindex then exit;
  if vipTime*60*24>vipMinsRemaining then exit;

  please_Wait(true);   
  VipTransfer.mtype:=5008;
  VipTransfer.mtype2:=5008;
  VipTransfer.ra:=random(55000)+1;
  VipTransfer.pID:=pID;
  VipTransfer.vipTime:=vipTime;
  VipTransfer.username:=sEdit18.text;
  TCPClient2.WriteBuffer(@VipTransfer,sizeof(VipTransfer));

end;

procedure TForm1.sCheckBox3Click(Sender: TObject);
begin
  Settings.sounds:=sCheckBox3.Checked;
  tallennaSettings;

  If (Settings.sounds) and (Settings.soundsLoaded=false) then begin
    BASS_Init(-1, 44100, 0, handle, nil);
    load_sounds;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  spam:=false;
end;

procedure TForm1.sCheckBox6Click(Sender: TObject);
begin
  Settings.slowMoving:=sCheckBox6.Checked;
  tallennaSettings;
end;

procedure TForm1.kick1Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname1.Caption);
end;

procedure TForm1.kick2Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname2.Caption);
end;

procedure TForm1.kick3Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname3.Caption);
end;

procedure TForm1.kick4Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname4.Caption);
end;

procedure TForm1.kick5Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname5.Caption);
end;

procedure TForm1.kick6Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname6.Caption);
end;

procedure TForm1.kick7Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname7.Caption);
end;

procedure TForm1.kick8Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname8.Caption);
end;

procedure TForm1.kick9Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname9.Caption);
end;

procedure TForm1.kick10Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname10.Caption);
end;

procedure TForm1.kick11Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname11.Caption);
end;

procedure TForm1.kick12Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname12.Caption);
end;

procedure TForm1.kick13Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname13.Caption);
end;

procedure TForm1.kick14Click(Sender: TObject);
var
  p_buttonSelected : Integer;
begin
  p_buttonSelected:=MessageDlg('Are you sure',mtWarning, mbOKCancel, 0);

  if p_buttonSelected=mrOK then kickPlayer(plname14.Caption);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  if form3.Visible then exit;
  if not (sPanel16.Visible) then exit;

  Livescores1Click(nil);
end;

procedure TForm1.sButton37Click(Sender: TObject);
begin
  if please_wait_arvo=true then exit;
  if vipMinsRemaining<=0 then begin
    vainVipit;
    exit;
  end;

  paivita_character;
end;

procedure TForm1.sButton38Click(Sender: TObject);
begin
  sComboBox1.ItemIndex:=0;
  sComboBox2.Text:=sLabelFX8.Caption;
  sComboBox2.Visible:=true;
end;

procedure TForm1.sButton39Click(Sender: TObject);
begin
  sComboBox1.ItemIndex:=2;
  sComboBox2.Text:=sLabelFX1.Caption;
  sComboBox2.Visible:=true;
end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin

  if (sRadioButton1.Checked=false) and (sRadioButton2.Checked=false) then begin
    showmessage('Please select length of vip');
    exit;
  end;

  sBitBtn1.Visible:=false;
  sBitBtn2.Visible:=false;
  sBitBtn3.Visible:=false;
  sButton40.Visible:=true;
  sLabelFX156.Visible:=false;
  WebBrowser1.Left:=148;
  sRadioButton1.Visible:=false;
  sRadioButton2.Visible:=false;

  AddInfoMessage('AFTER PAYMENT, YOU NEED TO CLICK GREEN BUTTON TO COMPLETE PAYMENT');
                        
  if sRadioButton1.Checked then
    WebBrowser1.Navigate('http://daopay.com/payment/?appcode=53483&prodcode=1&vipID='+inttostr(oma_lobbyindex));

  if sRadioButton2.Checked then
    WebBrowser1.Navigate('http://daopay.com/payment/?appcode=53483&prodcode=3&vipID='+inttostr(oma_lobbyindex));
end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
begin
  sBitBtn1.Visible:=false;
  sBitBtn2.Visible:=false;
  sBitBtn3.Visible:=false;
  sButton40.Visible:=true;
  WebBrowser1.Left:=148;
  sRadioButton1.Visible:=false;
  sRadioButton2.Visible:=false;
  //WebBrowser1.Navigate('http://pp.kpnet.fi/kmje/paypal.html');
  WebBrowser1.Navigate('http://62.212.67.219/nsp/paypal.php?vipID='+inttostr(oma_lobbyindex));
end;

procedure TForm1.sButton40Click(Sender: TObject);
begin
  sBitBtn1.Visible:=true;
  sBitBtn2.Visible:=true;
  sBitBtn3.Visible:=true;
  sLabelFX156.Visible:=true;
  sRadioButton1.Visible:=true;
  sRadioButton2.Visible:=true;
  WebBrowser1.Left:=936;
  sButton40.Visible:=false;
end;

procedure TForm1.sEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sButton4Click(Sender: TObject);
type
  TJoinWithoutInvite = record
    mtype: word;
    mtype2: word;
    ra: word;
    tID: word;
  end;
var
  JoinWithoutInvite: TJoinWithoutInvite;
begin
  //jos oma joukkue n‰ytˆll‰, exit
  //jos pelaajalla on jo joukkue, exit
  if oma_team>0 then exit;
  if oma_team=strtoint(sLabelFX17.Caption) then exit;
  if please_wait_arvo then exit;

  please_Wait(true);

  JoinWithoutInvite.mtype:=9006;
  JoinWithoutInvite.mtype2:=9006;
  JoinWithoutInvite.ra:=random(55000)+1;
  JoinWithoutInvite.tID:=strtoint(sLabelFX17.Caption);
  TCPClient2.WriteBuffer(@JoinWithoutInvite,sizeof(JoinWithoutInvite));



  //serverill‰
  //clinun pit‰‰ toimittaa joukkueen id
  //jos joukkueella ei allow p‰‰ll‰, exit
  //tarkasta mahtuuko jengiin
  //jos joukkueella oli jo invite pelaajalle, poistetaan se
end;

procedure TForm1.sButton429Click(Sender: TObject);
begin
  sBitBtn1.Visible:=true;
  sBitBtn2.Visible:=true;
  sBitBtn3.Visible:=true;
  sLabelFX156.Visible:=true;
  WebBrowser1.Left:=936;
  sButton40.Visible:=false;
  sRadioButton1.Visible:=true;
  sRadioButton2.Visible:=true;
  //sLabelFX157.Caption:='Vip index '+inttostr(oma_lobbyindex);    raatraat

  panel_visiblet(21);
end;

procedure TForm1.sComboBox3Change(Sender: TObject);
begin
  if sComboBox3.ItemIndex<0 then exit;
  if sComboBox3.ItemIndex>1 then exit;
  Settings.control:=sComboBox3.ItemIndex;
  controlVisiblet;
  tallennaSettings;
end;

procedure TForm1.sButton15Click(Sender: TObject);
begin
  Form5.AssignKey(1);
  Form5.ShowModal;
end;

procedure TForm1.sButton16Click(Sender: TObject);
begin
  Form5.AssignKey(2);
  Form5.ShowModal;
end;

procedure TForm1.sButton17Click(Sender: TObject);
begin
  Form5.AssignKey(3);
  Form5.ShowModal;
end;

procedure TForm1.sButton18Click(Sender: TObject);
begin
  Form5.AssignKey(4);
  Form5.ShowModal;
end;

procedure TForm1.sButton19Click(Sender: TObject);
begin
  Form5.AssignKey(5);
  Form5.ShowModal;
end;

procedure TForm1.sButton20Click(Sender: TObject);
begin                     
  Form5.AssignKey(6);
  Form5.ShowModal;
end;

procedure TForm1.sButton21Click(Sender: TObject);
begin
  Form5.AssignKey(7);
  Form5.ShowModal;
end;

procedure TForm1.sButton23Click(Sender: TObject);
begin
  Form5.AssignKey(8);
  Form5.ShowModal;
end;

procedure TForm1.sButton22Click(Sender: TObject);
begin
  panel_Visiblet(22);
end;

procedure TForm1.sButton36Click(Sender: TObject);
type
  TChangeNick = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
    //code: string[15];
  end;
var
  ChangeNick: TChangeNick;
begin

  if vipMinsRemaining<=0 then begin
    vainVipit;
    exit;
  end;

  if please_wait_arvo=true then exit;

  if sEdit19.text='' then exit;
  //if sEdit17.text='' then begin
  //  AddInfoMessage('Please enter code');
  //  exit;
  //end;
  if sEdit19.text[1]=' ' then begin
    showmessage('Username may not start with space');
    exit;
  end;
  if sEdit19.text[length(form1.sEdit19.text)]=' ' then begin
    showmessage('Username may not end with space');
    exit;
  end;

  if tarkastetaan_ettei_invalid_kirjaimia(form1.sEdit19.text)=false then begin
    showmessage('Only following letters allowed: A-Z '' - _ @ .');
    exit;
  end;

  please_wait(true);
  ChangeNick.mtype:=9013;
  ChangeNick.mtype2:=9013;
  ChangeNick.ra:=random(55000)+1;
  ChangeNick.name:=sEdit19.text;
  //ChangeNick.code:=sEdit17.text;
  TCPClient2.WriteBuffer(@ChangeNick,sizeof(ChangeNick));

end;

procedure TForm1.sBitBtn3Click(Sender: TObject);
begin
  sBitBtn1.Visible:=false;
  sBitBtn2.Visible:=false;
  sBitBtn3.Visible:=false;
  sButton40.Visible:=true;
  WebBrowser1.Left:=148;
  sRadioButton1.Visible:=false;
  sRadioButton2.Visible:=false;
  WebBrowser1.Navigate('http://pp.kpnet.fi/kmje/euPayment.html');

end;

procedure TForm1.matchDet1Click(Sender: TObject);
begin
  pyydaMatchDetails(1);
end;

procedure TForm1.matchDet2Click(Sender: TObject);
begin
  pyydaMatchDetails(2);
end;

procedure TForm1.matchDet3Click(Sender: TObject);
begin
  pyydaMatchDetails(3);
end;

procedure TForm1.matchDet4Click(Sender: TObject);
begin
  pyydaMatchDetails(4);
end;

procedure TForm1.matchDet5Click(Sender: TObject);
begin
  pyydaMatchDetails(5);
end;

procedure TForm1.matchDet6Click(Sender: TObject);
begin
  pyydaMatchDetails(6);
end;

procedure TForm1.matchDet7Click(Sender: TObject);
begin
  pyydaMatchDetails(7);
end;

procedure TForm1.matchDet8Click(Sender: TObject);
begin
  pyydaMatchDetails(8);
end;

procedure TForm1.matchDet9Click(Sender: TObject);
begin
   pyydaMatchDetails(9);
end;

procedure TForm1.matchDet10Click(Sender: TObject);
begin
  pyydaMatchDetails(10);
end;

procedure TForm1.sButton45Click(Sender: TObject);
begin
  panel_visiblet(1);
end;

procedure TForm1.sButton46Click(Sender: TObject);
begin
  asetaMatchDetActionZones;
end;

procedure TForm1.sButton44Click(Sender: TObject);
begin
  asetaMatchDetOverview;
end;

procedure TForm1.sButton47Click(Sender: TObject);
begin
  asetaMatchDetPlayedStats(1);
end;

procedure TForm1.sButton48Click(Sender: TObject);
begin
  asetaMatchDetPlayedStats(2);
end;

procedure TForm1.sCheckBox8Click(Sender: TObject);
type
  TLFTMuutos = record
    mtype: word;
    mtype2: word;
    ra: word;
    LFT: boolean;
  end;
var
  LFTMuutos: TLFTMuutos;
begin

  if please_wait_arvo=true then exit;

  LFTMuutos.mtype:=240;
  LFTMuutos.mtype2:=240;
  LFTMuutos.ra:=random(55000)+1;
  LFTMuutos.LFT:=sCheckBox8.Checked;   
  TCPClient2.WriteBuffer(@LFTMuutos,sizeof(LFTMuutos));
  please_wait(true);

end;

procedure TForm1.sButton41Click(Sender: TObject);
{var
  str: string;
  uname: string;   }
begin
{
  uname:=StringReplace(oma_login_name, ' ', '+',[rfReplaceAll, rfIgnoreCase]);
                 
  str:=getphp('http://www.netsoccer2.com/nsp/sendPasswordCode.php?username='+uname+'&vipID='+inttostr(oma_lobbyindex)+'&soc='+inttostr(oma_socket));

  sRichedit1.Lines.Add(str);
  please_wait(false);       }

end;

procedure TForm1.sButton28Click(Sender: TObject);
type
  TPasswordChange = record
    mtype: word;
    mtype2: word;
    ra: word;
    password: string[15];
    code: string[15];
  end;
var
  PasswordChange: TPasswordChange;
begin

  if please_wait_arvo=true then exit;

  if sEdit16.text='' then exit;
  if sEdit17.text='' then begin
    AddInfoMessage('Please enter code');
    exit;
  end;

  please_wait(true);
  PasswordChange.mtype:=243;
  PasswordChange.mtype2:=243;
  PasswordChange.ra:=random(55000)+1;
  PasswordChange.password:=sEdit16.text;
  PasswordChange.code:=sEdit17.text;
  TCPClient2.WriteBuffer(@PasswordChange,sizeof(PasswordChange));

end;

procedure TForm1.sListBox4Click(Sender: TObject);
begin
  sCombobox1.ItemIndex:=0;
  sCombobox2.Text:=sListBox4.Items[sListBox4.ItemIndex];
  sCombobox2.Visible:=true;
end;

procedure TForm1.sEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sButton49Click(Sender: TObject);
type
  TAdvSearchPlayer = record
    mtype: word;
    mtype2: word;
    ra: word;
    nat: smallint;
    pos: byte;
    minMatch: integer;
    LFT: boolean;
    onlineToday: boolean;
    isWithoutTeam: boolean;
  end;
var
  AdvSearchPlayer: TAdvSearchPlayer;
begin
  if please_wait_arvo=true then exit;

  please_wait(true);
  AdvSearchPlayer.mtype:=9018;
  AdvSearchPlayer.mtype2:=9018;
  AdvSearchPlayer.ra:=random(55000)+1;

  if sCheckBox1.Checked then
    AdvSearchPlayer.nat:=nation_str_to_int(sComboBox6.Text)
  else
    AdvSearchPlayer.nat:=-1;

  AdvSearchPlayer.pos:=0;
  if sCheckBox11.Checked then begin
    if sComboBox9.Text='Defending' then AdvSearchPlayer.pos:=1;
    if sComboBox9.Text='Attacking' then AdvSearchPlayer.pos:=2;
  end;

  if (sCheckBox12.Checked) and not (sEdit20.text='') then
    AdvSearchPlayer.minMatch:=strtoint(sEdit20.text)
  else
    AdvSearchPlayer.minMatch:=0;

  AdvSearchPlayer.LFT:=sCheckBox2.Checked;
  AdvSearchPlayer.onlineToday:=sCheckBox10.Checked;
  AdvSearchPlayer.isWithoutTeam:=sCheckBox13.Checked;

  TCPClient2.WriteBuffer(@AdvSearchPlayer,sizeof(AdvSearchPlayer));

end;

procedure TForm1.sButton50Click(Sender: TObject);
type
  TAdvSearchTeam = record
    mtype: word;
    mtype2: word;
    ra: word;
    allowJoining: boolean;
    location: byte;
    activeToday: boolean;
  end;
var
  AdvSearchTeam: TAdvSearchTeam;
begin
  if please_wait_arvo=true then exit;

  please_wait(true);
  AdvSearchTeam.mtype:=9019;
  AdvSearchTeam.mtype2:=9019;
  AdvSearchTeam.ra:=random(55000)+1;

  AdvSearchTeam.allowJoining:=sCheckBox9.Checked;
  AdvSearchTeam.activeToday:=sCheckBox15.Checked;

  AdvSearchTeam.location:=0;
  if sCheckBox14.Checked then begin
    if sComboBox11.Text='Europe' then AdvSearchTeam.location:=1;
    if sComboBox11.Text='South america' then AdvSearchTeam.location:=2;
  end;

  TCPClient2.WriteBuffer(@AdvSearchTeam,sizeof(AdvSearchTeam));

end;

procedure TForm1.sEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then Key := #0;
end;

procedure TForm1.sButton51Click(Sender: TObject);
begin
  searchByIndex(1,sedit21.text);
end;

procedure TForm1.sButton52Click(Sender: TObject);
begin
  searchByIndex(2,sedit22.text);
end;

procedure TForm1.sButton53Click(Sender: TObject);
type
  TChangeNation = record
    mtype: word;
    mtype2: word;
    ra: word;
    nat: byte;
  end;
var
  ChangeNation: TChangeNation;
begin

  if please_wait_arvo then exit;
  ChangeNation.nat:=0;

  if sComboBox8.Text='England' then ChangeNation.nat:=1;
  if sComboBox8.Text='Scotland' then ChangeNation.nat:=2;
  if sComboBox8.Text='Wales' then ChangeNation.nat:=3;

  if ChangeNation.nat=0 then exit;

  please_wait(true);
  ChangeNation.mtype:=9022;
  ChangeNation.mtype2:=9022;
  ChangeNation.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@ChangeNation,sizeof(ChangeNation));

end;                                           

procedure TForm1.popup3_1Click(Sender: TObject);
begin
//mail
end;

procedure TForm1.popup3_2Click(Sender: TObject);
begin
  sCheckBox3.Checked:=settings.sounds;
  sCheckBox6.Checked:=settings.slowmoving;
  asetaTekstitControlNappeihin;
  controlVisiblet;
  panel_visiblet(7);
end;

procedure TForm1.popup3_3Click(Sender: TObject);
begin
  panel_visiblet(20);
end;

procedure TForm1.sButton8Click(Sender: TObject);
type
  TGameservereidenPyynto = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  GameservereidenPyynto: TGameservereidenPyynto;
begin

  if please_wait_arvo=true then exit;

  please_wait(true);

  GameservereidenPyynto.mtype:=9024;
  GameservereidenPyynto.mtype2:=9024;
  GameservereidenPyynto.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@GameservereidenPyynto,sizeof(GameservereidenPyynto));

end;

procedure TForm1.sTrackBar4Change(Sender: TObject);
begin
  sLabelFX190.Caption:=inttostr(sTrackBar4.position)+' vs '+inttostr(sTrackBar4.position);
end;

procedure TForm1.kit_imageb1Click(Sender: TObject);
begin
  if sCheckbox16.Checked=true then asun_varimuutosPrivateServer(1,1);
  if sCheckbox16.Checked=false then asun_varimuutosPrivateServer(2,1);
end;

procedure TForm1.kit_imageb2Click(Sender: TObject);
begin
  if sCheckbox17.Checked=true then asun_varimuutosPrivateServer(1,2);
  if sCheckbox17.Checked=false then asun_varimuutosPrivateServer(2,2);
end;

procedure TForm1.kit_imageb3Click(Sender: TObject);
begin
  asun_varimuutosPrivateServer(3,1);
end;

procedure TForm1.kit_imageb4Click(Sender: TObject);
begin
  asun_varimuutosPrivateServer(3,2);
end;

procedure TForm1.kit_imageb5Click(Sender: TObject);
begin
  asun_varimuutosPrivateServer(4,1);
end;

procedure TForm1.kit_imageb6Click(Sender: TObject);
begin
  asun_varimuutosPrivateServer(4,2);
end;

procedure TForm1.sTrackBar5Change(Sender: TObject);
begin
  PrivateServerSettings.shirt_style[1]:=sTrackBar5.Position;
  kit_colors_privateServer;
end;

procedure TForm1.sTrackBar6Change(Sender: TObject);
begin
  PrivateServerSettings.shirt_style[2]:=sTrackBar6.Position;
  kit_colors_privateServer;
end;

procedure TForm1.sButton55Click(Sender: TObject);
type
  TStartPrivateServer = record
    mtype: word;
    mtype2: word;
    ra: word;
    max_plrs: byte; //5-10 eli paljonko yhdell‰ puolella max
    host_server: string[20];
    teams: array [1..2] of string[20];
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2] of byte;
    password: string[15];
  end;
var
  StartPrivateServer: TStartPrivateServer;
  i,j,k: integer;
begin

  if please_wait_arvo=true then exit;
  if sComboBox19.text='' then exit;
  if sEdit23.text='' then exit;
  if sEdit24.text='' then exit;
  if sEdit25.text='' then begin
    AddInfoMessage('Insert password');
    exit;
  end;

  please_Wait(true);

  StartPrivateServer.mtype:=9025;
  StartPrivateServer.mtype2:=9025;
  StartPrivateServer.ra:=random(55000)+1;

  StartPrivateServer.max_plrs:=sTrackBar4.Position;
  StartPrivateServer.teams[1]:=sEdit23.text;
  StartPrivateServer.teams[2]:=sEdit24.text;
  StartPrivateServer.password:=sEdit25.text;
  StartPrivateServer.host_server:=sComboBox19.text;

  for i:=1 to 4 do
    for j:=1 to 3 do
      for k:=1 to 2 do
        StartPrivateServer.shirt_colors[i,j,k]:=PrivateServerSettings.shirt_colors[i,j,k];

  for i:=1 to 2 do
    StartPrivateServer.shirt_style[i]:=PrivateServerSettings.shirt_style[i];

  TCPClient2.WriteBuffer(@StartPrivateServer,sizeof(StartPrivateServer));

end;

procedure TForm1.sButton35Click(Sender: TObject);
begin
  panel_visiblet(26);
end;

procedure TForm1.sButton54Click(Sender: TObject);
begin
  saveFilterSettings;
  popup1_2Click(nil);
end;

procedure TForm1.sButton24Click(Sender: TObject);
begin
  if Kits_muistiin.valitut[1]=1 then Kits_muistiin.valitut[1]:=2
    else Kits_muistiin.valitut[1]:=1;

  aseta_challenge_kit_colors(Kits_muistiin.valitut[1],Kits_muistiin.valitut[2]);
end;

procedure TForm1.sButton26Click(Sender: TObject);
begin
  if Kits_muistiin.valitut[2]=1 then Kits_muistiin.valitut[2]:=2
    else Kits_muistiin.valitut[2]:=1;

  aseta_challenge_kit_colors(Kits_muistiin.valitut[1],Kits_muistiin.valitut[2]);
end;

procedure TForm1.sTrackBar3Change(Sender: TObject);
begin
  sLabelFX129.Caption:=inttostr(sTrackBar3.position)+' vs '+inttostr(sTrackBar3.position);
end;

procedure TForm1.trainingPlrNameH1Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH1.Caption);
end;

procedure TForm1.trainingPlrNameH2Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH2.Caption);
end;

procedure TForm1.trainingPlrNameH3Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH3.Caption);
end;

procedure TForm1.trainingPlrNameH4Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH4.Caption);
end;

procedure TForm1.trainingPlrNameH5Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH5.Caption);
end;

procedure TForm1.trainingPlrNameH6Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH6.Caption);
end;

procedure TForm1.trainingPlrNameH7Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH7.Caption);
end;

procedure TForm1.trainingPlrNameH8Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH8.Caption);
end;

procedure TForm1.trainingPlrNameH9Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH9.Caption);
end;

procedure TForm1.trainingPlrNameH10Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameH10.Caption);
end;

procedure TForm1.trainingPlrNameA1Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA1.Caption);
end;

procedure TForm1.trainingPlrNameA2Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA2.Caption);
end;

procedure TForm1.trainingPlrNameA3Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA3.Caption);
end;

procedure TForm1.trainingPlrNameA4Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA4.Caption);
end;

procedure TForm1.trainingPlrNameA5Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA5.Caption);
end;

procedure TForm1.trainingPlrNameA6Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA6.Caption);
end;

procedure TForm1.trainingPlrNameA7Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA7.Caption);
end;

procedure TForm1.trainingPlrNameA8Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA8.Caption);
end;

procedure TForm1.trainingPlrNameA9Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA9.Caption);
end;

procedure TForm1.trainingPlrNameA10Click(Sender: TObject);
begin
  pyyda_pelaajan_tiedot(trainingPlrNameA10.Caption);
end;

procedure TForm1.sButton588Click(Sender: TObject);
begin
  if please_wait_arvo=true then exit;

  if sLabelFX127.caption='' then exit;

  selectedGameType:=3;
  TCPClient1.Host:=sLabelFX127.caption;
  UDPClient2.Host:=sLabelFX127.caption;

  Ingame_data.omaPeliIndex:=0;
  Ingame_data.omaPeliTeamIndex:=0;

  nollaaSocket;
  perusNollauksia;
  TCPClient2.Close;
  TCPClient1.Open;

  please_wait(true);     

end;

end.


