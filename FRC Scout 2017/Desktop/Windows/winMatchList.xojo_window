#tag Window
Begin WindowMenuWindow winMatchList
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   504031231
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "Match Listing"
   Visible         =   True
   Width           =   824
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   360
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Alll Matches\rUnScouted Teams"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   784
      Begin PopupMenu pmCompLevel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   98
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Underline       =   False
         Visible         =   True
         Width           =   215
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
         InitialParent   =   "TabPanel1"
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
         TabIndex        =   1
         TabPanelIndex   =   1
         Text            =   "Level"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   59
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   62
      End
      Begin AlternatingList lst
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   7
         ColumnsResizable=   False
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   283
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "ID	Blue 1	Blue 2	Blue 3	Red 1	Red 2	Red 3"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   90
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   784
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin AlternatingList lstUnscouted
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   False
         ColumnWidths    =   "30%, *"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   295
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Team Number	Team Name"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   2
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   65
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   340
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin AlternatingList lstMatches
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   False
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   267
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Match Number"
         Italic          =   False
         Left            =   429
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   2
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   93
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   292
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PopupMenu pmUnscoutedCompLevel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   429
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   58
         Underline       =   False
         Visible         =   True
         Width           =   292
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  List
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Display(oEvent as Data.t_event)
		  moEvent = oEvent
		  
		  List
		  ListUnscoutedTeams
		  
		  self.show
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Handle_New()
		  'dim w as new winGame
		  'w.Display -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Handle_Open()
		  if lst.ListIndex = -1 then return
		  
		  dim oMatch as Data.t_matches = lst.RowTag(lst.ListIndex)
		  
		  dim w as new winMatchView
		  w.display(oMatch)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub List()
		  lst.DeleteAllRows
		  
		  if moEvent = nil then return
		  
		  //Show all Matches
		  for each oRow as Data.t_matches in Data.t_matches.ListByEventTag(moEvent.skey, pmCompLevel.rowtag(pmCompLevel.listindex))
		    lst.addrow str(oRow.imatch_number), oRow.sBlue_Team_1, oRow.sBlue_Team_2, oRow.sblue_team_3, oRow.sRed_Team_1, oRow.sRed_Team_2, oRow.sRed_Team_3
		    
		    lst.RowTag(lst.LastIndex) = oRow
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ListMatches()
		  lstMatches.DeleteAllRows
		  
		  if lstUnscouted.ListIndex = -1 or pmUnscoutedCompLevel.ListIndex = -1 then return
		  
		  dim oTeam as Data.t_team = lstUnscouted.RowTag(lstUnscouted.ListIndex)
		  
		  dim sLevel as string = pmUnscoutedCompLevel.RowTag(pmUnscoutedCompLevel.ListIndex)
		  for each oMatch as Data.t_matches in oTeam.GetMatches(sLevel)
		    lstMatches.AddRow str(omatch.imatch_number)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ListUnscoutedTeams()
		  lstUnscouted.DeleteAllRows
		  
		  for each oteam as Data.T_Team in moEvent.UnscoutedTeams
		    lstUnscouted.addRow oTeam.sTeam_Number, oteam.sNickName
		    
		    lstUnscouted.RowTag(lstUnscouted.LastIndex) = oTeam
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		moEvent As Data.t_event
	#tag EndProperty


#tag EndWindowCode

#tag Events pmCompLevel
	#tag Event
		Sub Change()
		  List
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.DeleteAllRows
		  
		  me.addRowAndTag "Qualifier Match", "qm"
		  me.addRowAndTag "Quarter Finals", "qf"
		  me.addRowAndTag "Semi-Finals", "sf"
		  me.addRowAndTag "Finals", "f"
		  
		  me.ListIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst
	#tag Event
		Sub DoubleClick()
		  Handle_Open
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  if row > me.ListCount-1 then
		    return false
		  end
		  
		  dim bModified as boolean
		  dim oMatches as Data.t_matches = me.RowTag(row)
		  
		  //Check to see if we have any games for this match
		  dim sKey as string = oMatches.skey
		  
		  if oMatches.GameCount = 0 then
		    'g.Italic = true
		    g.ForeColor = &c7F7F7F00
		    
		  else
		    if column > 0 and column < 7 then
		      
		      dim sTeamKey as string = me.cell(row, column)
		      
		      dim sTeamNumber as string = sTeamKey.Replace("frc", "")
		      if Data.t_game.TeamFoundForMatch(sKey, sTeamNumber) then
		        'g.Bold = true
		        g.ForeColor = &c00000000
		      else
		        'g.Italic = true
		        g.ForeColor = &c7F7F7F00
		      end
		      
		    end
		  end
		  
		  
		  dim s as string = me.cell(row, column)
		  g.DrawString s, x, y, g.Width, true
		  
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstUnscouted
	#tag Event
		Sub Change()
		  if me.ListIndex = -1 then
		    lstMatches.Visible = false
		  else
		    lstMatches.Visible =true
		  end
		  
		  ListMatches
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmUnscoutedCompLevel
	#tag Event
		Sub Change()
		  ListMatches
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.DeleteAllRows
		  
		  me.addRowAndTag "Qualifier Match", "qm"
		  me.addRowAndTag "Quarter Finals", "qf"
		  me.addRowAndTag "Semi-Finals", "sf"
		  me.addRowAndTag "Finals", "f"
		  
		  me.ListIndex = 0
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
		Name="IsZoomed"
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
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
		Name="OldHeight"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldLeft"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldTop"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldWidth"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="sName"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
