#tag IOSContainerControl
Begin iOSContainerControl ccCubes
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   480.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   320.0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 7, , 0, False, +1.00, 4, 1, 320, , True
      AutoLayout      =   tbl, 3, <Parent>, 3, False, +1.00, 4, 1, 104, , True
      AutoLayout      =   tbl, 8, , 0, False, +1.00, 4, 1, 296, , True
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   296.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   104
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 1, tbl, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Cycle Count:"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   0
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 100, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Total Time:"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   38
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label3, 1, Label2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 3, Label2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 4, 1, 100, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   0
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Avg Cycle:"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   76
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblCycleCount
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblCycleCount, 1, Label3, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   lblCycleCount, 7, , 0, False, +1.00, 4, 1, 57, , True
      AutoLayout      =   lblCycleCount, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblCycleCount, 11, Label1, 11, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   108
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System		"
      TextSize        =   0
      Top             =   0
      Visible         =   True
      Width           =   57.0
   End
   Begin iOSLabel lblCycleTotalTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblCycleTotalTime, 1, lblCycleCount, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCycleTotalTime, 7, , 0, False, +1.00, 4, 1, 57, , True
      AutoLayout      =   lblCycleTotalTime, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblCycleTotalTime, 11, Label2, 11, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   108
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System		"
      TextSize        =   0
      Top             =   38
      Visible         =   True
      Width           =   57.0
   End
   Begin iOSLabel lblCycleAverage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblCycleAverage, 1, lblCycleTotalTime, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCycleAverage, 7, , 0, False, +1.00, 4, 1, 57, , True
      AutoLayout      =   lblCycleAverage, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblCycleAverage, 11, Label3, 11, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   108
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System		"
      TextSize        =   0
      Top             =   76
      Visible         =   True
      Width           =   57.0
   End
   Begin Xojo.Core.Timer tmrCycle
      Height          =   32
      Height          =   "32"
      Left            =   140
      Left            =   140
      LockedInPosition=   False
      Mode            =   "0"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   1000
      Scope           =   0
      Tolerance       =   0
      Top             =   140
      Top             =   140
      Width           =   32
      Width           =   "32"
   End
   Begin iOSLabel lblCycleCurrentTime
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblCycleCurrentTime, 11, Label2, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCycleCurrentTime, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblCycleCurrentTime, 1, lblCycleTotalTime, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCycleCurrentTime, 7, , 0, False, +1.00, 4, 1, 57, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   165
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System		"
      TextSize        =   0
      Top             =   38
      Visible         =   True
      Width           =   57.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub LoadData()
		  oCubesFromFloor = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromFloor")
		  oCubesFromOpponent = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromOpponent")
		  oCubesFromPortal = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromPortal")
		  oCubesFromPyramid = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromPyramid")
		  oCubesFromYou = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesFromYou")
		  oCubeFromRobot = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubeFromRobot")
		  
		  oCountOpponentSwitch = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountOpponentSwitch")
		  oCountPortalIntake = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountPortalIntake")
		  oCountScale = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountScale")
		  oCountYourSwitch = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CountYourSwitch")
		  oCubesLost = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CubesLost")
		  
		  oCycleCount = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CycleCount")
		  oCycleTotalTime = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CycleTotalTime")
		  oCycleAverageTime = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "CycleAverageTime")
		  
		  
		  lblCycleCount.text = oCycleCount.sValue
		  lblCycleTotalTime.text = oCycleTotalTime.sValue
		  lblCycleAverage.text = oCycleAverageTime.sValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadList()
		  Dim cell As iOSTableCellData
		  
		  If bDestination = False Then
		    //Source
		    tbl.RemoveAll
		    
		    tbl.AddSection "Cube Source"
		    
		    dim icnt as integer
		    
		    icnt = integer.parse(oCubeFromRobot.svalue)
		    if iCnt = 0 then
		      cell = tbl.CreateCell("Robot")
		      cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		      cell.tag = oCubeFromRobot
		      tbl.addRow 0, cell
		    end
		    
		    cell = tbl.CreateCell("Floor")
		    cell.DetailText = oCubesFromFloor.svalue
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    cell.tag = oCubesFromFloor
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Portal Cubes")
		    cell.DetailText = oCubesFromPortal.sValue
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    cell.tag = oCubesFromPortal
		    tbl.addRow 0, cell
		    
		    'cell = tbl.CreateCell("Portal Transfer")
		    'cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    'tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Pyramid")
		    cell.DetailText = oCubesFromPyramid.sValue
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    cell.tag = oCubesFromPyramid
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Opponent Cubes")
		    cell.DetailText = oCubesFromOpponent.sValue
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Ours Cubes")
		    cell.DetailText = oCubesFromYou.sValue
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		    tbl.addRow 0, cell
		    
		  Else
		    
		    tbl.RemoveAll
		    
		    tbl.AddSection "Cube Destination"
		    
		    cell = tbl.CreateCell("Lost")
		    cell.tag = oCubesLost
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Portal Intake")
		    cell.tag = oCountPortalIntake
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Scale")
		    cell.tag = oCountScale
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Switch Opponent")
		    cell.tag = oCountOpponentSwitch
		    tbl.addRow 0, cell
		    
		    cell = tbl.CreateCell("Switch Ours")
		    cell.tag = oCountYourSwitch
		    tbl.addRow 0, cell
		    
		    
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text)
		  msMatchKey = sMatchKey
		  msTeamNumber = sTeamNumber
		  
		  LoadData
		  LoadList
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bDestination As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		iSeconds As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private msMatchKey As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private msTeamNumber As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountOpponentSwitch As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountPortalIntake As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountScale As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCountYourSwitch As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubeFromRobot As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromFloor As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromOpponent As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromPortal As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromPyramid As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesFromYou As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCubesLost As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCycleAverageTime As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCycleCount As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oCycleTotalTime As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  Dim s As Text = Me.SectionTitle(section)
		  
		  If s = "Cube Source" Then
		    
		    dim oRow as iOSTableCellData = me.RowData(section, row)
		    dim oData as DataFile.T_Game = oRow.tag
		    dim iCnt as integer = integer.parse(oData.sValue) + 1
		    oData.SValue = icnt.ToText
		    oData.Save
		    
		    icnt = integer.Parse(oCycleCount.sValue) + 1
		    oCycleCount.sValue = iCnt.ToText
		    lblCycleCount.text = oCycleCount.sValue
		    oCycleCount.save
		    
		    
		    iSeconds = 0
		    tmrCycle.mode = xojo.core.timer.Modes.Multiple
		    
		    bDestination = True
		    loadList
		  Else
		    
		    dim oRow as iOSTableCellData = me.RowData(section, row)
		    dim oData as DataFile.T_Game = oRow.tag
		    dim iCnt as integer = integer.parse(oData.sValue) + 1
		    oData.SValue = icnt.ToText
		    oData.save
		    
		    if oRow.text <> "Lost" then
		      dim iCycleCount as integer = integer.FromText(lblCycleCount.text)
		      oCycleCount.svalue = lblCycleCount.text
		      oCycleCount.save
		      
		      dim iTotalTime as integer = integer.Parse(lblCycleCurrentTime.text) + integer.Parse(oCycleTotalTime.sValue)
		      oCycleTotalTime.sValue = iTotalTime.ToText
		      lblCycleTotalTime.text = oCycleTotalTime.sValue
		      oCycleTotalTime.save
		      
		      dim dAvg as double = iTotalTime/iCycleCount
		      oCycleAverageTime.svalue = dAvg.ToText
		      lblCycleAverage.text = oCycleAverageTime.svalue
		      oCycleAverageTime.save
		      
		      tmrCycle.mode = xojo.core.timer.Modes.off
		    end
		    
		    
		    bDestination = False
		    LoadList
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrCycle
	#tag Event
		Sub Action()
		  iSeconds = iSeconds + 1
		  
		  lblCycleCurrentTime.text = iSeconds.Totext
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AccessibilityHint"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="bDestination"
		Group="Behavior"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		InitialValue="480"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="iSeconds"
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
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		InitialValue="320"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
