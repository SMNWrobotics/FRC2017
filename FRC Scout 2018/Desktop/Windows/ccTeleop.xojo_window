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
      Top             =   400
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
      Height          =   112
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
      Top             =   422
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
         Enabled         =   False
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
         Enabled         =   False
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
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   772
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
         Top             =   340
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
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   772
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
         Top             =   372
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
         Left            =   772
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
         Top             =   404
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   75
      End
      Begin PushButton btnForceUsed
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
         Enabled         =   False
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
   Begin BevelButton btnPortalIntake
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Portal Intake"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   30
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   747
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   121
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   98
   End
   Begin Label Label27
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   41
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   578
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ALLIANCE POWER CUBE PILE"
      TextAlign       =   1
      TextColor       =   &c7F7F7F00
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   134
   End
   Begin Label Label28
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   41
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "PORTAL CUBES"
      TextAlign       =   1
      TextColor       =   &c7F7F7F00
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   219
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin Label Label29
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   41
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "PORTAL CUBES"
      TextAlign       =   1
      TextColor       =   &c7F7F7F00
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   11
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   73
   End
   Begin BevelButton btnLostCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Lost Cube"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   30
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   747
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   11
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   98
   End
   Begin BevelButton btnRandomCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Floor Cube"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   30
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   318
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   105
   End
   Begin BevelButton btnOpponentCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnOpponentCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   82
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnOpponentCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnOpponentCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   156
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnOpponentCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   192
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnOpponentCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   45
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   228
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnPortalCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   78
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   46
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnPortalCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   78
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   47
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   228
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnCubePile
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   632
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   48
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   132
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnYourCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   49
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnYourCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   50
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   82
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnYourCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   51
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnYourCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   156
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnYourCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   53
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   192
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnYourCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   1168441343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   54
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   228
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin BevelButton btnScale
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Scale"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   4
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   100
      HelpTag         =   ""
      Icon            =   1737799679
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   318
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   55
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   105
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin BevelButton btnOpponentSwitch
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Opp Sw"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   4
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   118
      HelpTag         =   ""
      Icon            =   1921912831
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   153
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   56
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   64
   End
   Begin BevelButton btnYourSwitch
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Switch"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   4
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   118
      HelpTag         =   ""
      Icon            =   1921912831
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   556
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   57
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   64
   End
   Begin BevelButton btnMirror
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   32
      HelpTag         =   ""
      Icon            =   190867455
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   632
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   58
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   -56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   32
   End
   Begin Timer tmrCycle
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   0
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin BevelButton btnRobotCube
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   "Robot Cube"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   30
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   747
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   59
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   230
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   98
   End
   Begin Label lblPortalCubeCount
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
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   60
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   55
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblOpponentSwitchCount
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
      Left            =   172
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   61
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   237
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblScaleCount
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
      Left            =   361
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   62
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   237
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblYourSwitchCount
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
      Left            =   578
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   63
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   237
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblLostCubeCount
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
      Left            =   792
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   64
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblPortalIntakeCount
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
      Left            =   792
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   65
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   156
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblFloorCubesCount
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
      Left            =   361
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   66
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblOurCubesCount
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
      Left            =   641
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   67
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   168
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblOpponentCubes
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
      TabIndex        =   68
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   144
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   37
   End
   Begin Label lblYourCubes
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
      Left            =   476
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   69
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   144
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   32
   End
   Begin Label Label30
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
      TabIndex        =   70
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Cycle Count:"
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
   Begin Label Label31
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
      TabIndex        =   71
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Total Time:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   494
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label32
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
      TabIndex        =   72
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Average Time:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label lblCycleCount
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   73
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   468
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   49
   End
   Begin Label lblTotalTime
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   74
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   494
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   49
   End
   Begin Label lblAverageTime
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   75
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   49
   End
   Begin Label lblCycleTime
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   193
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   76
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   494
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   49
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub CheckBoostButton()
		  if chkBoostOne.value and chkBoostTwo.value and chkBoostThree.value then
		    btnBoostUsed.Enabled = true
		  else
		    btnBoostUsed.Enabled = false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckForceButton()
		  if chkForceOne.value and chkForceTwo.value and chkForceThree.value then
		    btnForceUsed.Enabled = true
		  else
		    btnForceUsed.Enabled = false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckLevitateButton()
		  if chkLevitateOne.value and chkLevitateTwo.value and chkLevitateThree.value then
		    btnLevitateUsed.Enabled = true
		  else
		    btnLevitateUsed.Enabled = false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CycleStart()
		  if tmrCycle.mode = timer.ModeMultiple then 
		    //In a cycle and we've not dropped one off.
		    return
		  end
		  
		  iCycleCount = iCycleCount + 1
		  
		  lblCycleCount.text = str(iCycleCount)
		  
		  
		  iCurrentTIme = 0
		  tmrCycle.mode = timer.ModeMultiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CycleStop()
		  tmrCycle.mode = timer.ModeOff
		  
		  iCycleTotalTime = iCycleTotalTime + iCurrentTIme
		  
		  lblTotalTime.text = str(iCycleTotalTime)
		  
		  dCycleAverageTime = iCycleTotalTime/iCycleCount
		  
		  lblAverageTime.text = Format(dCycleAverageTime, "###.0")
		End Sub
	#tag EndMethod

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
		  oNotes = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "TeleopNotes")
		  
		  
		  oCountOpponentSwitch = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountOpponentSwitch")
		  oCountPortalIntake = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountPortalIntake")
		  oCountScale = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountScale")
		  oCountYourSwitch = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountYourSwitch")
		  oCubesFromFloor = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromFloor")
		  oCubesFromOpponent = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromOpponent")
		  oCubesFromPortal = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromPortal")
		  oCubesFromPyramid = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromPyramid")
		  oCubesFromYou = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromYou")
		  oCubesLost = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesLost")
		  oCubeFromRobot = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubeFromRobot")
		  
		  
		  oCycleCount = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CycleCount")
		  oCycleTotalTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CycleTotalTime")
		  oCycleAverageTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CycleAverageTime")
		  
		  iCycleCount = oCycleCount.sValue.val
		  lblCycleCount.text = str(iCycleCount)
		  
		  iCycleTotalTime = oCycleTotalTime.sValue.val
		  lblTotalTime.text = str(iCycleTotalTime)
		  
		  dCycleAverageTime = oCycleAverageTime.svalue.val
		  lblAverageTime.text = Format(dCycleAverageTime, "###.0")
		  
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
		  
		  oBoostOne.sValue = chkBoostone.value.ToString
		  oBoostTwo.sValue = chkBoostTwo.value.ToString
		  oBoostThree.sValue = chkBoostThree.value.ToString
		  oBoostUsedCount.svalue = lblBoostCountAtUse.text
		  oBoostUsedTime.svalue = lblBoostTime.text
		  
		  oForceOne.sValue = chkForceone.value.ToString
		  oForceTwo.sValue = chkForceTwo.value.ToString
		  oForceThree.sValue = chkForceThree.value.ToString
		  oForceUsedCount.svalue = lblForceCountAtUse.text
		  oForceUsedTime.svalue = lblForceTime.text
		  
		  oLevitateOne.sValue = chkLevitateone.value.ToString
		  oLevitateTwo.sValue = chkLevitateTwo.value.ToString
		  oLevitateThree.sValue = chkLevitateThree.value.ToString
		  oLevitateUsedTime.svalue = lblLevitateTime.text
		  
		  oParked.sValue = chkParked.value.ToString
		  oClimbingAttemptedRung.sValue = chkClimbingAttemptedRung.value.ToString
		  oClimbingAttemptedRobot.sValue = chkClimbingAttemptedRobot.value.ToString
		  oClimbingMade.sValue = chkClimbingMade.value.ToString
		  
		  
		  oCycleCount.sValue = iCycleCount.ToString
		  oCycleTotalTime.sValue = iCycleTotalTime.ToString
		  oCycleAverageTime.svalue = Format(dCycleAverageTime, "###.0")
		  
		  
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
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bTiming As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		dCycleAverageTime As Double
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
		iCurrentTIme As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iCycleCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iCycleTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iCycleTotalTime As Integer
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
		oCountOpponentSwitch As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountPortalIntake As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountScale As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountYourSwitch As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubeFromRobot As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromFloor As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromOpponent As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromPortal As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromPyramid As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromYou As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesLost As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCycleAverageTime As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCycleCount As Data.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCycleTotalTime As Data.T_Game
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


#tag EndWindowCode

#tag Events chkLevitateThree
	#tag Event
		Sub Action()
		  CheckLevitateButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkLevitateTwo
	#tag Event
		Sub Action()
		  chkLevitateThree.Enabled = me.value
		  
		  CheckLevitateButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkLevitateOne
	#tag Event
		Sub Action()
		  chkLevitateTwo.Enabled = me.value
		  
		  CheckLevitateButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkForceThree
	#tag Event
		Sub Action()
		  CheckForceButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkForceTwo
	#tag Event
		Sub Action()
		  chkForceThree.Enabled = me.value
		  
		  CheckForceButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkForceOne
	#tag Event
		Sub Action()
		  chkForceTwo.Enabled = me.value
		  
		  CheckForceButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkBoostThree
	#tag Event
		Sub Action()
		  CheckBoostButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkBoostTwo
	#tag Event
		Sub Action()
		  chkBoostThree.Enabled = me.value
		  
		  CheckBoostButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkBoostOne
	#tag Event
		Sub Action()
		  chkBoostTwo.Enabled = me.value
		  
		  CheckBoostButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnForceUsed
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
#tag Events btnPortalIntake
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCountPortalIntake.sValue.val
		  iCnt = iCnt + 1
		  oCountPortalIntake.sValue  = iCnt.ToString
		  
		  lblPortalIntakeCount.text = oCountPortalIntake.sValue
		  
		  CycleStop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLostCube
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCubesLost.sValue.val
		  iCnt = iCnt + 1
		  oCubesLost.sValue  = iCnt.ToString
		  
		  lblLostCubeCount.text = oCubesLost.sValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRandomCube
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCubesFromFloor.sValue.val
		  iCnt = iCnt + 1
		  oCubesFromFloor.sValue  = iCnt.ToString
		  
		  lblFloorCubesCount.text = oCubesFromFloor.sValue
		  
		  CycleStart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOpponentCube
	#tag Event
		Sub Action(index as Integer)
		  dim iCnt as integer = oCubesFromOpponent.sValue.val
		  iCnt = iCnt + 1
		  oCubesFromOpponent.sValue  = iCnt.ToString
		  
		  lblOpponentCubes.text = oCubesFromOpponent.sValue
		  
		  btnOpponentCube(index).Visible = false
		  
		  CycleStart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnPortalCube
	#tag Event
		Sub Action(index as Integer)
		  dim iCnt as integer = oCountPortalIntake.sValue.val
		  iCnt = iCnt + 1
		  oCountPortalIntake.sValue  = iCnt.ToString
		  
		  lblPortalCubeCount.text = oCountPortalIntake.sValue
		  
		  CycleStart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCubePile
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCubesFromPyramid.sValue.val
		  iCnt = iCnt + 1
		  icnt = Min(iCnt, 10)
		  oCubesFromPyramid.sValue  = iCnt.ToString
		  
		  lblOurCubesCount.text = oCubesFromPyramid.sValue
		  
		  CycleStart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnYourCube
	#tag Event
		Sub Action(index as Integer)
		  dim iCnt as integer = oCubesFromYou.sValue.val
		  iCnt = iCnt + 1
		  oCubesFromYou.sValue  = iCnt.ToString
		  
		  lblYourCubes.text = oCubesFromYou.sValue
		  
		  btnYourCube(index).Visible = false
		  
		  CycleStart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnScale
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCountScale.sValue.val
		  iCnt = iCnt + 1
		  oCountScale.sValue  = iCnt.ToString
		  
		  lblScaleCount.text = oCountScale.sValue
		  
		  CycleStop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOpponentSwitch
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCountOpponentSwitch.sValue.val
		  iCnt = iCnt + 1
		  oCountOpponentSwitch.sValue  = iCnt.ToString
		  
		  lblOpponentSwitchCount.text = oCountOpponentSwitch.sValue
		  
		  CycleStop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnYourSwitch
	#tag Event
		Sub Action()
		  dim iCnt as integer = oCountYourSwitch.sValue.val
		  iCnt = iCnt + 1
		  oCountYourSwitch.sValue  = iCnt.ToString
		  
		  lblYourSwitchCount.text = oCountYourSwitch.sValue
		  
		  CycleStop
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrCycle
	#tag Event
		Sub Action()
		  iCurrentTIme = iCurrentTIme + 1
		  
		  lblCycleTime.text = str(iCurrentTIme)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRobotCube
	#tag Event
		Sub Action()
		  if me.value then
		    oCubeFromRobot.sValue  = "1"
		  else
		    oCubeFromRobot.sValue  = "0"
		  end
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
		Name="dCycleAverageTime"
		Group="Behavior"
		Type="Double"
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
		Name="iCurrentTIme"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iCycleCount"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iCycleTime"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iCycleTotalTime"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
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
