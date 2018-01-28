#tag Window
Begin WindowMenuWindow winReporting
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   678
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
   Title           =   "Reporting"
   Visible         =   True
   Width           =   1032
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   658
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
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Teams by Matches\rAll Teams"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   992
      Begin AlternatingList lstAutonomous
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   7
         ColumnsResizable=   False
         ColumnWidths    =   "25%"
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
         Height          =   172
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Autonomous	Blue 1	Blue 2	Blue 3	Red 1	Red 2	Red 3"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   974
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label Label7
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
         Left            =   360
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
         TabStop         =   True
         Text            =   "Match"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   39
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   62
      End
      Begin PopupMenu pmMatchNumber
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
         Left            =   426
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
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
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Level"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   39
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   62
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
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   106
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
         Underline       =   False
         Visible         =   True
         Width           =   215
      End
      Begin AlternatingList lstTeleop
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   7
         ColumnsResizable=   False
         ColumnWidths    =   "25%"
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
         Height          =   377
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Teleop	Blue 1	Blue 2	Blue 3	Red 1	Red 2	Red 3"
         Italic          =   False
         Left            =   27
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
         ShowDropIndicator=   False
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   266
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   974
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin WindowSplitter WindowSplitter1
         AutoDeactivate  =   True
         CarbonLiveMove  =   True
         CursorSmoothing =   True
         DockAfter       =   False
         DockAfterSize   =   40
         DockBefore      =   False
         DockBeforeSize  =   40
         DoubleClickAction=   0
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   29
         LinuxStyle      =   3
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacFailStyle    =   0
         MacStyle        =   0
         MinAfterArea    =   35
         MinBeforeArea   =   35
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   243
         Visible         =   True
         Width           =   974
         WinLiveMove     =   False
         WinStyle        =   0
      End
      Begin LIstbox lstAll
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   10
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   2
         GridLinesVertical=   2
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   569
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   28
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   79
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   971
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PushButton btnSelectAutoFields
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Select Auto Fields"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
         Underline       =   False
         Visible         =   True
         Width           =   147
      End
      Begin PushButton btnSelectTelopFields
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Select TeleOp Fields"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   207
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
         Underline       =   False
         Visible         =   True
         Width           =   147
      End
      Begin PushButton btnSelectTeams
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Select Teams"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   385
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   38
         Underline       =   False
         Visible         =   True
         Width           =   147
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Display(InEvent as Data.t_event)
		  dictAutoFields = new Dictionary
		  dictTeleopFields = new Dictionary
		  dictTeams = new Dictionary
		  
		  //Autonomous Stuff
		  arsAuto.Append "Baseline"
		  arsAuto.Append "StartingPosition"
		  arsAuto.Append "AutoSwitchAttempted"
		  arsAuto.Append "AutoSwitchMade"
		  arsAuto.Append "AutoScaleAttempted"
		  arsAuto.Append "AutoScaleMade"
		  arsAuto.Append "AutoScalePosition"
		  arsAuto.Append "AutoSwitchPosition"
		  
		  for each s as string in arsAuto
		    dictAutoFields.value(s) = true
		  next
		  
		  //Teleop
		  arsTeleop.Append "CycleCount"
		  arsTeleop.Append "CycleTotalTime"
		  arsTeleop.Append "CycleAverageTime"
		  
		  arsTeleop.Append "CountOpponentSwitch"
		  arsTeleop.Append "CountPortalIntake"
		  arsTeleop.Append "CountScale"
		  arsTeleop.Append "CountYourSwitch"
		  
		  
		  arsTeleop.Append "BoostOne"
		  arsTeleop.Append "BoostTwo"
		  arsTeleop.Append "BoostThree"
		  arsTeleop.Append "BoostUsedCount"
		  arsTeleop.Append "BoostUsedTime"
		  
		  arsTeleop.Append "ForceOne"
		  arsTeleop.Append "ForceTwo"
		  arsTeleop.Append "ForceThree"
		  arsTeleop.Append "ForceUsedCount"
		  arsTeleop.Append "ForceUsedTime"
		  
		  arsTeleop.Append "LevitateOne"
		  arsTeleop.Append "LevitateTwo"
		  arsTeleop.Append "LevitateThree"
		  arsTeleop.Append "BoostUsedTime"
		  
		  arsTeleop.Append "Parked"
		  arsTeleop.Append "ClimbingAttemptedRobot"
		  arsTeleop.Append "ClimbingAttemptedRung"
		  arsTeleop.Append "ClimbingMade"
		  
		  arsTeleop.Append "CubesFromFloor"
		  arsTeleop.Append "CubesFromOpponent"
		  arsTeleop.Append "CubesFromPortal"
		  arsTeleop.Append "CubesFromPyramid"
		  arsTeleop.Append "CubesFromYou"
		  arsTeleop.Append "CubesLost"
		  arsTeleop.Append "CubeFromRobot"
		  
		  arsTeleop.Append "DefenseEffectiveness"
		  arsTeleop.Append "DefensePlayed"
		  arsTeleop.Append "DriverSkill"
		  
		  for each s as string in arsTeleop
		    dictTeleopFields.value(s) = true
		  next
		  
		  oEvent = InEvent
		  
		  for each oteam as Data.T_Team in oEvent.GetTeams
		    dictTeams.value( oTeam.sTeam_Number) = True
		  next
		  
		  pmCompLevel.ListIndex = 0
		  
		  self.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub List()
		  lstAutonomous.DeleteAllRows
		  lstTeleop.DeleteAllRows
		  
		  if pmMatchNumber.ListIndex = -1 then return
		  
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  lstAutonomous.Heading(1) = oMatch.sBlue_Team_1.replace("frc", "")
		  lstAutonomous.Heading(2) = oMatch.sBlue_Team_2.replace("frc", "")
		  lstAutonomous.Heading(3) = oMatch.sBlue_Team_3.replace("frc", "")
		  lstAutonomous.Heading(4) = oMatch.sRed_Team_1.replace("frc", "")
		  lstAutonomous.Heading(5) = oMatch.sRed_Team_2.replace("frc", "")
		  lstAutonomous.Heading(6) = oMatch.sRed_Team_3.replace("frc", "")
		  
		  
		  lstTeleop.Heading(1) = oMatch.sBlue_Team_1.replace("frc", "")
		  lstTeleop.Heading(2) = oMatch.sBlue_Team_2.replace("frc", "")
		  lstTeleop.Heading(3) = oMatch.sBlue_Team_3.replace("frc", "")
		  lstTeleop.Heading(4) = oMatch.sRed_Team_1.replace("frc", "")
		  lstTeleop.Heading(5) = oMatch.sRed_Team_2.replace("frc", "")
		  lstTeleop.Heading(6) = oMatch.sRed_Team_3.replace("frc", "")
		  
		  for i as integer = 0 to arsAuto.Ubound
		    lstAutonomous.addRow arsAuto(i)
		  next
		  
		  
		  for i as integer = 0 to arsTeleop.Ubound
		    lstTeleop.addRow arsTeleop(i)
		  next
		  
		  LoadBlue
		  LoadRed
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadAll()
		  Dim arsWidths() As String
		  
		  lstall.Visible = false
		  lstall.DeleteAllRows
		  
		  dim iColumnCount as integer = 1
		  for i as integer = 0 to dictAutoFields.count-1
		    dim s as string = dictAutoFields.key(i)
		    if dictAutoFields.value(s) then
		      iColumnCount = iColumnCount + 1
		    end
		  next
		  for i as integer = 0 to dictTeleopFields.count-1
		    dim s as string = dictTeleopFields.key(i)
		    if dictTeleopFields.value(s) then
		      iColumnCount = iColumnCount + 1
		    end
		  next
		  
		  lstall.ColumnCount = iColumnCount
		  
		  
		  lstAll.heading(0) = "Team"
		  
		  dim icnt as integer = 1
		  for i as integer = 0 to dictAutoFields.count-1
		    dim s as string = dictAutoFields.key(i)
		    if dictAutoFields.value(s) then
		      lstAll.heading(iCnt) = s
		      arsWidths.append  "100"
		      lstall.ColumnAlignment(icnt) = listbox.AlignRight
		      icnt = iCnt + 1
		    end
		  next
		  
		  iMaxTeleop = iCnt
		  
		  for i as integer = 0 to dictTeleopFields.count-1
		    dim s as string = dictTeleopFields.key(i)
		    if dictTeleopFields.value(s) then
		      lstAll.heading(iCnt) = s
		      arsWidths.append  "100"
		      lstall.ColumnAlignment(icnt) = listbox.AlignRight
		      icnt = iCnt + 1
		    end
		  next
		  
		  
		  Dim sLastTeam As String
		  
		  //Load all the teams
		  for i as integer = 0 to dictteams.count - 1
		    dim sTeamNumber as string = dictTeams.key(i)
		    If dictTeams.value(sTeamNumber) = True Then
		      lstall.AddRow sTeamNumber
		      
		      Dim iLastRow As Integer = lstAll.LastIndex
		      
		      //Get Values
		      For icol As Integer = 1 To lstAll.ColumnCount-1
		        Dim sVariable As String = lstAll.heading(iCol)
		        Dim s As String = Data.T_Game.AverageForVariable(sTeamNumber, sVariable)
		        If s <> "" Then
		          ' If sTeamNumber <> sLastTeam Then
		          ' Break
		          ' sLastTeam = sTeamNumber
		          ' End
		          lstAll.Cell(iLastRow, iCol) = s
		          lstAll.CellTag(iLastRow, iCol) = s
		        end
		      next
		    end
		  Next
		  
		  lstall.ColumnWidths = join(arsWidths, ",")
		  
		  lstall.visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBlue()
		  LoadBlue1
		  LoadBlue2
		  LoadBlue3
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBlue1()
		  dim iCol as integer = 1
		  
		  dim sTeamNumber as string = lstAutonomous.heading(iCol)
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  //Autnomous
		  for iRow as integer = 0 to lstAutonomous.ListCount-1
		    dim sVariableName as string = lstAutonomous.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstAutonomous.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		  //Manual
		  for iRow as integer = 0 to lstTeleop.ListCount-1
		    dim sVariableName as string = lstTeleop.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstTeleop.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBlue2()
		  dim iCol as integer = 2
		  
		  dim sTeamNumber as string = lstAutonomous.heading(iCol)
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  //Autnomous
		  for iRow as integer = 0 to lstAutonomous.ListCount-1
		    dim sVariableName as string = lstAutonomous.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstAutonomous.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		  //Manual
		  for iRow as integer = 0 to lstTeleop.ListCount-1
		    dim sVariableName as string = lstTeleop.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstTeleop.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBlue3()
		  dim iCol as integer = 3
		  
		  dim sTeamNumber as string = lstAutonomous.heading(iCol)
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  //Autnomous
		  for iRow as integer = 0 to lstAutonomous.ListCount-1
		    dim sVariableName as string = lstAutonomous.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstAutonomous.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		  //Manual
		  for iRow as integer = 0 to lstTeleop.ListCount-1
		    dim sVariableName as string = lstTeleop.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstTeleop.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRed()
		  LoadRed1
		  LoadRed2
		  LoadRed3
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRed1()
		  dim iCol as integer = 4
		  
		  dim sTeamNumber as string = lstAutonomous.heading(iCol)
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  //Autnomous
		  for iRow as integer = 0 to lstAutonomous.ListCount-1
		    dim sVariableName as string = lstAutonomous.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstAutonomous.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		  //Manual
		  for iRow as integer = 0 to lstTeleop.ListCount-1
		    dim sVariableName as string = lstTeleop.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstTeleop.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRed2()
		  dim iCol as integer = 5
		  
		  dim sTeamNumber as string = lstAutonomous.heading(iCol)
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  //Autnomous
		  for iRow as integer = 0 to lstAutonomous.ListCount-1
		    dim sVariableName as string = lstAutonomous.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstAutonomous.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		  //Manual
		  for iRow as integer = 0 to lstTeleop.ListCount-1
		    dim sVariableName as string = lstTeleop.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstTeleop.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRed3()
		  dim iCol as integer = 6
		  
		  dim sTeamNumber as string = lstAutonomous.heading(iCol)
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  //Autnomous
		  for iRow as integer = 0 to lstAutonomous.ListCount-1
		    dim sVariableName as string = lstAutonomous.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstAutonomous.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		  //Manual
		  for iRow as integer = 0 to lstTeleop.ListCount-1
		    dim sVariableName as string = lstTeleop.cell(iRow, 0)
		    
		    dim oGame as Data.T_Game = Data.T_Game.LoadMatchValue(oMatch.skey, sTeamNumber, sVariableName)
		    
		    dim sTemp as string = oGame.sValue
		    lstTeleop.cell(iRow, iCol) = oGame.sValue
		    
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		arsAuto() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		arsTeleop() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dictAutoFields As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		dictTeams As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		dictTeleopFields As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		iManualStart As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iMaxTeleop As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private oEvent As Data.t_event
	#tag EndProperty


#tag EndWindowCode

#tag Events TabPanel1
	#tag Event
		Sub Change()
		  if me.value = 0 then
		    List
		  else
		    LoadAll
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAutonomous
	#tag Event
		Sub cellBackgroundPaint(g as graphics, row as integer, column as integer)
		  if column > 0 and column < 4 then
		    g.ForeColor = &cC8D9FF00
		  elseif column > 3 then
		    g.ForeColor = &cFFCAC200
		  else
		    g.ForeColor = &cFFFFFF00
		  end
		  
		  If me.selected(row) then
		    g.ForeColor = &c0000FF
		  end
		  
		  g.FillRect 0, 0, g.Width, g.Height
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmMatchNumber
	#tag Event
		Sub Change()
		  List
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmCompLevel
	#tag Event
		Sub Change()
		  pmMatchNumber.DeleteAllRows
		  
		  if me.ListIndex = -1 then return
		  
		  dim sLevel as string = me.RowTag(me.ListIndex)
		  for each oMatch as Data.t_matches in oEvent.GetMatches
		    if oMatch.sComp_Level <> sLevel Then CONTINUE
		    pmMatchNumber.addRowAndTag str(oMatch.imatch_number), oMatch
		  next
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
#tag Events lstTeleop
	#tag Event
		Sub cellBackgroundPaint(g as graphics, row as integer, column as integer)
		  if column > 0 and column < 4 then
		    g.ForeColor = &cC8D9FF00
		  elseif column > 3 then
		    g.ForeColor = &cFFCAC200
		  else
		    g.ForeColor = &cFFFFFF00
		  end
		  
		  If me.selected(row) then
		    g.ForeColor = &c0000FF
		  end
		  
		  g.FillRect 0, 0, g.Width, g.Height
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WindowSplitter1
	#tag Event
		Sub Open()
		  me.AddControl lstAutonomous, true
		  me.AddControl lstTeleop, false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAll
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if column > 0 and column < iMaxTeleop then
		    g.ForeColor = &cFF996600
		  elseif column >= iMaxTeleop then
		    g.ForeColor = &cCCCCFF00
		  else
		    g.ForeColor = &cFFFFFF
		  end
		  
		  if me.selected(row) then
		    g.ForeColor = &c0000FF
		  end
		  
		  g.fillrect 0, 0, g.Width, g.Height
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  if column = 0 or column = iManualStart then
		    return false
		  end
		  
		  dim s1 as string = me.cell(row1, column).replaceall("%", "")
		  dim s2 as string = me.cell(Row2, column).replaceall("%", "")
		  
		  dim d1 as double = s1.val
		  dim d2 as double = s2.val
		  
		  ' 0: If items in Row1 and Row2 in specified column are equal.
		  ' -1: Contents of Row1 < Contents of Row2.
		  ' 1: Contents of Row1 > Contents of Row2.
		  
		  if d1 < d2 then
		    result = -1
		  elseif d1 > d2 then
		    result = 1
		  else
		    result = 0
		  end
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectAutoFields
	#tag Event
		Sub Action()
		  dim w as new winSelectData
		  w.left = btnSelectAutoFields.left + self.left
		  w.top = btnSelectAutoFields.top + self.top
		  
		  if w.Display("Autonomouse Fields to Show", dictAutoFields) then
		    LoadAll
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectTelopFields
	#tag Event
		Sub Action()
		  dim w as new winSelectData
		  w.left = btnSelectAutoFields.left + self.left
		  w.top = btnSelectAutoFields.top + self.top
		  
		  if w.Display("TeleOp Fields to Show", dictTeleopFields) then
		    LoadAll
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectTeams
	#tag Event
		Sub Action()
		  dim w as new winSelectData
		  w.left = btnSelectAutoFields.left + self.left
		  w.top = btnSelectAutoFields.top + self.top
		  
		  if w.Display("Select Teams to Show", dictTeams) then
		    LoadAll
		  end
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
		Name="iManualStart"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iMaxTeleop"
		Group="Behavior"
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
