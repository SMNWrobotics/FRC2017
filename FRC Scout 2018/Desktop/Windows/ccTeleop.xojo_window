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
   Height          =   546
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
      Left            =   265
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
      TabStop         =   True
      Text            =   "Notes:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   425
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
      Height          =   97
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   265
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
      Top             =   449
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
      Left            =   20
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
      TabStop         =   True
      Text            =   "Driver Skill:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   436
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
      Left            =   132
      ListIndex       =   1
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
      Top             =   435
      Underline       =   False
      Visible         =   True
      Width           =   121
   End
   Begin GroupBox GroupBox5
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Parking/Climbing"
      Enabled         =   True
      Height          =   148
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   272
      Underline       =   False
      Visible         =   True
      Width           =   217
      Begin CheckBox chkClimbingMade
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Accomplished"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         Italic          =   False
         Left            =   31
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
         Top             =   390
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   174
      End
      Begin CheckBox chkClimbingAttemptedRung
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Attempted Rung"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         Italic          =   False
         Left            =   31
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
         Top             =   328
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   186
      End
      Begin CheckBox chkClimbingAttemptedRobot
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Attempted From Robot"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   359
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   174
      End
      Begin CheckBox chkParked
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Parked"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   296
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   186
      End
   End
   Begin GroupBox GroupBox6
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Defense"
      Enabled         =   True
      Height          =   121
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   265
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
      Top             =   272
      Underline       =   False
      Visible         =   True
      Width           =   217
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
         Left            =   274
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
         Top             =   300
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
         Left            =   300
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
         Top             =   365
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
         Left            =   274
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
         TabStop         =   True
         Text            =   "Effectiveness:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   333
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin Label Label23
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Pilot Skill:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   468
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PopupMenu pmPilotSkill
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Not Applicable\nBad\nOkay\nGood"
      Italic          =   False
      Left            =   132
      ListIndex       =   2
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   467
      Underline       =   False
      Visible         =   True
      Width           =   121
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Power Ups"
      Enabled         =   True
      Height          =   262
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   503
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   272
      Underline       =   False
      Visible         =   True
      Width           =   364
      Begin Label Label21
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
         Left            =   516
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Levitate"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   74
      End
      Begin Label Label22
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
         Left            =   639
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
         TabStop         =   True
         Text            =   "Force"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   74
      End
      Begin Label Label24
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
         Left            =   762
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
         TabStop         =   True
         Text            =   "Boost"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   308
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   74
      End
      Begin CheckBox chkLevitateThree
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Three"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   523
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   340
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkLevitateTwo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Two"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   523
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   372
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkLevitateOne
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "One"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   523
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   404
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkForceThree
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Three"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   651
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   340
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkForceTwo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Two"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   651
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   372
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkForceOne
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "One"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   651
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   404
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkBoostThree
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Three"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   774
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   332
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkBoostTwo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Two"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   774
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   364
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin CheckBox chkBoostOne
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "One"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   774
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   396
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin PushButton bttnForceUsed
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Used"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   639
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   447
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnBoostUsed
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Used"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   762
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   447
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton btnLevitateUsed
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Used"
         Default         =   False
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   523
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   447
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label lblLevitateTime
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
         Left            =   516
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0:00"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   479
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin Label lblForceTime
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
         Left            =   639
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0:00"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   479
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin Label lblBoostTime
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
         Left            =   762
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0:00"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   479
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin Label lblForceCountAtUse
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
         Left            =   639
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   504
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin Label lblBoostCountAtUse
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
         Left            =   762
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   504
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Load(sMatchKey as string, sTeamNumber as String)
		  msMatchKey = sMatchKey
		  msTeamNumber = sTeamNumber
		  
		  oBoostOne = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostOne")
		  oBoostTwo = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostTwo")
		  oBoostThree = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostThree")
		  oBoostUsedCount = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostUsedCount")
		  oBoostUsedTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostUsedTime")
		  
		  oForceOne = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceOne")
		  oForceTwo = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceTwo")
		  oForceThree = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceThree")
		  oForceUsedCount = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceUsedCount")
		  oForceUsedTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ForceUsedTime")
		  
		  oLevitateOne = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateOne")
		  oLevitateTwo = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateTwo")
		  oLevitateThree = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LevitateThree")
		  oLevitateUsedTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "BoostUsedTime")
		  
		  oParked = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "Parked")
		  oClimbingAttemptedRobot = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingAttemptedRobot")
		  oClimbingAttemptedRung = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingAttemptedRung")
		  oClimbingMade = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingMade")
		  oDefenseEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefenseEffectiveness")
		  oDefensePlayed = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefensePlayed")
		  oDriverSkill = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DriverSkill")
		  oPilotSkill = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "PilotSkill")
		  
		  oNotes = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "TeleopNotes")
		  
		  chkBoostone.value = cBool(oBoostOne.sValue)
		  chkBoostTwo.value = cBool(oBoostTwo.sValue)
		  chkBoostThree.value = cBool(oBoostThree.sValue)
		  lblBoostCountAtUse.text = oBoostUsedCount.svalue
		  lblBoostTime.text = oBoostUsedTime.svalue
		  
		  chkForceone.value = cBool(oForceOne.sValue)
		  chkForceTwo.value = cBool(oForceTwo.sValue)
		  chkForceThree.value = cBool(oForceThree.sValue)
		  lblForceCountAtUse.text = oForceUsedCount.svalue
		  lblForceTime.text = oForceUsedTime.svalue
		  
		  chkLevitateone.value = cBool(oLevitateOne.sValue)
		  chkLevitateTwo.value = cBool(oLevitateTwo.sValue)
		  chkLevitateThree.value = cBool(oLevitateThree.sValue)
		  lblLevitateTime.text = oLevitateUsedTime.svalue
		  
		  chkParked.value = cBool(oParked.sValue)
		  chkClimbingAttemptedRung.value = cBool(oClimbingAttemptedRung.sValue)
		  chkClimbingAttemptedRobot.value = cBool(oClimbingAttemptedRobot.sValue)
		  chkClimbingMade.value = cBool(oClimbingMade.sValue)
		  
		  pmDefenseEffectiveness.SetText = oDefenseEffectiveness.svalue
		  chkDefensePlayed.value = cBool(oDefensePlayed.sValue)
		  pmDriverSkill.SetText = oDriverSkill.sValue
		  txtNotes.text = oNotes.sValue
		  pmPilotSkill.SetText = oPilotSkill.sValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  oParked.svalue = str(chkParked.value)
		  oClimbingAttemptedRung.svalue = str(chkClimbingAttemptedRung.value)
		  oClimbingAttemptedRobot.svalue = str(chkClimbingAttemptedRobot.value)
		  oClimbingMade.sValue = str(chkClimbingMade.value )
		  oDefenseEffectiveness.svalue = pmDefenseEffectiveness.text
		  oDefensePlayed.sValue = str(chkDefensePlayed.value)
		  oDriverSkill.sValue = pmDriverSkill.text
		  oNotes.sValue = txtNotes.text
		  oPilotSkill.sValue = pmPilotSkill.Text
		  
		  
		  oBoostOne.save
		  oBoostTwo.save
		  oBoostThree.save
		  oBoostUsedCount.save
		  oBoostUsedTime.save
		  
		  oForceOne.save
		  oForceTwo.save
		  oForceThree.save
		  oForceUsedCount.save
		  oForceUsedTime.save
		  
		  oLevitateOne.save
		  oLevitateTwo.save
		  oLevitateThree.save
		  oLevitateUsedTime.save
		  
		  
		  oBoostOne.save
		  oBoostTwo.save
		  oBoostThree.save
		  oBoostUsedCount.save
		  oBoostUsedTime.save
		  
		  oForceOne.save
		  oForceTwo.save
		  oForceThree.save
		  oForceUsedCount.save
		  oForceUsedTime.save
		  
		  oLevitateOne.save
		  oLevitateTwo.save
		  oLevitateThree.save
		  oLevitateUsedTime.save
		  oParked.save
		  oClimbingAttemptedRung.save
		  oClimbingAttemptedRobot.save
		  oClimbingMade.save
		  oDefenseEffectiveness.save
		  oDefensePlayed.save
		  oDriverSkill.save
		  oNotes.save
		  oPilotSkill.save
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
		oBoostOne As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostThree As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostTwo As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostUsedCount As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oBoostUsedTime As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingAttemptedRobot As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingAttemptedRung As Data.T_Game
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
		oForceOne As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceThree As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceTwo As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceUsedCount As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oForceUsedTime As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateOne As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateThree As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateTwo As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oLevitateUsedTime As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oNotes As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oParked As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oPilotSkill As Data.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events bttnForceUsed
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBoostUsed
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLevitateUsed
	#tag Event
		Sub Action()
		  
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
