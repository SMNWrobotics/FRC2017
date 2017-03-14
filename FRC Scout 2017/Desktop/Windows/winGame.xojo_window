#tag Window
Begin Window winGame
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   604
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Match Edit"
   Visible         =   True
   Width           =   930
   Begin TextField txtScoutName
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
      Italic          =   False
      Left            =   568
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
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
      Top             =   562
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   240
   End
   Begin PushButton btnSave
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   830
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   563
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label Label1
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
      Left            =   465
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Scout Name:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   563
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label2
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   27
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
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
      Text            =   "Team #:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin Label txtTeamNumber
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   29
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   74
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
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   82
   End
   Begin Label Label6
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   27
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   168
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
      Text            =   "Round:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   62
   End
   Begin Label txtRound
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   29
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   242
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
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   124
   End
   Begin Label Label7
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   27
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   382
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
      Text            =   "Match:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   59
   End
   Begin Label txtMatch
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   29
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   443
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
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   63
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   450
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Autonomous\rTeleop"
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   100
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   901
      Begin ccAutonomous ccAutonomous1
         AcceptFocus     =   False
         AcceptTabs      =   True
         AutoDeactivate  =   True
         BackColor       =   &cFFFFFF00
         Backdrop        =   0
         Enabled         =   True
         EraseBackground =   True
         HasBackColor    =   False
         Height          =   382
         HelpTag         =   ""
         InitialParent   =   "TabPanel1"
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         msMatchKey      =   ""
         msTeamNumber    =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   138
         Transparent     =   True
         UseFocusRing    =   False
         Visible         =   True
         Width           =   704
      End
      Begin ccTeleop ccTeleop1
         AcceptFocus     =   False
         AcceptTabs      =   True
         AutoDeactivate  =   True
         BackColor       =   &cFFFFFF00
         Backdrop        =   0
         bTiming         =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackColor    =   False
         Height          =   406
         HelpTag         =   ""
         iAttempts       =   0
         iAverage        =   0
         InitialParent   =   "TabPanel1"
         iTotalTime      =   0
         Left            =   18
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         msMatchKey      =   ""
         msTeamNumber    =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   138
         Transparent     =   True
         UseFocusRing    =   False
         Visible         =   True
         Width           =   872
      End
   End
   Begin Label Label8
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
      Left            =   190
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      Text            =   "Scout Team:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   563
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin Label lblScoutTeamNumber
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
      Left            =   288
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   "*"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   563
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin Canvas cvsRobotPic
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   92
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   592
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   8
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   318
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Clear()
		  txtScoutName.text = ""
		  txtTeamNumber.text = ""
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Display(oMatch as Data.T_Matches, oTeam as Data.T_Team, sAllianceColor as String)
		  moMatch = oMatch
		  moTeam = oTeam
		  
		  lblScoutTeamNumber.text = preferences.StringValue("LastScoutTeam")
		  txtScoutName.text = Preferences.StringValue("LastScoutName")
		  
		  self.show
		  
		  Handle_Load
		  
		  btnSave.Enabled = True
		  
		  If sAllianceColor = "Red" Then
		    Self.BackColor = &cFDCED000
		  Else
		    Self.BackColor = &cD0D6FE00
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Handle_Load()
		  if moTeam.sKey = moMatch.sBlue_Team_1 OR _ 
		    moTeam.sKey = moMatch.sBlue_Team_2 OR _
		    moTeam.sKey = moMatch.sBlue_Team_3 then
		    //Blue Alliance
		    me.BackColor = &cC8D9FF00
		  else
		    //Red Alliance
		    me.BackColor = &cFFCAC200
		  end
		  
		  self.title = "Match # " + str(moMatch.imatch_number) + "  Team: " + moTeam.sTeam_Number
		  
		  txtTeamNumber.text = moTeam.sTeam_Number
		  txtMatch.text = str(moMatch.imatch_number)
		  select case momatch.sComp_Level
		  case "qm"
		    txtRound.text = "Qualifier Match"
		  case "qf"
		    txtRound.text = "Quarter Finals"
		  case "sf"
		    txtRound.text = "Semi-Finals"
		  case "f"
		    txtRound.text = "Finals"
		  case else
		    break
		  end
		  
		  txtScoutName.text = Preferences.StringValue("LastScoutName", "")
		  
		  
		  ccAutonomous1.load moMatch.skey, moTeam.sTeam_Number
		  
		  ccTeleop1.load moMatch.skey, moTeam.sTeam_Number
		  
		  
		  dim oValue as Data.T_Design = Data.T_Design.LoadTeamValue(moTeam.sTeam_Number, "Robot Picture")
		  
		  If oValue.sValue <> "" Then
		    Dim sText As String = oValue.sValue 
		    
		    Dim mb As MemoryBlock = DecodeBase64(sText)
		    
		    pic = Picture.FromData(mb)
		    
		    cvsRobotPic.Invalidate(false)
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Handle_Save()
		  ccAutonomous1.save
		  ccTeleop1.save
		  
		  btnSave.Enabled = false
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Validate() As boolean
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		moMatch As Data.T_Matches
	#tag EndProperty

	#tag Property, Flags = &h0
		moTeam As Data.T_Team
	#tag EndProperty

	#tag Property, Flags = &h0
		pic As Picture
	#tag EndProperty


#tag EndWindowCode

#tag Events btnSave
	#tag Event
		Sub Action()
		  if validate = false then return
		  
		  Handle_Save
		  
		  Self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsRobotPic
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If pic = Nil Then Return
		  
		  Dim dRatio As Double
		  
		  dRatio = Min( g.Height/pic.Height, g.Width/pic.Width)
		  
		  g.DrawPicture pic, 0, 0, pic.Width * dRatio, pic.Height * dRatio, 0, 0, pic.Width, pic.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
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
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
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
