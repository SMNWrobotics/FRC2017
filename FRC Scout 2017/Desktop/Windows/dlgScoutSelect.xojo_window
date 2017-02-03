#tag Window
Begin Window dlgScoutSelect
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   328
   ImplicitInstance=   False
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Choose Match"
   Visible         =   True
   Width           =   600
   Begin PopupMenu pmMatch
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   154
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
      Top             =   53
      Underline       =   False
      Visible         =   True
      Width           =   292
   End
   Begin PopupMenu pmAlliance
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Blue\nRed"
      Italic          =   False
      Left            =   154
      ListIndex       =   -1
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
      Top             =   86
      Underline       =   False
      Visible         =   True
      Width           =   138
   End
   Begin PopupMenu pmTeam
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   154
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
      Top             =   118
      Underline       =   False
      Visible         =   True
      Width           =   292
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
      Left            =   20
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
      Text            =   "Match"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   True
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
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Alliance"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   87
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label3
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
      Text            =   "Team Number"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   119
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   True
      Caption         =   "Scout Information"
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   165
      Underline       =   False
      Visible         =   True
      Width           =   560
      Begin Label Label4
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
         Left            =   32
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
         Text            =   "Scout Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   232
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   203
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
         Top             =   231
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   289
      End
      Begin PopupMenu pmScout
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   203
         ListIndex       =   0
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
         Top             =   191
         Underline       =   False
         Visible         =   True
         Width           =   292
      End
      Begin Label Label5
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
         Left            =   32
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
         Text            =   "Scout Team Number"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
   End
   Begin PopupMenu pmCompLevel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   154
      ListIndex       =   0
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
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   292
   End
   Begin Label Label6
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
      Text            =   "Level"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin ccOKCancel ccOKCancel1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Enabled         =   True
      EraseBackground =   False
      HasBackColor    =   False
      Height          =   27
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   408
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   281
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   172
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Display(oEvent as Data.t_event)
		  moEvent = oEvent
		  
		  LoadScoutTeams
		  
		  if iLastLevel <= pmCompLevel.ListCount-1 then
		    pmCompLevel.ListIndex = iLastLevel
		  end
		  
		  self.ShowModal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadMatches()
		  pmMatch.DeleteAllRows
		  
		  dim sCompLevel as string = pmCompLevel.RowTag(pmCompLevel.ListIndex)
		  
		  for each oMatch as Data.t_matches in Data.t_matches.ListByEventTag(moEvent.skey, sCompLevel)
		    
		    pmMatch.AddRow str(oMatch.imatch_number)
		    
		    pmMatch.RowTag(pmMatch.ListCount-1) = oMatch
		    
		  next
		  
		  pmMatch.ListIndex = iLastMatch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadScoutTeams()
		  pmScout.DeleteAllRows
		  dim iCount as integer
		  
		  for each oTeam as Data.t_team in moEvent.GetTeams
		    pmScout.addRowAndTag oTeam.sTeam_Number, oTeam
		    
		    if preferences.StringValue("LastScoutTeam") = oTeam.sTeam_Number then
		      pmScout.ListIndex = iCount
		    end
		    
		    iCount = iCount + 1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadTeams()
		  pmTeam.DeleteAllRows
		  
		  if pmMatch.ListIndex = -1 then return
		  
		  dim oMatch as Data.t_matches = pmMatch.RowTag(pmMatch.ListIndex)
		  
		  select case pmAlliance.text
		  case "Blue"
		    pmTeam.AddRow oMatch.sBlue_Team_1
		    pmTeam.AddRow oMatch.sBlue_Team_2
		    pmTeam.AddRow oMatch.sblue_team_3
		  Case "Red"
		    pmTeam.AddRow oMatch.sRed_Team_1
		    pmTeam.AddRow oMatch.sRed_Team_2
		    pmTeam.AddRow oMatch.sRed_team_3
		  end
		  
		  if iLastAlliancePosition <> -1 then
		    pmTeam.ListIndex = iLastAlliancePosition
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Validate() As boolean
		  if pmCompLevel.ListIndex = -1 or _
		    pmMatch.ListIndex = -1 or _
		    pmAlliance.ListIndex  = -1 or _
		    pmTeam.ListIndex = -1 then
		    
		    msgbox "Validation Error" + EndOfLine + "You must fill in all match data."
		    return false
		  end
		  
		  if pmScout.ListIndex = -1 OR txtScoutName.text.trim = "" then
		    msgbox "Validation Error" + EndOfLine + "You must fill in all scout data."
		    return false
		  end
		  
		  //Do we already have a game for this event/team?
		  //Match Data
		  dim oMatch as Data.t_matches = pmMatch.RowTag(pmMatch.ListIndex)
		  dim oTeam as Data.t_team = Data.t_team.FindByKey(pmTeam.text)
		  
		  if Data.t_game.TeamFoundForMatchAndTeam(oMatch.sKey, oTeam.sTeam_Number) then
		    dim iRes as integer
		    
		    iRes = Alert(AlertTypes.kCaution, "Data Already Exists for this Team and Match." , "Do you really want to edit this data?", "Cancel", "Edit", "")
		    if iRes = 1 then
		      return false
		    end
		  end
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private moEvent As Data.t_event
	#tag EndProperty


#tag EndWindowCode

#tag Events pmMatch
	#tag Event
		Sub Change()
		  pmAlliance.Enabled =  me.ListIndex <> -1
		  
		  pmAlliance.ListIndex = iLastAlliance
		  
		  iLastMatch = me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmAlliance
	#tag Event
		Sub Change()
		  LoadTeams
		  
		  pmTeam.Enabled = me.ListIndex <> -1
		  
		  iLastAlliance = me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmTeam
	#tag Event
		Sub Change()
		  iLastAlliancePosition = me.ListIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtScoutName
	#tag Event
		Sub Open()
		  me.Enabled = false
		  
		  me.text = Preferences.StringValue("LastScoutName")
		  
		  me.Enabled = true
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  if me.Enabled = false then return
		  
		  Preferences.StringValue("LastScoutName") = me.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmScout
	#tag Event
		Sub Change()
		  preferences.StringValue("LastScoutTeam") = me.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmCompLevel
	#tag Event
		Sub Change()
		  pmMatch.Enabled = me.ListIndex <> -1
		  
		  LoadMatches
		  
		  iLastLevel = me.ListIndex
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.DeleteAllRows
		  
		  me.addRowAndTag "Qualifier Match", "qm"
		  me.addRowAndTag "Quarter Finals", "qf"
		  me.addRowAndTag "Semi-Finals", "sf"
		  me.addRowAndTag "Finals", "f"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ccOKCancel1
	#tag Event
		Sub CancelClicked()
		  self.close
		End Sub
	#tag EndEvent
	#tag Event
		Sub OKClicked()
		  if validate = false then return
		  
		  dim oNewGame as new Data.t_game
		  
		  //Match Data
		  dim oMatch as Data.t_matches = pmMatch.RowTag(pmMatch.ListIndex)
		  oNewGame.sMatchKey = oMatch.skey
		  
		  oNewGame.sTeamNumber = pmTeam.Text
		  dim oTeam as Data.t_team = Data.t_team.FindByKey(pmTeam.Text)
		  oNewGame.sTeamNumber = oTeam.sTeam_Number
		  
		  dim sAllianceColor as string = pmAlliance.text
		  
		  
		  //Scout Data
		  oNewGame.sscoutName = txtScoutName.text.trim
		  
		  dim w as new winGame
		  w.display oMatch, oTeam
		  
		  self.close
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
