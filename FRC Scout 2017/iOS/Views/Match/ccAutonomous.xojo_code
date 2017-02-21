#tag IOSContainerControl
Begin iOSContainerControl ccAutonomous
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
      AutoLayout      =   tbl, 4, <Parent>, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 3, <Parent>, 3, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   480.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   0
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub LoadList()
		  'moBaseline = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "Baseline")
		  'moGear1 = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "Gear1")
		  'moGear2 =  DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "Gear2")
		  'moGear3 =  DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "Gear3")
		  'moHighGoal =  DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoal")
		  'moHighGoalAttempt = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalAttempt")
		  'moLowGoal =  DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoal")
		  'moLowGoalAttempt =  DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalAttempt")
		  'moStartingPosition =  DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "StartingPosition")
		  'moNotes = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "AutoNotes")
		  
		  tbl.RemoveAll
		  
		  tbl.EstimatedRowHeight = 55
		  
		  tbl.AddSection ""
		  
		  dim oGame as DataFile.T_Game
		  dim cell as iOSTableCellData
		  dim oGear as gearAttempts
		  dim oGoal as cellShooter
		  
		  cell = tbl.CreateCell
		  cell.text = "Starting Position"
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "")
		  cell.Tag = oGame
		  Cell.DetailText = oGame.sValue
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(gearAttempts))
		  oGear = gearAttempts(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "Gear1")
		  oGear.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(gearAttempts))
		  oGear = gearAttempts(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "Gear2")
		  oGear.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(gearAttempts))
		  oGear = gearAttempts(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "Gear3")
		  oGear.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(cellMadeBaseline))
		  Dim oCheckBox as cellMadeBaseline = cellMadeBaseLine(cell.Control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "Baseline")
		  oCheckBox.SetGame(oGame)
		  cell.tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(cellShooter))
		  oGoal = cellShooter(cell.Control)
		  dim oGoalAttempt as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "HighGoalAttempt")
		  dim oGoalPercent as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "HighGoal")
		  oGoal.SetGame(oGoalAttempt, oGoalPercent)
		  tbl.AddRow(0, cell)
		  
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(cellShooter))
		  oGoal = cellShooter(cell.Control)
		  oGoalAttempt = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "LowGoalAttempt")
		  oGoalPercent = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "LowGoal")
		  oGoal.SetGame(oGoalAttempt, oGoalPercent)
		  tbl.AddRow(0, cell)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text)
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  LoadLIst
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty


#tag EndWindowCode

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
		Name="Height"
		InitialValue="480"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="m_sMatchKey"
		Group="Behavior"
		Type="text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="m_sTeamNumber"
		Group="Behavior"
		Type="text"
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
