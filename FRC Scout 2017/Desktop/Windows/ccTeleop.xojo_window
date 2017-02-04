#tag Window
Begin ContainerControl ccTeleop
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   406
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   872
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "High Goals"
      Enabled         =   True
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   138
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin Label Label10
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "Cycles"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Slider sldHighGoalPercentage
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   23
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Left            =   123
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TickStyle       =   "2"
         Top             =   199
         Value           =   0
         Visible         =   True
         Width           =   414
      End
      Begin Label Label12
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         Text            =   "Percentage"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   199
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label lblHighGoalPercentage
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   542
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "0"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   199
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   29
      End
      Begin CNumbersOnly txtHighGoalCycles
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   123
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin BevelButton btnHighGoalAdd
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "+"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   185
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin BevelButton btnHighGoalSub
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "-"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   216
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   164
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin PopupMenu pmHighGoalEffectiveness
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   "\nBad\nOkay\nGood"
         Italic          =   False
         Left            =   394
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   163
         Underline       =   False
         Visible         =   True
         Width           =   108
      End
      Begin Label Label21
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   291
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         Text            =   "Effectiveness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   165
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin GroupBox GroupBox3
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Low Goals"
      Enabled         =   True
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   240
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin Label Label15
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "Cycles"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   266
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Slider sldLowGoalPercentage
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   23
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Left            =   123
         LineStep        =   1
         LiveScroll      =   True
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TickStyle       =   "2"
         Top             =   301
         Value           =   0
         Visible         =   True
         Width           =   414
      End
      Begin Label Label16
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         Text            =   "Percentage"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   301
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label lblLowGoalPercentage
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   542
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "0"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   301
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   29
      End
      Begin Label Label22
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   291
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         Text            =   "Effectiveness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   267
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PopupMenu pmLowGoalEffectiveness
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         InitialValue    =   "\nBad\nOkay\nGood"
         Italic          =   False
         Left            =   394
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   265
         Underline       =   False
         Visible         =   True
         Width           =   108
      End
      Begin BevelButton btnLowGoalSub
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "-"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   216
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin BevelButton btnLowGoalAdd
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "+"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   185
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin CNumbersOnly txtLowGoalCycles
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   123
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
   End
   Begin Label Label19
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   626
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Notes:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   124
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextArea txtNotes
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   230
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   626
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   156
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   226
   End
   Begin Label Label20
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   626
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   "Driver Skill:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   92
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PopupMenu pmDriverSkill
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Bad\nOkay\nGood"
      Italic          =   False
      Left            =   738
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   91
      Underline       =   False
      Visible         =   True
      Width           =   108
   End
   Begin GroupBox GroupBox4
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Gears"
      Enabled         =   True
      Height          =   128
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin CNumbersOnly txtGearsMade
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   119
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin CNumbersOnly txtGearsAttempted
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   119
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   32
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin Label Label4
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         Text            =   "Made"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   57
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label Label3
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   27
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         Text            =   "Acquired"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   True
         Caption         =   "Acquire/Complete Cycle Time"
         Enabled         =   True
         Height          =   103
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   254
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   24
         Underline       =   False
         Visible         =   True
         Width           =   317
         Begin BevelButton btnStartStop
            AcceptFocus     =   True
            AutoDeactivate  =   True
            BackColor       =   &c00000000
            Bevel           =   0
            Bold            =   False
            ButtonType      =   0
            Caption         =   "Start"
            CaptionAlign    =   3
            CaptionDelta    =   0
            CaptionPlacement=   1
            Enabled         =   True
            HasBackColor    =   False
            HasMenu         =   0
            Height          =   60
            HelpTag         =   ""
            Icon            =   0
            IconAlign       =   0
            IconDX          =   0
            IconDY          =   0
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   274
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MenuValue       =   0
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   42
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   60
         End
         Begin Label lblGearAttempts1
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   346
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   0
            Text            =   "Attempts:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   42
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin Label lblGearTotalTime1
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   346
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   0
            Text            =   "Total Time:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   63
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin Label lblGearAvgTime1
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   346
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   0
            Text            =   "Avg Time:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   82
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin Label lblGearAttempts
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   419
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   0
            Text            =   " "
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   42
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   55
         End
         Begin Label lblGearTotalTime
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   419
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   0
            Text            =   " "
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   63
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   55
         End
         Begin Label lblGearAvgTime
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   419
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   0
            Text            =   " "
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   82
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   55
         End
         Begin Label lblGearAvgTime2
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   346
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   0
            Text            =   "Current:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   102
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
         Begin Label lblCurrentTime
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   419
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   0
            Text            =   " "
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   102
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   55
         End
      End
      Begin BevelButton btnGearsAcquiredSub
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "-"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   205
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   32
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin BevelButton btnGearsAcquiredAdd
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "+"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   174
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   32
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin BevelButton btnGearsMadeAdd
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "+"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   174
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
      Begin BevelButton btnGearsMadeSub
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "-"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   ""
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   205
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuValue       =   0
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   56
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   28
      End
   End
   Begin GroupBox GroupBox5
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Climbing"
      Enabled         =   True
      Height          =   59
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   613
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   239
      Begin CheckBox chkClimbingMade
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Made"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         Italic          =   False
         Left            =   745
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
      Begin CheckBox chkClimbingAttempted
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Attempted"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         Italic          =   False
         Left            =   626
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin GroupBox GroupBox6
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Defense"
      Enabled         =   True
      Height          =   59
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin CheckBox chkDefensePlayed
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Played Defense"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox6"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   370
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   134
      End
      Begin PopupMenu pmDefenseEffectiveness
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox6"
         InitialValue    =   "Bad\nOkay\nGood"
         Italic          =   False
         Left            =   348
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   370
         Underline       =   False
         Visible         =   True
         Width           =   108
      End
      Begin Label Label9
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox6"
         Italic          =   False
         Left            =   236
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         Text            =   "Effectiveness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   371
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin Timer Timer1
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load(sMatchKey as string, sTeamNumber as String)
		  msMatchKey = sMatchKey
		  msTeamNumber = sTeamNumber
		  
		  oClimbingAttempted = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingAttempted")
		  oClimbingMade = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingMade")
		  oDefenseEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefenseEffectiveness")
		  oDefensePlayed = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefensePlayed")
		  oDriverSkill = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DriverSkill")
		  
		  oGearCycleAverage = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearCycleAverage")
		  oGearCycleCount = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearCycleCount")
		  oGearCycleTotalTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearCycleTotalTime")
		  oGearsAcquired = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearsAcquired")
		  oGearsMade = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearsMade")
		  
		  oHighGoalCycles = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalCycles")
		  oHighGoalPercentage = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalPercentage")
		  oLowGoalCycles = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalCycles")
		  oLowGoalPercentage = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalPercentage")
		  oNotes = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "TeleopNotes")
		  
		  oHighGoalEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalEffectiveness")
		  oLowGoalEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalEffectiveness")
		  
		  chkClimbingAttempted.value = cBool(oClimbingAttempted.svalue)
		  chkClimbingMade.value = cBool(oClimbingMade.sValue)
		  pmDefenseEffectiveness.SetText = oDefenseEffectiveness.svalue
		  chkDefensePlayed.value = cBool(oDefensePlayed.sValue)
		  pmDriverSkill.SetText = oDriverSkill.sValue
		  lblGearAvgTime.text = oGearCycleAverage.sValue
		  lblGearAttempts.text = oGearCycleCount.sValue
		  lblGearTotalTime.text = oGearCycleTotalTime.sValue
		  txtGearsAttempted.text = oGearsAcquired.sValue
		  txtGearsMade.text = oGearsMade.sValue
		  txtHighGoalCycles.text = oHighGoalCycles.sValue
		  sldHighGoalPercentage.value = oHighGoalPercentage.svalue.Val
		  txtLowGoalCycles.text = oLowGoalCycles.sValue
		  sldLowGoalPercentage.value = oLowGoalPercentage.sValue.val
		  txtNotes.text = oNotes.sValue
		  pmHighGoalEffectiveness.SetText = oHighGoalEffectiveness.sValue
		  pmLowGoalEffectiveness.SetText = oLowGoalEffectiveness.sValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  oClimbingAttempted.svalue = str(chkClimbingAttempted.value)
		  oClimbingMade.sValue = str(chkClimbingMade.value )
		  oDefenseEffectiveness.svalue = pmDefenseEffectiveness.text
		  oDefensePlayed.sValue = str(chkDefensePlayed.value)
		  oDriverSkill.sValue = pmDriverSkill.text
		  oGearCycleAverage.sValue = lblGearAvgTime.text
		  oGearCycleCount.sValue = lblGearAttempts.text
		  oGearCycleTotalTime.sValue = lblGearTotalTime.text
		  oGearsAcquired.sValue = txtGearsAttempted.text
		  oGearsMade.sValue = txtGearsMade.text 
		  oHighGoalCycles.sValue = txtHighGoalCycles.text
		  oHighGoalPercentage.svalue = str(sldHighGoalPercentage.value)
		  oLowGoalCycles.sValue = txtLowGoalCycles.text
		  oLowGoalPercentage.sValue = str(sldLowGoalPercentage.value )
		  oNotes.sValue = txtNotes.text
		  oHighGoalEffectiveness.sValue = pmHighGoalEffectiveness.Text
		  oLowGoalEffectiveness.sValue = pmLowGoalEffectiveness.Text
		  
		  oClimbingAttempted.save
		  oClimbingMade.save
		  oDefenseEffectiveness.save
		  oDefensePlayed.save
		  oDriverSkill.save
		  oGearCycleAverage.save
		  oGearCycleCount.save
		  oGearCycleTotalTime.save
		  oGearsAcquired.save
		  oGearsMade.save
		  oHighGoalCycles.save
		  oHighGoalPercentage.save
		  oLowGoalCycles.save
		  oLowGoalPercentage.save
		  oNotes.save
		  oHighGoalEffectiveness.save
		  oLowGoalEffectiveness.save
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bTiming As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dtmStart As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		iAttempts As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iAverage As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iTotalTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			msMatchKey = sMatchKey
			msTeamNumber = sTeamNumber
			
			
		#tag EndNote
		msMatchKey As string
	#tag EndProperty

	#tag Property, Flags = &h0
		msTeamNumber As string
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingAttempted As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingMade As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oDefenseEffectiveness As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oDefensePlayed As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oDriverSkill As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearCycleAverage As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearCycleCount As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearCycleTotalTime As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearsAcquired As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oGearsMade As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oHighGoalCycles As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oHighGoalEffectiveness As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oHighGoalPercentage As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLowGoalCycles As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLowGoalEffectiveness As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLowGoalPercentage As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oNotes As Data.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events sldHighGoalPercentage
	#tag Event
		Sub ValueChanged()
		  lblHighGoalPercentage.text = str(me.value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnHighGoalAdd
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtHighGoalCycles.text.val
		  
		  iCurrentValue = iCurrentValue + 1
		  
		  txtHighGoalCycles.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnHighGoalSub
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtHighGoalCycles.text.val
		  
		  iCurrentValue = iCurrentValue - 1
		  
		  iCurrentValue = max(0, iCurrentValue)
		  
		  txtHighGoalCycles.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sldLowGoalPercentage
	#tag Event
		Sub ValueChanged()
		  lblLowGoalPercentage.text = str(me.value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLowGoalSub
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtLowGoalCycles.text.val
		  
		  iCurrentValue = iCurrentValue - 1
		  
		  iCurrentValue = max(0, iCurrentValue)
		  
		  txtLowGoalCycles.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLowGoalAdd
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtLowGoalCycles.text.val
		  
		  iCurrentValue = iCurrentValue + 1
		  
		  txtLowGoalCycles.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStartStop
	#tag Event
		Sub Action()
		  if bTiming then
		    //We are stopping
		    bTiming = false
		    dim d as new date
		    dim iDiff as integer = d.TotalSeconds - dtmStart.TotalSeconds
		    self.iTotalTime = self.iTotalTime + iDiff
		    self.iAverage = self.iTotalTime/self.iAttempts
		    me.caption = "Start"
		    
		    lblGearTotalTime.text = str(iTotalTime) + " s"
		    lblGearAttempts.text = str(iAttempts)
		    lblGearAvgTime.text = str(iAverage) + " s"
		  else
		    //We are starting the timer
		    self.iAttempts = self.iAttempts + 1
		    dtmStart = new date
		    bTiming = true
		    me.Caption = "Stop"
		    lblGearAttempts.text = str(iAttempts)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGearsAcquiredSub
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtGearsAttempted.text.val
		  
		  iCurrentValue = iCurrentValue - 1
		  
		  iCurrentValue = max(0, iCurrentValue)
		  
		  txtGearsAttempted.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGearsAcquiredAdd
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtGearsAttempted.text.val
		  
		  iCurrentValue = iCurrentValue + 1
		  
		  txtGearsAttempted.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGearsMadeAdd
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtGearsMade.text.val
		  
		  iCurrentValue = iCurrentValue + 1
		  
		  txtGearsMade.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGearsMadeSub
	#tag Event
		Sub Action()
		  dim iCurrentValue as integer = txtGearsMade.text.val
		  
		  iCurrentValue = iCurrentValue - 1
		  
		  iCurrentValue = max(0, iCurrentValue)
		  
		  txtGearsMade.text = str(iCurrentValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  if bTiming = false then 
		    lblCurrentTime.text = ""
		    return
		  end
		  
		  dim d as new date
		  dim iDiff as integer = d.TotalSeconds - dtmStart.TotalSeconds
		  
		  lblCurrentTime.text = str(iDiff) + " s"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="bTiming"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iAttempts"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iAverage"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iTotalTime"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="msMatchKey"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="msTeamNumber"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
