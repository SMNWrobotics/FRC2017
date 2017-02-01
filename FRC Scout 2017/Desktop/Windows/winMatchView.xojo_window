#tag Window
Begin WindowMenuWindow winMatchView
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   750
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
   Title           =   "Match View"
   Visible         =   True
   Width           =   998
   Begin Listbox lstBlue
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   4
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
      Height          =   685
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   475
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Listbox lstRed
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   4
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
      Height          =   685
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   507
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   475
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Blue Alliance Teams"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   475
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
      Left            =   507
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Red Alliance Teams"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   475
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  Load
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Display(oMatch as Data.t_matches)
		  moMatch = oMatch
		  
		  Self.title = "Match View.  Match #" + str(moMatch.imatch_number)
		  
		  self.show
		  
		  Load
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  LoadBlue
		  LoadRed
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadBlue()
		  lstBlue.DeleteAllRows
		  
		  lstBlue.addRow "Defense 1"
		  lstBlue.addRow "Defense 2"
		  lstBlue.addRow "Defense 3"
		  lstBlue.addRow "Defense 4"
		  lstBlue.addRow "Defense 5"
		  
		  lstBlue.addRow "Auto:  Def 1 Attempted/Succeded"
		  lstBlue.addRow "Auto:  Def 2 Attempted/Succeded"
		  lstBlue.addRow "Auto:  Def 3 Attempted/Succeded"
		  lstBlue.addRow "Auto:  Def 4 Attempted/Succeded"
		  lstBlue.addRow "Auto:  Def 5 Attempted/Succeded"
		  
		  lstBlue.AddRow "Auto:  Reached Defense"
		  
		  lstBlue.addRow "Def 1 Made/Attempts"
		  lstBlue.AddRow "Def 2 Made/Attempts"
		  lstBlue.AddRow "Def 3 Made/Attempts"
		  lstBlue.AddRow "Def 4 Made/Attempts"
		  lstBlue.AddRow "Def 5 Made/Attempts"
		  
		  lstBlue.AddRow "Hi Shot Made/Attempt"
		  lstBlue.addrow "Low Shot Made/Attempt"
		  
		  lstBlue.addRow "Scale Attempt"
		  lstBlue.addRow "Scale Made"
		  
		  lstblue.addRow "Challenge Attempt"
		  lstBlue.addrow "Challenge Succeeded"
		  
		  lstBlue.addRow "Edit"
		  
		  LoadBlueTeam1
		  LoadBlueTeam2
		  LoadBlueTeam3
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadBlueTeam1()
		  lstblue.heading(1) = moMatch.sBlue_Team_1
		  
		  dim oGame as Data.T_Game = moMatch.GameBlue1
		  
		  if oGame = nil then return
		  
		  dim iCol as integer = 1
		  
		  lstBlue.celltag(0, iCol) = oGame
		  
		  ' lstBlue.cell(0, iCol) = dictDefenseType.value(9) //"Defense 1"
		  ' lstBlue.cell(1, iCol) =  dictDefenseType.value(oGame.iDefenseType2_ID) //"Defense 2"
		  ' lstBlue.cell(2, iCol) =  dictDefenseType.value(oGame.iDefenseType3_ID) //"Defense 3"
		  ' lstBlue.cell(3, iCol) =  dictDefenseType.value(oGame.iDefenseType4_ID) //"Defense 4"
		  ' lstBlue.cell(4, iCol) =  dictDefenseType.value(oGame.iDefenseType5_ID) //"Defense 5"
		  ' 
		  ' 
		  ' lstBlue.cell(5, iCol) =  str(oGame.bAuto_LowBarBreechAttempted) + "/" + str(oGame.bAuto_LowBarBreechSucceeded) //"Autonomous 1 Made/Attempts
		  ' lstBlue.cell(6, iCol) =  str(oGame.bAuto_Defense2Attempted) + "/" + str(oGame.bAuto_Defense2Succeeded)
		  ' lstBlue.cell(7, iCol) =  str(oGame.bAuto_Defense3Attempted) + "/" + str(oGame.bAuto_Defense3Succeeded)
		  ' lstBlue.cell(8, iCol) =  str(oGame.bAuto_Defense4Attempted) + "/" + str(oGame.bAuto_Defense4Succeeded)
		  ' lstBlue.cell(9, iCol) =  str(oGame.bAuto_Defense5Attempted) + "/" + str(oGame.bAuto_Defense5Succeeded)
		  ' 
		  ' 
		  ' lstBlue.cell(10, iCol) = str(oGame.bAuto_DefenseReached)
		  ' 
		  ' 
		  ' lstBlue.cell(11, iCol) =  str(oGame.iDefense1Made) + "/" + str(oGame.iDefense1Attempts) //"Def 1 Breach"
		  ' lstBlue.cell(12, iCol) =  str(oGame.iDefense2Made) + "/" + str(oGame.iDefense2Attempts) //"Def 2 Breach"
		  ' lstBlue.cell(13, iCol) =  str(oGame.iDefense3Made) + "/" + str(oGame.iDefense3Attempts) //"Def 3 Breach"
		  ' lstBlue.cell(14, iCol) =  str(oGame.iDefense4Made) + "/" + str(oGame.iDefense4Attempts) //"Def 4 Breach"
		  ' lstBlue.cell(15, iCol) =  str(oGame.iDefense5Made) + "/" + str(oGame.iDefense5Attempts) //"Def 5 Breach"
		  ' 
		  ' 
		  ' lstBlue.cell(16, iCol) =str( oGame.iHighShootMade) + "/" + str(oGame.iHighShootAttempts) //"Hi Shot Attempt"
		  ' lstBlue.cell(17, iCol) =  str(oGame.iLowShootMade) + "/" + str(oGame.iLowShootAttempts) //"Low Shot Attempt"
		  ' 
		  ' 
		  ' lstBlue.cell(18, iCol) =  str(oGame.bScaleAttempted) //"Scale Attempt"
		  ' lstBlue.cell(19, iCol) =  str(oGame.bScaleSuccessful) //"Scale Made"
		  ' 
		  ' lstBlue.cell(20, iCol) = str(oGame.bChallengeAttempted)
		  ' lstBlue.cell(21, iCol) = str(oGame.bChallengeSucceeded)
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadBlueTeam2()
		  lstblue.heading(2) = moMatch.sBlue_Team_2
		  
		  dim oGame as Data.T_Game = moMatch.GameBlue2
		  
		  if oGame = nil then return
		  
		  dim iCol as integer = 2
		  
		  lstBlue.celltag(0, iCol) = oGame
		  
		  ' lstBlue.cell(0, iCol) = dictDefenseType.value(9) //"Defense 1"
		  ' lstBlue.cell(1, iCol) =  dictDefenseType.value(oGame.iDefenseType2_ID) //"Defense 2"
		  ' lstBlue.cell(2, iCol) =  dictDefenseType.value(oGame.iDefenseType3_ID) //"Defense 3"
		  ' lstBlue.cell(3, iCol) =  dictDefenseType.value(oGame.iDefenseType4_ID) //"Defense 4"
		  ' lstBlue.cell(4, iCol) =  dictDefenseType.value(oGame.iDefenseType5_ID) //"Defense 5"
		  ' 
		  ' lstBlue.cell(5, iCol) =  str(oGame.bAuto_LowBarBreechAttempted) + "/" + str(oGame.bAuto_LowBarBreechSucceeded) //"Autonomous 1 Made/Attempts
		  ' lstBlue.cell(6, iCol) =  str(oGame.bAuto_Defense2Attempted) + "/" + str(oGame.bAuto_Defense2Succeeded)
		  ' lstBlue.cell(7, iCol) =  str(oGame.bAuto_Defense3Attempted) + "/" + str(oGame.bAuto_Defense3Succeeded)
		  ' lstBlue.cell(8, iCol) =  str(oGame.bAuto_Defense4Attempted) + "/" + str(oGame.bAuto_Defense4Succeeded)
		  ' lstBlue.cell(9, iCol) =  str(oGame.bAuto_Defense5Attempted) + "/" + str(oGame.bAuto_Defense5Succeeded)
		  ' 
		  ' lstBlue.cell(10, iCol) = str(oGame.bAuto_DefenseReached)
		  ' 
		  ' lstBlue.cell(11, iCol) =  str(oGame.iDefense1Made) + "/" + str(oGame.iDefense1Attempts) //"Def 1 Breach"
		  ' lstBlue.cell(12, iCol) =  str(oGame.iDefense2Made) + "/" + str(oGame.iDefense2Attempts) //"Def 2 Breach"
		  ' lstBlue.cell(13, iCol) =  str(oGame.iDefense3Made) + "/" + str(oGame.iDefense3Attempts) //"Def 3 Breach"
		  ' lstBlue.cell(14, iCol) =  str(oGame.iDefense4Made) + "/" + str(oGame.iDefense4Attempts) //"Def 4 Breach"
		  ' lstBlue.cell(15, iCol) =  str(oGame.iDefense5Made) + "/" + str(oGame.iDefense5Attempts) //"Def 5 Breach"
		  ' 
		  ' lstBlue.cell(16, iCol) =str( oGame.iHighShootMade) + "/" + str(oGame.iHighShootAttempts) //"Hi Shot Attempt"
		  ' 
		  ' lstBlue.cell(17, iCol) =  str(oGame.iLowShootMade) + "/" + str(oGame.iLowShootAttempts) //"Low Shot Attempt"
		  ' 
		  ' 
		  ' lstBlue.cell(18, iCol) =  str(oGame.bScaleAttempted) //"Scale Attempt"
		  ' lstBlue.cell(19, iCol) =  str(oGame.bScaleSuccessful) //"Scale Made"
		  ' 
		  ' lstBlue.cell(20, iCol) = str(oGame.bChallengeAttempted)
		  ' lstBlue.cell(21, iCol) = str(oGame.bChallengeSucceeded)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadBlueTeam3()
		  lstblue.heading(3) = moMatch.sBlue_Team_3
		  
		  dim oGame as Data.T_Game = moMatch.GameBlue3
		  
		  if oGame = nil then return
		  
		  dim iCol as integer = 3
		  
		  lstBlue.celltag(0, iCol) = oGame
		  
		  lstBlue.celltag(0, iCol) = oGame
		  
		  ' lstBlue.cell(0, iCol) = dictDefenseType.value(9) //"Defense 1"
		  ' lstBlue.cell(1, iCol) =  dictDefenseType.value(oGame.iDefenseType2_ID) //"Defense 2"
		  ' lstBlue.cell(2, iCol) =  dictDefenseType.value(oGame.iDefenseType3_ID) //"Defense 3"
		  ' lstBlue.cell(3, iCol) =  dictDefenseType.value(oGame.iDefenseType4_ID) //"Defense 4"
		  ' lstBlue.cell(4, iCol) =  dictDefenseType.value(oGame.iDefenseType5_ID) //"Defense 5"
		  ' 
		  ' lstBlue.cell(5, iCol) =  str(oGame.bAuto_LowBarBreechAttempted) + "/" + str(oGame.bAuto_LowBarBreechSucceeded) //"Autonomous 1 Made/Attempts
		  ' lstBlue.cell(6, iCol) =  str(oGame.bAuto_Defense2Attempted) + "/" + str(oGame.bAuto_Defense2Succeeded)
		  ' lstBlue.cell(7, iCol) =  str(oGame.bAuto_Defense3Attempted) + "/" + str(oGame.bAuto_Defense3Succeeded)
		  ' lstBlue.cell(8, iCol) =  str(oGame.bAuto_Defense4Attempted) + "/" + str(oGame.bAuto_Defense4Succeeded)
		  ' lstBlue.cell(9, iCol) =  str(oGame.bAuto_Defense5Attempted) + "/" + str(oGame.bAuto_Defense5Succeeded)
		  ' 
		  ' lstBlue.cell(10, iCol) = str(oGame.bAuto_DefenseReached)
		  ' 
		  ' lstBlue.cell(11, iCol) =  str(oGame.iDefense1Made) + "/" + str(oGame.iDefense1Attempts) //"Def 1 Breach"
		  ' lstBlue.cell(12, iCol) =  str(oGame.iDefense2Made) + "/" + str(oGame.iDefense2Attempts) //"Def 2 Breach"
		  ' lstBlue.cell(13, iCol) =  str(oGame.iDefense3Made) + "/" + str(oGame.iDefense3Attempts) //"Def 3 Breach"
		  ' lstBlue.cell(14, iCol) =  str(oGame.iDefense4Made) + "/" + str(oGame.iDefense4Attempts) //"Def 4 Breach"
		  ' lstBlue.cell(15, iCol) =  str(oGame.iDefense5Made) + "/" + str(oGame.iDefense5Attempts) //"Def 5 Breach"
		  ' 
		  ' lstBlue.cell(16, iCol) =str( oGame.iHighShootMade) + "/" + str(oGame.iHighShootAttempts) //"Hi Shot Attempt"
		  ' 
		  ' lstBlue.cell(17, iCol) =  str(oGame.iLowShootMade) + "/" + str(oGame.iLowShootAttempts) //"Low Shot Attempt"
		  ' 
		  ' 
		  ' lstBlue.cell(18, iCol) =  str(oGame.bScaleAttempted) //"Scale Attempt"
		  ' lstBlue.cell(19, iCol) =  str(oGame.bScaleSuccessful) //"Scale Made"
		  ' 
		  ' lstBlue.cell(20, iCol) = str(oGame.bChallengeAttempted)
		  ' lstBlue.cell(21, iCol) = str(oGame.bChallengeSucceeded)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadRed()
		  lstRed.DeleteAllRows
		  
		  lstRed.addRow "Defense 1"
		  lstRed.addRow "Defense 2"
		  lstRed.addRow "Defense 3"
		  lstRed.addRow "Defense 4"
		  lstRed.addRow "Defense 5"
		  
		  lstRed.addRow "Auto:  Def 1 Attempted/Succeded"
		  lstRed.addRow "Auto:  Def 2 Attempted/Succeded"
		  lstRed.addRow "Auto:  Def 3 Attempted/Succeded"
		  lstRed.addRow "Auto:  Def 4 Attempted/Succeded"
		  lstRed.addRow "Auto:  Def 5 Attempted/Succeded"
		  
		  lstRed.AddRow "Auto:  Reached Defense"
		  
		  lstRed.addRow "Def 1 Made/Attempts"
		  lstRed.AddRow "Def 2 Made/Attempts"
		  lstRed.AddRow "Def 3 Made/Attempts"
		  lstRed.AddRow "Def 4 Made/Attempts"
		  lstRed.AddRow "Def 5 Made/Attempts"
		  
		  lstRed.AddRow "Hi Shot Made/Attempt"
		  lstRed.addrow "Low Shot Made/Attempt"
		  
		  lstRed.addRow "Scale Attempt"
		  lstRed.addRow "Scale Made"
		  
		  lstRed.addRow "Challenge Attempt"
		  lstRed.addrow "Challenge Succeeded"
		  
		  lstRed.addRow "Edit"
		  
		  LoadRedTeam1
		  LoadRedTeam2
		  LoadRedTeam3
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadRedTeam1()
		  lstRed.heading(1) = moMatch.sRed_Team_1
		  
		  dim oGame as Data.T_Game = moMatch.GameRed1
		  
		  if oGame = nil then return
		  
		  dim iCol as integer = 1
		  
		  lstRed.celltag(0, iCol) = oGame
		  
		  
		  ' lstRed.cell(0, iCol) = dictDefenseType.value(9) //"Defense 1"
		  ' lstRed.cell(1, iCol) =  dictDefenseType.value(oGame.iDefenseType2_ID) //"Defense 2"
		  ' lstRed.cell(2, iCol) =  dictDefenseType.value(oGame.iDefenseType3_ID) //"Defense 3"
		  ' lstRed.cell(3, iCol) =  dictDefenseType.value(oGame.iDefenseType4_ID) //"Defense 4"
		  ' lstRed.cell(4, iCol) =  dictDefenseType.value(oGame.iDefenseType5_ID) //"Defense 5"
		  ' 
		  ' lstRed.cell(5, iCol) =  str(oGame.bAuto_LowBarBreechAttempted) + "/" + str(oGame.bAuto_LowBarBreechSucceeded) //"Autonomous 1 Made/Attempts
		  ' lstRed.cell(6, iCol) =  str(oGame.bAuto_Defense2Attempted) + "/" + str(oGame.bAuto_Defense2Succeeded)
		  ' lstRed.cell(7, iCol) =  str(oGame.bAuto_Defense3Attempted) + "/" + str(oGame.bAuto_Defense3Succeeded)
		  ' lstRed.cell(8, iCol) =  str(oGame.bAuto_Defense4Attempted) + "/" + str(oGame.bAuto_Defense4Succeeded)
		  ' lstRed.cell(9, iCol) =  str(oGame.bAuto_Defense5Attempted) + "/" + str(oGame.bAuto_Defense5Succeeded)
		  ' 
		  ' lstRed.cell(10, iCol) = str(oGame.bAuto_DefenseReached)
		  ' 
		  ' lstRed.cell(11, iCol) =  str(oGame.iDefense1Made) + "/" + str(oGame.iDefense1Attempts) //"Def 1 Breach"
		  ' lstRed.cell(12, iCol) =  str(oGame.iDefense2Made) + "/" + str(oGame.iDefense2Attempts) //"Def 2 Breach"
		  ' lstRed.cell(13, iCol) =  str(oGame.iDefense3Made) + "/" + str(oGame.iDefense3Attempts) //"Def 3 Breach"
		  ' lstRed.cell(14, iCol) =  str(oGame.iDefense4Made) + "/" + str(oGame.iDefense4Attempts) //"Def 4 Breach"
		  ' lstRed.cell(15, iCol) =  str(oGame.iDefense5Made) + "/" + str(oGame.iDefense5Attempts) //"Def 5 Breach"
		  ' 
		  ' lstRed.cell(16, iCol) =str( oGame.iHighShootMade) + "/" + str(oGame.iHighShootAttempts) //"Hi Shot Attempt"
		  ' 
		  ' lstRed.cell(17, iCol) =  str(oGame.iLowShootMade) + "/" + str(oGame.iLowShootAttempts) //"Low Shot Attempt"
		  ' 
		  ' 
		  ' lstRed.cell(18, iCol) =  str(oGame.bScaleAttempted) //"Scale Attempt"
		  ' lstRed.cell(19, iCol) =  str(oGame.bScaleSuccessful) //"Scale Made"
		  ' 
		  ' lstRed.cell(20, iCol) = str(oGame.bChallengeAttempted)
		  ' lstRed.cell(21, iCol) = str(oGame.bChallengeSucceeded)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadRedTeam2()
		  lstRed.heading(2) = moMatch.sRed_Team_2
		  
		  dim oGame as Data.T_Game = moMatch.GameRed2
		  
		  if oGame = nil then return
		  
		  dim iCol as integer = 2
		  
		  lstRed.celltag(0, iCol) = oGame
		  
		  
		  
		  ' lstRed.cell(0, iCol) = dictDefenseType.value(9) //"Defense 1"
		  ' lstRed.cell(1, iCol) =  dictDefenseType.value(oGame.iDefenseType2_ID) //"Defense 2"
		  ' lstRed.cell(2, iCol) =  dictDefenseType.value(oGame.iDefenseType3_ID) //"Defense 3"
		  ' lstRed.cell(3, iCol) =  dictDefenseType.value(oGame.iDefenseType4_ID) //"Defense 4"
		  ' lstRed.cell(4, iCol) =  dictDefenseType.value(oGame.iDefenseType5_ID) //"Defense 5"
		  ' 
		  ' lstRed.cell(5, iCol) =  str(oGame.bAuto_LowBarBreechAttempted) + "/" + str(oGame.bAuto_LowBarBreechSucceeded) //"Autonomous 1 Made/Attempts
		  ' lstRed.cell(6, iCol) =  str(oGame.bAuto_Defense2Attempted) + "/" + str(oGame.bAuto_Defense2Succeeded)
		  ' lstRed.cell(7, iCol) =  str(oGame.bAuto_Defense3Attempted) + "/" + str(oGame.bAuto_Defense3Succeeded)
		  ' lstRed.cell(8, iCol) =  str(oGame.bAuto_Defense4Attempted) + "/" + str(oGame.bAuto_Defense4Succeeded)
		  ' lstRed.cell(9, iCol) =  str(oGame.bAuto_Defense5Attempted) + "/" + str(oGame.bAuto_Defense5Succeeded)
		  ' 
		  ' lstRed.cell(10, iCol) = str(oGame.bAuto_DefenseReached)
		  ' 
		  ' lstRed.cell(11, iCol) =  str(oGame.iDefense1Made) + "/" + str(oGame.iDefense1Attempts) //"Def 1 Breach"
		  ' lstRed.cell(12, iCol) =  str(oGame.iDefense2Made) + "/" + str(oGame.iDefense2Attempts) //"Def 2 Breach"
		  ' lstRed.cell(13, iCol) =  str(oGame.iDefense3Made) + "/" + str(oGame.iDefense3Attempts) //"Def 3 Breach"
		  ' lstRed.cell(14, iCol) =  str(oGame.iDefense4Made) + "/" + str(oGame.iDefense4Attempts) //"Def 4 Breach"
		  ' lstRed.cell(15, iCol) =  str(oGame.iDefense5Made) + "/" + str(oGame.iDefense5Attempts) //"Def 5 Breach"
		  ' 
		  ' lstRed.cell(16, iCol) =str( oGame.iHighShootMade) + "/" + str(oGame.iHighShootAttempts) //"Hi Shot Attempt"
		  ' 
		  ' lstRed.cell(17, iCol) =  str(oGame.iLowShootMade) + "/" + str(oGame.iLowShootAttempts) //"Low Shot Attempt"
		  ' 
		  ' 
		  ' lstRed.cell(18, iCol) =  str(oGame.bScaleAttempted) //"Scale Attempt"
		  ' lstRed.cell(19, iCol) =  str(oGame.bScaleSuccessful) //"Scale Made"
		  ' 
		  ' lstRed.cell(20, iCol) = str(oGame.bChallengeAttempted)
		  ' lstRed.cell(21, iCol) = str(oGame.bChallengeSucceeded)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadRedTeam3()
		  lstRed.heading(3) = moMatch.sRed_Team_3
		  
		  dim oGame as Data.T_Game = moMatch.GameRed3
		  
		  if oGame = nil then return
		  
		  dim iCol as integer = 3
		  
		  lstRed.celltag(0, iCol) = oGame
		  
		  
		  
		  ' lstRed.cell(0, iCol) = dictDefenseType.value(9) //"Defense 1"
		  ' lstRed.cell(1, iCol) =  dictDefenseType.value(oGame.iDefenseType2_ID) //"Defense 2"
		  ' lstRed.cell(2, iCol) =  dictDefenseType.value(oGame.iDefenseType3_ID) //"Defense 3"
		  ' lstRed.cell(3, iCol) =  dictDefenseType.value(oGame.iDefenseType4_ID) //"Defense 4"
		  ' lstRed.cell(4, iCol) =  dictDefenseType.value(oGame.iDefenseType5_ID) //"Defense 5"
		  ' 
		  ' lstRed.cell(5, iCol) =  str(oGame.bAuto_LowBarBreechAttempted) + "/" + str(oGame.bAuto_LowBarBreechSucceeded) //"Autonomous 1 Made/Attempts
		  ' lstRed.cell(6, iCol) =  str(oGame.bAuto_Defense2Attempted) + "/" + str(oGame.bAuto_Defense2Succeeded)
		  ' lstRed.cell(7, iCol) =  str(oGame.bAuto_Defense3Attempted) + "/" + str(oGame.bAuto_Defense3Succeeded)
		  ' lstRed.cell(8, iCol) =  str(oGame.bAuto_Defense4Attempted) + "/" + str(oGame.bAuto_Defense4Succeeded)
		  ' lstRed.cell(9, iCol) =  str(oGame.bAuto_Defense5Attempted) + "/" + str(oGame.bAuto_Defense5Succeeded)
		  ' 
		  ' lstRed.cell(10, iCol) = str(oGame.bAuto_DefenseReached)
		  ' 
		  ' lstRed.cell(11, iCol) =  str(oGame.iDefense1Made) + "/" + str(oGame.iDefense1Attempts) //"Def 1 Breach"
		  ' lstRed.cell(12, iCol) =  str(oGame.iDefense2Made) + "/" + str(oGame.iDefense2Attempts) //"Def 2 Breach"
		  ' lstRed.cell(13, iCol) =  str(oGame.iDefense3Made) + "/" + str(oGame.iDefense3Attempts) //"Def 3 Breach"
		  ' lstRed.cell(14, iCol) =  str(oGame.iDefense4Made) + "/" + str(oGame.iDefense4Attempts) //"Def 4 Breach"
		  ' lstRed.cell(15, iCol) =  str(oGame.iDefense5Made) + "/" + str(oGame.iDefense5Attempts) //"Def 5 Breach"
		  ' 
		  ' lstRed.cell(16, iCol) =str( oGame.iHighShootMade) + "/" + str(oGame.iHighShootAttempts) //"Hi Shot Attempt"
		  ' 
		  ' lstRed.cell(17, iCol) =  str(oGame.iLowShootMade) + "/" + str(oGame.iLowShootAttempts) //"Low Shot Attempt"
		  ' 
		  ' 
		  ' lstRed.cell(18, iCol) =  str(oGame.bScaleAttempted) //"Scale Attempt"
		  ' lstRed.cell(19, iCol) =  str(oGame.bScaleSuccessful) //"Scale Made"
		  ' 
		  ' lstRed.cell(20, iCol) = str(oGame.bChallengeAttempted)
		  ' lstRed.cell(21, iCol) = str(oGame.bChallengeSucceeded)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private dictDefenseType As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private moMatch As Data.t_matches
	#tag EndProperty


#tag EndWindowCode

#tag Events lstBlue
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  'if row mod 2 = 0 then
		  //even
		  g.ForeColor = &cC8D9FF00
		  'else
		  '//odd
		  'g.ForeColor = &cFFFFFF
		  'end
		  
		  If me.selected(row) then
		    g.ForeColor = &c0000FF
		  end
		  
		  g.FillRect 0, 0, g.Width, g.Height
		  
		  if column > 0 then
		    if row = me.ListCount - 1then
		      dim iCaps as integer = 20
		      g.ForeColor = &ccecece
		      g.FillRoundRect iCaps, 0, g.width - iCaps*2 , g.Height, 20, 20
		      
		      g.ForeColor = &c000000
		      g.DrawRoundRect iCaps, 0, g.width - iCaps*2 , g.Height, 20, 20
		      
		      g.ForeColor = &c000000
		      dim iWidth as integer = g.StringWidth("Edit")
		      g.drawstring "Edit", (g.width - iWidth)/2, 13
		    end
		  end
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.heading(0) = "Item"
		  me.ColumnAlignment(1) = me.AlignCenter
		  me.ColumnAlignment(2) = me.AlignCenter
		  me.ColumnAlignment(3) = me.AlignCenter
		  
		  me.ColumnWidths = "*, 20%, 20%, 20%"
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  if me.selected(row) then
		    g.ForeColor = &cFFFFFF
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  if row = me.ListCount-1 then
		    dim oGame as Data.t_game
		    oGame = me.celltag(0, column)
		    
		    if oGame = nil then
		      oGame = new Data.t_game
		      oGame.sGameUUID = modGlobals.GetGUID
		      oGame.sMatchKey = moMatch.skey
		      oGame.sTeamKey = me.heading(column)
		    end
		    
		    dim w as new winGame
		    w.Display(oGame)
		    
		    
		    return true
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lstRed
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  'if row mod 2 = 0 then
		  //even
		  g.ForeColor = &cFFCAC200
		  'else
		  '//odd
		  'g.ForeColor = &cFFFFFF
		  'end
		  
		  If me.selected(row) then
		    g.ForeColor = &c0000FF
		  end
		  
		  g.FillRect 0, 0, g.Width, g.Height
		  if column > 0 then
		    if row = me.ListCount - 1then
		      dim iCaps as integer = 20
		      g.ForeColor = &ccecece
		      g.FillRoundRect iCaps, 0, g.width - iCaps*2 , g.Height, 20, 20
		      
		      g.ForeColor = &c000000
		      g.DrawRoundRect iCaps, 0, g.width - iCaps*2 , g.Height, 20, 20
		      
		      g.ForeColor = &c000000
		      dim iWidth as integer = g.StringWidth("Edit")
		      g.drawstring "Edit", (g.width - iWidth)/2, 13
		    end
		  end
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.heading(0) = "Item"
		  me.ColumnAlignment(1) = me.AlignCenter
		  me.ColumnAlignment(2) = me.AlignCenter
		  me.ColumnAlignment(3) = me.AlignCenter
		  
		  me.ColumnWidths = "*, 20%, 20%, 20%"
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  if me.selected(row) then
		    g.ForeColor = &cFFFFFF
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  if row = me.ListCount-1 then
		    dim oGame as Data.t_game
		    oGame = me.celltag(0, column)
		    
		    if oGame = nil then
		      oGame = new Data.t_game
		      oGame.sGameUUID = modGlobals.GetGUID
		      oGame.sMatchKey = moMatch.skey
		      oGame.sTeamKey = me.heading(column)
		    end
		    
		    dim w as new winGame
		    w.Display(oGame)
		    
		    
		    return true
		  end
		End Function
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
