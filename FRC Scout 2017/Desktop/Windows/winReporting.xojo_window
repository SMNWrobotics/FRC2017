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
      Value           =   0
      Visible         =   True
      Width           =   992
      Begin AlternatingList lstAuto
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
         Height          =   278
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Autonomous	Blue 1	Blue 2	Blue 3	Red 1	Red 2	Red 3"
         Italic          =   False
         Left            =   27
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
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   70
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
      Begin AlternatingList lstManual
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
         Height          =   278
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Manual	Blue 1	Blue 2	Blue 3	Red 1	Red 2	Red 3"
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
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   365
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
         Left            =   27
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
         Top             =   346
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
         ColumnCount     =   51
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
         Height          =   591
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
         SelectionType   =   1
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   57
         Underline       =   False
         UseFocusRing    =   False
         Visible         =   True
         Width           =   971
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Canvas cvsAuto
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   28
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   25
      End
      Begin Canvas cvsManual
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   300
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   28
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   25
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   77
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Autonomous"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   28
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   337
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Manual"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   28
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Display(InEvent as Data.t_event)
		  oEvent = InEvent
		  
		  pmCompLevel.ListIndex = 0
		  
		  self.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub List()
		  lstAuto.DeleteAllRows
		  lstManual.DeleteAllRows
		  
		  dim oMatch as Data.t_matches = pmMatchNumber.RowTag(pmMatchNumber.ListIndex)
		  
		  lstAuto.Heading(1) = oMatch.sBlue_Team_1.replace("frc", "")
		  lstAuto.Heading(2) = oMatch.sBlue_Team_2.replace("frc", "")
		  lstAuto.Heading(3) = oMatch.sBlue_Team_3.replace("frc", "")
		  lstAuto.Heading(4) = oMatch.sRed_Team_1.replace("frc", "")
		  lstAuto.Heading(5) = oMatch.sRed_Team_2.replace("frc", "")
		  lstAuto.Heading(6) = oMatch.sRed_Team_3.replace("frc", "")
		  
		  lstAuto.columntag(1) = oMatch.sBlue_Team_1
		  lstAuto.columntag(2) = oMatch.sBlue_Team_2
		  lstAuto.columntag(3) = oMatch.sBlue_Team_3
		  lstAuto.columntag(4) = oMatch.sRed_Team_1
		  lstAuto.columntag(5) = oMatch.sRed_Team_2
		  lstAuto.columntag(6) = oMatch.sRed_Team_3
		  
		  lstAuto.ColumnAlignment(1) = listbox.AlignCenter
		  lstAuto.ColumnAlignment(2) = listbox.AlignCenter
		  lstAuto.ColumnAlignment(3) = listbox.AlignCenter
		  lstAuto.ColumnAlignment(4) = listbox.AlignCenter
		  lstAuto.ColumnAlignment(5) = listbox.AlignCenter
		  lstAuto.ColumnAlignment(6) = listbox.AlignCenter
		  
		  lstManual.Heading(1) = oMatch.sBlue_Team_1.replace("frc", "")
		  lstManual.Heading(2) = oMatch.sBlue_Team_2.replace("frc", "")
		  lstManual.Heading(3) = oMatch.sBlue_Team_3.replace("frc", "")
		  lstManual.Heading(4) = oMatch.sRed_Team_1.replace("frc", "")
		  lstManual.Heading(5) = oMatch.sRed_Team_2.replace("frc", "")
		  lstManual.Heading(6) = oMatch.sRed_Team_3.replace("frc", "")
		  
		  lstManual.columntag(1) = oMatch.sBlue_Team_1
		  lstManual.columntag(2) = oMatch.sBlue_Team_2
		  lstManual.columntag(3) = oMatch.sBlue_Team_3
		  lstManual.columntag(4) = oMatch.sRed_Team_1
		  lstManual.columntag(5) = oMatch.sRed_Team_2
		  lstManual.columntag(6) = oMatch.sRed_Team_3
		  
		  lstManual.ColumnAlignment(1) = listbox.AlignCenter
		  lstManual.ColumnAlignment(2) = listbox.AlignCenter
		  lstManual.ColumnAlignment(3) = listbox.AlignCenter
		  lstManual.ColumnAlignment(4) = listbox.AlignCenter
		  lstManual.ColumnAlignment(5) = listbox.AlignCenter
		  lstManual.ColumnAlignment(6) = listbox.AlignCenter
		  
		  
		  lstAuto.addRow "Games Scouted"
		  
		  lstAuto.AddRow "Low Bar Attempts"
		  lstAuto.addRow "Low Bar Success"
		  
		  lstAuto.addRow "Portcullis Attempts"
		  lstAuto.addRow "Portcullis Success"
		  
		  lstAuto.addRow "Cheval de Frise Attempts"
		  lstAuto.addRow "Cheval de Frise Success"
		  
		  lstAuto.addRow "Moat Attempts"
		  lstAuto.addRow "Moat Success"
		  
		  lstAuto.addRow "Ramparts Attempts"
		  lstAuto.addRow "Ramparts Success"
		  
		  lstAuto.addRow "Drawbridge Attempts"
		  lstAuto.addRow "Drawbridge Success"
		  
		  lstAuto.addRow "Sally Port Attempts"
		  lstAuto.addRow "Sally Port Success"
		  
		  lstAuto.addRow "Rock Wall Attempts" 
		  lstAuto.addRow "Rock Wall Success"
		  
		  lstAuto.addRow "Rough Terrain Attempts"
		  lstAuto.addRow "Rough Terrain Success"
		  
		  lstAuto.addRow "Defense Reached"
		  
		  lstAuto.addrow "Low Shot Made Avg"
		  lstAuto.addRow "Low Shot Attempts Avg"
		  
		  lstAuto.addRow "High Shot Made Avg"
		  lstAuto.addRow "High Shot Attempts Avg"
		  
		  //Manual Rows
		  
		  lstManual.AddRow "Low Bar Attempts"
		  lstManual.addRow "Low Bar Success"
		  
		  lstManual.addRow "Portcullis Attempts"
		  lstManual.addRow "Portcullis Success"
		  
		  lstManual.addRow "Cheval de Frise Attempts"
		  lstManual.addRow "Cheval de Frise Success"
		  
		  lstManual.addRow "Moat Attempts"
		  lstManual.addRow "Moat Success"
		  
		  lstManual.addRow "Ramparts Attempts"
		  lstManual.addRow "Ramparts Success"
		  
		  lstManual.addRow "Drawbridge Attempts"
		  lstManual.addRow "Drawbridge Success"
		  
		  lstManual.addRow "Sally Port Attempts"
		  lstManual.addRow "Sally Port Success"
		  
		  lstManual.addRow "Rock Wall Attempts" 
		  lstManual.addRow "Rock Wall Success"
		  
		  lstManual.addRow "Rough Terrain Attempts"
		  lstManual.addRow "Rough Terrain Success"
		  
		  lstManual.addrow "Low Shot Made Avg"
		  lstManual.addRow "Low Shot Attempts Avg"
		  
		  lstManual.addRow "High Shot Made Avg"
		  lstManual.addRow "High Shot Attempts Avg"
		  
		  lstManual.AddRow "Challenge Attempted Avg"
		  lstManual.addRow "Challenge Succeeded Avg"
		  
		  lstManual.AddRow "Scale Attempted Avg"
		  lstManual.addRow "Scale Succeeded Avg"
		  
		  LoadBlue
		  LoadRed
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadAll()
		  lstAll.DeleteAllRows
		  
		  for each oTeam as Data.t_team in oEvent.GetTeams
		    lstAll.AddRow oTeam.sTeam_Number
		    
		    dim iRow as integer = lstall.LastIndex
		    
		    lstall.RowTag(iRow) = oTeam
		    
		    
		    //Load Team Data in Row
		    LoadRow(iRow, oTeam)
		    
		  next
		  
		  lstall.heading(0) = "Team Number"
		  
		  dim arsColumnWidths() as string
		  arsColumnWidths.Append "100"
		  arsColumnWidths.Append "50"
		  for icol as integer =2 to lstall.ColumnCount-1
		    arsColumnWidths.Append "100"
		    lstall.ColumnAlignment(iCol) = listbox.AlignCenter
		  next
		  
		  lstAll.ColumnWidths = join(arsColumnWidths, ",")
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
		  dim iCol as integer = 0
		  
		  dim sTag as string = lstAuto.ColumnTag(iCol)
		  dim oTeam as Data.T_Team = Data.T_team.FindByKey(sTag)
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  ' //9
		  ' lstAuto.Cell(1, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' lstAuto.Cell(2, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' 
		  ' //1
		  ' lstAuto.Cell(3, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstAuto.Cell(4, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' ' 
		  ' ' //2
		  ' lstAuto.Cell(5, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstAuto.Cell(6, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' ' 
		  ' ' //3
		  ' lstAuto.Cell(7, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' lstAuto.Cell(8, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' ' 
		  ' ' //4
		  ' lstAuto.Cell(9, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstAuto.Cell(10, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' ' 
		  ' ' //5
		  ' lstAuto.Cell(11, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstAuto.Cell(12, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' ' 
		  ' ' //6
		  ' lstAuto.Cell(13, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstAuto.Cell(14, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' ' 
		  ' ' //7
		  ' lstAuto.Cell(15, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstAuto.Cell(16, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' ' 
		  ' ' //8
		  ' lstAuto.Cell(17, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstAuto.Cell(18, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstAuto.Cell(19, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' 
		  ' lstAuto.Cell(20, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' lstAuto.Cell(21, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' ' 
		  ' lstAuto.Cell(22, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' lstAuto.Cell(23, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' 
		  ' //Manual
		  ' 
		  ' lstManual.cell(0, icol) = oTeam.LowBarAttempts 
		  ' lstManual.cell(1, icol) = oTeam.LowBarMade
		  ' 
		  ' lstManual.cell(2, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstManual.cell(3, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' 
		  ' lstManual.cell(4, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstManual.cell(5, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' 
		  ' lstManual.cell(6, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' lstManual.cell(7, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' 
		  ' lstManual.cell(8, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstManual.cell(9, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' 
		  ' lstManual.cell(10, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstManual.cell(11, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' 
		  ' lstManual.cell(12, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstManual.cell(13, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' 
		  ' lstManual.cell(14, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstManual.cell(15, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' 
		  ' lstManual.cell(16, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstManual.cell(17, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstManual.cell(18, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' lstManual.cell(19, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(20, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' lstManual.cell(21, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(22, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' lstManual.cell(23, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' 
		  ' lstManual.cell(24, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' lstManual.cell(25, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBlue2()
		  dim iCol as integer = 2
		  
		  dim sTag as string = lstAuto.ColumnTag(iCol)
		  dim oTeam as Data.T_Team = Data.T_team.FindByKey(sTag)
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  ' //9
		  ' lstAuto.Cell(1, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' lstAuto.Cell(2, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' 
		  ' //1
		  ' lstAuto.Cell(3, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstAuto.Cell(4, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' ' 
		  ' ' //2
		  ' lstAuto.Cell(5, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstAuto.Cell(6, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' ' 
		  ' ' //3
		  ' lstAuto.Cell(7, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' lstAuto.Cell(8, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' ' 
		  ' ' //4
		  ' lstAuto.Cell(9, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstAuto.Cell(10, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' ' 
		  ' ' //5
		  ' lstAuto.Cell(11, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstAuto.Cell(12, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' ' 
		  ' ' //6
		  ' lstAuto.Cell(13, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstAuto.Cell(14, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' ' 
		  ' ' //7
		  ' lstAuto.Cell(15, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstAuto.Cell(16, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' ' 
		  ' ' //8
		  ' lstAuto.Cell(17, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstAuto.Cell(18, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstAuto.Cell(19, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' 
		  ' lstAuto.Cell(20, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' lstAuto.Cell(21, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' ' 
		  ' lstAuto.Cell(22, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' lstAuto.Cell(23, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' 
		  ' //Manual
		  ' 
		  ' lstManual.cell(0, icol) = oTeam.LowBarAttempts 
		  ' lstManual.cell(1, icol) = oTeam.LowBarMade
		  ' 
		  ' lstManual.cell(2, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstManual.cell(3, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' 
		  ' lstManual.cell(4, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstManual.cell(5, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' 
		  ' lstManual.cell(6, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' lstManual.cell(7, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' 
		  ' lstManual.cell(8, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstManual.cell(9, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' 
		  ' lstManual.cell(10, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstManual.cell(11, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' 
		  ' lstManual.cell(12, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstManual.cell(13, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' 
		  ' lstManual.cell(14, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstManual.cell(15, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' 
		  ' lstManual.cell(16, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstManual.cell(17, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstManual.cell(18, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' lstManual.cell(19, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(20, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' lstManual.cell(21, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(22, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' lstManual.cell(23, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' 
		  ' lstManual.cell(24, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' lstManual.cell(25, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadBlue3()
		  dim iCol as integer = 3
		  
		  dim sTag as string = lstAuto.ColumnTag(iCol)
		  dim oTeam as Data.T_Team = Data.T_team.FindByKey(sTag)
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  ' //9
		  ' lstAuto.Cell(1, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' lstAuto.Cell(2, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' 
		  ' //1
		  ' lstAuto.Cell(3, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstAuto.Cell(4, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' ' 
		  ' ' //2
		  ' lstAuto.Cell(5, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstAuto.Cell(6, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' ' 
		  ' ' //3
		  ' lstAuto.Cell(7, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' lstAuto.Cell(8, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' ' 
		  ' ' //4
		  ' lstAuto.Cell(9, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstAuto.Cell(10, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' ' 
		  ' ' //5
		  ' lstAuto.Cell(11, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstAuto.Cell(12, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' ' 
		  ' ' //6
		  ' lstAuto.Cell(13, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstAuto.Cell(14, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' ' 
		  ' ' //7
		  ' lstAuto.Cell(15, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstAuto.Cell(16, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' ' 
		  ' ' //8
		  ' lstAuto.Cell(17, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstAuto.Cell(18, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstAuto.Cell(19, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' 
		  ' lstAuto.Cell(20, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' lstAuto.Cell(21, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' ' 
		  ' lstAuto.Cell(22, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' lstAuto.Cell(23, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' 
		  ' //Manual
		  ' 
		  ' lstManual.cell(0, icol) = oTeam.LowBarAttempts 
		  ' lstManual.cell(1, icol) = oTeam.LowBarMade
		  ' 
		  ' lstManual.cell(2, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstManual.cell(3, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' 
		  ' lstManual.cell(4, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstManual.cell(5, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' 
		  ' lstManual.cell(6, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' lstManual.cell(7, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' 
		  ' lstManual.cell(8, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstManual.cell(9, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' 
		  ' lstManual.cell(10, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstManual.cell(11, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' 
		  ' lstManual.cell(12, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstManual.cell(13, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' 
		  ' lstManual.cell(14, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstManual.cell(15, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' 
		  ' lstManual.cell(16, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstManual.cell(17, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstManual.cell(18, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' lstManual.cell(19, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(20, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' lstManual.cell(21, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(22, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' lstManual.cell(23, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' 
		  ' lstManual.cell(24, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' lstManual.cell(25, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  
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
		  
		  dim sTag as string = lstAuto.ColumnTag(iCol)
		  dim oTeam as Data.T_Team = Data.T_team.FindByKey(sTag)
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  ' //9
		  ' lstAuto.Cell(1, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' lstAuto.Cell(2, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' 
		  ' //1
		  ' lstAuto.Cell(3, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstAuto.Cell(4, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' ' 
		  ' ' //2
		  ' lstAuto.Cell(5, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstAuto.Cell(6, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' ' 
		  ' ' //3
		  ' lstAuto.Cell(7, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' lstAuto.Cell(8, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' ' 
		  ' ' //4
		  ' lstAuto.Cell(9, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstAuto.Cell(10, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' ' 
		  ' ' //5
		  ' lstAuto.Cell(11, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstAuto.Cell(12, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' ' 
		  ' ' //6
		  ' lstAuto.Cell(13, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstAuto.Cell(14, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' ' 
		  ' ' //7
		  ' lstAuto.Cell(15, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstAuto.Cell(16, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' ' 
		  ' ' //8
		  ' lstAuto.Cell(17, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstAuto.Cell(18, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstAuto.Cell(19, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' 
		  ' lstAuto.Cell(20, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' lstAuto.Cell(21, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' ' 
		  ' lstAuto.Cell(22, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' lstAuto.Cell(23, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' 
		  ' //Manual
		  ' 
		  ' lstManual.cell(0, icol) = oTeam.LowBarAttempts 
		  ' lstManual.cell(1, icol) = oTeam.LowBarMade
		  ' 
		  ' lstManual.cell(2, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstManual.cell(3, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' 
		  ' lstManual.cell(4, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstManual.cell(5, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' 
		  ' lstManual.cell(6, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' lstManual.cell(7, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' 
		  ' lstManual.cell(8, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstManual.cell(9, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' 
		  ' lstManual.cell(10, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstManual.cell(11, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' 
		  ' lstManual.cell(12, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstManual.cell(13, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' 
		  ' lstManual.cell(14, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstManual.cell(15, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' 
		  ' lstManual.cell(16, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstManual.cell(17, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstManual.cell(18, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' lstManual.cell(19, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(20, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' lstManual.cell(21, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(22, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' lstManual.cell(23, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' 
		  ' lstManual.cell(24, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' lstManual.cell(25, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRed2()
		  dim iCol as integer = 5
		  
		  dim sTag as string = lstAuto.ColumnTag(iCol)
		  dim oTeam as Data.T_Team = Data.T_team.FindByKey(sTag)
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  ' //9
		  ' lstAuto.Cell(1, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' lstAuto.Cell(2, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' 
		  ' //1
		  ' lstAuto.Cell(3, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstAuto.Cell(4, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' ' 
		  ' ' //2
		  ' lstAuto.Cell(5, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstAuto.Cell(6, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' ' 
		  ' ' //3
		  ' lstAuto.Cell(7, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' lstAuto.Cell(8, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' ' 
		  ' ' //4
		  ' lstAuto.Cell(9, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstAuto.Cell(10, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' ' 
		  ' ' //5
		  ' lstAuto.Cell(11, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstAuto.Cell(12, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' ' 
		  ' ' //6
		  ' lstAuto.Cell(13, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstAuto.Cell(14, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' ' 
		  ' ' //7
		  ' lstAuto.Cell(15, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstAuto.Cell(16, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' ' 
		  ' ' //8
		  ' lstAuto.Cell(17, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstAuto.Cell(18, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstAuto.Cell(19, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' 
		  ' lstAuto.Cell(20, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' lstAuto.Cell(21, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' ' 
		  ' lstAuto.Cell(22, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' lstAuto.Cell(23, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' 
		  ' //Manual
		  ' 
		  ' lstManual.cell(0, icol) = oTeam.LowBarAttempts 
		  ' lstManual.cell(1, icol) = oTeam.LowBarMade
		  ' 
		  ' lstManual.cell(2, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstManual.cell(3, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' 
		  ' lstManual.cell(4, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstManual.cell(5, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' 
		  ' lstManual.cell(6, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' lstManual.cell(7, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' 
		  ' lstManual.cell(8, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstManual.cell(9, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' 
		  ' lstManual.cell(10, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstManual.cell(11, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' 
		  ' lstManual.cell(12, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstManual.cell(13, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' 
		  ' lstManual.cell(14, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstManual.cell(15, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' 
		  ' lstManual.cell(16, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstManual.cell(17, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstManual.cell(18, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' lstManual.cell(19, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(20, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' lstManual.cell(21, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(22, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' lstManual.cell(23, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' 
		  ' lstManual.cell(24, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' lstManual.cell(25, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRed3()
		  dim iCol as integer = 6
		  
		  dim sTag as string = lstAuto.ColumnTag(iCol)
		  dim oTeam as Data.T_Team = Data.T_team.FindByKey(sTag)
		  
		  lstAuto.cell(0, icol) = oTeam.TotalGames //TotalGames
		  
		  ' //9
		  ' lstAuto.Cell(1, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' lstAuto.Cell(2, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' 
		  ' //1
		  ' lstAuto.Cell(3, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstAuto.Cell(4, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' ' 
		  ' ' //2
		  ' lstAuto.Cell(5, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstAuto.Cell(6, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' ' 
		  ' ' //3
		  ' lstAuto.Cell(7, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' lstAuto.Cell(8, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' ' 
		  ' ' //4
		  ' lstAuto.Cell(9, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstAuto.Cell(10, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' ' 
		  ' ' //5
		  ' lstAuto.Cell(11, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstAuto.Cell(12, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' ' 
		  ' ' //6
		  ' lstAuto.Cell(13, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstAuto.Cell(14, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' ' 
		  ' ' //7
		  ' lstAuto.Cell(15, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstAuto.Cell(16, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' ' 
		  ' ' //8
		  ' lstAuto.Cell(17, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstAuto.Cell(18, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstAuto.Cell(19, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' 
		  ' lstAuto.Cell(20, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' lstAuto.Cell(21, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' ' 
		  ' lstAuto.Cell(22, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' lstAuto.Cell(23, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' 
		  ' //Manual
		  ' 
		  ' lstManual.cell(0, icol) = oTeam.LowBarAttempts 
		  ' lstManual.cell(1, icol) = oTeam.LowBarMade
		  ' 
		  ' lstManual.cell(2, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' lstManual.cell(3, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' 
		  ' lstManual.cell(4, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' lstManual.cell(5, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' 
		  ' lstManual.cell(6, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' lstManual.cell(7, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' 
		  ' lstManual.cell(8, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' lstManual.cell(9, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' 
		  ' lstManual.cell(10, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' lstManual.cell(11, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' 
		  ' lstManual.cell(12, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' lstManual.cell(13, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' 
		  ' lstManual.cell(14, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' lstManual.cell(15, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' 
		  ' lstManual.cell(16, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' lstManual.cell(17, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' 
		  ' 
		  ' lstManual.cell(18, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' lstManual.cell(19, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(20, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' lstManual.cell(21, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' 
		  ' lstManual.cell(22, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' lstManual.cell(23, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' 
		  ' lstManual.cell(24, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' lstManual.cell(25, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRow(iRow as integer, oTeam as Data.T_Team)
		  dim iCol as integer = 1
		  lstAll.heading(icol) = "# Games"
		  lstAll.cell(iRow, icol) = oTeam.TotalGames //TotalGames
		  icol = icol + 1
		  
		  ' //9
		  ' lstAll.heading(icol) = "Low Bar Attempts"
		  ' lstAll.Cell(iRow, icol) =  oTeam.Auto_LoadBarAttempts //"Low Bar Attempts"
		  ' icol = icol + 1
		  ' 
		  ' lstAll.heading(icol) = "Low Bar Success"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_LoadBarSuccess //"Low Bar Success"
		  ' icol = icol + 1
		  ' 
		  ' //1
		  ' lstAll.heading(icol) = "Portcullis Attempts"
		  ' lstAll.Cell(iRow, icol) = oteam.Auto_DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' icol = icol + 1
		  ' 
		  ' lstAll.heading(icol) = "Portcullis Success"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_DefenseTypeSuccess("1") //"Portcullis Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //2
		  ' lstAll.heading(icol) = "Cheval de Frise Attempts"
		  ' lstAll.Cell(iRow, icol)= oteam.Auto_DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' icol = icol + 1
		  ' 
		  ' lstAll.heading(icol) = "Cheval de Frise Success"
		  ' lstAll.Cell(iRow, icol)= oTeam.Auto_DefenseTypeSuccess("2") // "Cheval de Frise Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //3
		  ' lstAll.heading(icol) = "Moat Attempts"
		  ' lstAll.Cell(iRow, icol)= oteam.Auto_DefenseTypeAttempts("3") // "Moat Attempts"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Moat Success"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_DefenseTypeSuccess("3") //"Moat Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //4
		  ' lstAll.heading(icol) = "Ramparts Attempts"
		  ' lstAll.Cell(iRow, icol)= oteam.Auto_DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Ramparts Success"
		  ' lstAll.Cell(iRow, icol)= oTeam.Auto_DefenseTypeSuccess("4") // "Ramparts Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //5
		  ' lstAll.heading(icol) = "Drawbridge Attempts"
		  ' lstAll.Cell(iRow, icol)= oteam.Auto_DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Drawbridge Success"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_DefenseTypeSuccess("5") //"Drawbridge Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //6
		  ' lstAll.heading(icol) = "Sally Port Attempts"
		  ' lstAll.Cell(iRow, icol)= oteam.Auto_DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Sally Port Success"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_DefenseTypeSuccess("6") //"Sally Port Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //7
		  ' lstAll.heading(icol) = "Rock Wall Attempts"
		  ' lstAll.Cell(iRow, icol)= oteam.Auto_DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Rock Wall Success"
		  ' lstAll.Cell(iRow, icol)= oTeam.Auto_DefenseTypeSuccess("7") // "Rock Wall Success"
		  ' icol = icol + 1
		  ' ' 
		  ' ' //8
		  ' lstAll.heading(icol) = "Rough Terrain Attempts"
		  ' lstAll.Cell(iRow, icol) = oteam.Auto_DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Rough Terrain Success"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_DefenseTypeSuccess("8") //"Rough Terrain Success"
		  ' icol = icol + 1
		  ' 
		  ' lstAll.heading(icol) = "Defense Reached"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_DefenseReached // "Defense Reached"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "Low Shot Made Avg"
		  ' lstAll.Cell(iRow, icol)= oTeam.Auto_LowShotMadeAverage//"Low Shot Made Avg"
		  ' icol = icol + 1
		  ' 
		  ' lstAll.heading(icol) = "Low Shot Attempts Avg"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_LowShotAttemptAverage// "Low Shot Attempts Avg"
		  ' icol = icol + 1
		  ' ' 
		  ' lstAll.heading(icol) = "High Shot Made Avg"
		  ' lstAll.Cell(iRow, icol) = oTeam.Auto_HighShotMadeAverage//"High Shot Made Avg"
		  ' icol = icol + 1
		  ' lstAll.heading(icol) = "High Shot Attempts Avg"
		  ' lstAll.Cell(iRow, icol)= oTeam.Auto_HighShotAttemptAverage //"High Shot Attempts Avg"
		  ' icol = icol + 1
		  ' 
		  ' iManualStart = iCol
		  ' 
		  ' lstAll.heading(icol) = "Team Manual"
		  ' lstAll.cell(iRow, icol) = oTeam.sTeam_Number 
		  ' icol = iCol + 1
		  ' 
		  ' lstAll.heading(icol) = "Low Bar Attempts"
		  ' lstAll.cell(iRow, icol) = oTeam.LowBarAttempts 
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Low Bar Made"
		  ' lstAll.cell(iRow, icol) = oTeam.LowBarMade
		  ' 
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Portcullis Attempts"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("1") // "Portcullis Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Portcullis Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("1")  //"Portcullis Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Cheval de Frise Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("2") // "Cheval de Frise Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Cheval de Frise Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("2") // "Cheval de Frise Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Moat Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam. DefenseTypeAttempts("3")// "Moat Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Moat Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("3") // "Moat Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Ramparts Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("4") // "Ramparts Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Ramparts Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("4") // "Ramparts Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Drawbridge Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("5") // "Drawbridge Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Drawbridge Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("5") // "Drawbridge Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Sally Port Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("6") // "Sally Port Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Sally Port Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("6") // "Sally Port Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Rock Wall Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("7") // "Rock Wall Attempts" 
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Rock Wall Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("7") // "Rock Wall Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Rough Terrain Attempts"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeAttempts("8") //"Rough Terrain Attempts"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Rough Terrain Success"
		  ' lstAll.cell(iRow, icol) = oTeam.DefenseTypeMade("8") //"Rough Terrain Success"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Low Shot Made Avg"
		  ' 
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.LowShotMadeAverage // "Low Shot Made Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Low Shot Attempts Avg"
		  ' lstAll.cell(iRow, icol) = oTeam.LowShotAttemptAverage //"Low Shot Attempts Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "High Shot Made Avg"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.HighShotMadeAverage // "High Shot Made Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "High Shot Attempts Avg"
		  ' lstAll.cell(iRow, icol) = oTeam.HighShotAttemptAverage // "High Shot Attempts Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Challenge Attempted Avg"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.ChallengeAttemptedAverage //"Challenge Attempted Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Challenge Succeeded Avg"
		  ' lstAll.cell(iRow, icol) = oTeam.ChallengeSucceededAverage //"Challenge Succeeded Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Scale Attempted Avg"
		  ' 
		  ' lstAll.cell(iRow, icol) = oTeam.ScaleAttemptedAverage //"Scale Attempted Avg"
		  ' icol = iCol + 1
		  ' lstAll.heading(icol) = "Scale Succeeded Avg"
		  ' lstAll.cell(iRow, icol) = oTeam.ScaleSucceededAverage //"Scale Succeeded Avg"
		  ' 
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		iManualStart As Integer
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
#tag Events lstAuto
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
#tag Events lstManual
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
		  me.AddControl lstAuto, true
		  me.AddControl lstManual, false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAll
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if column > 1 and column < 25 then
		    g.ForeColor = &cFF996600
		  elseif column > 25 then
		    g.ForeColor = &cCCCCFF00
		  else
		    g.ForeColor = &cFFFFFF
		  end
		  
		  if me.selected(row) then
		    g.ForeColor = &c0000FF
		  end
		  
		  g.fillrect 0, 0, g.Width, g.Height
		  
		  if column = iManualStart then
		    g.ForeColor = &c000000
		    g.PenWidth = 2
		    g.PenHeight = 2
		    g.DrawLine 0, 0, 0, g.Height
		  end
		  
		  
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
#tag Events cvsAuto
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = &cFF996600
		  g.FillRect 0, 0, g.Width, g.Height
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cvsManual
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = &cCCCCFF00
		  g.FillRect 0, 0, g.Width, g.Height
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
