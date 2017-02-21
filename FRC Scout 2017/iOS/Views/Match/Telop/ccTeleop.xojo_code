#tag IOSContainerControl
Begin iOSContainerControl ccTeleop
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
      AutoLayout      =   tbl, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 3, <Parent>, 3, False, +1.00, 1, 1, *kStdGapCtlToViewV, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   440.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   20
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Event
		Sub Open()
		  vwParent = GetView
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadList()
		  ' oClimbingAttempted = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingAttempted")
		  ' oClimbingMade = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingMade")
		  ' oDefenseEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefenseEffectiveness")
		  ' oDefensePlayed = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefensePlayed")
		  ' oDriverSkill = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DriverSkill")
		  ' 
		  ' oGearCycleAverage = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearCycleAverage")
		  ' oGearCycleCount = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearCycleCount")
		  ' oGearCycleTotalTime = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearCycleTotalTime")
		  ' oGearsAcquired = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearsAcquired")
		  ' oGearsMade = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "GearsMade")
		  ' 
		  ' oHighGoalCycles = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalCycles")
		  ' oHighGoalPercentage = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalPercentage")
		  ' oLowGoalCycles = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalCycles")
		  ' oLowGoalPercentage = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalPercentage")
		  ' oNotes = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "TeleopNotes")
		  ' 
		  ' oHighGoalEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "HighGoalEffectiveness")
		  ' oLowGoalEffectiveness = Data.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "LowGoalEffectiveness")
		  
		  tbl.RemoveAll
		  
		  ' tbl.EstimatedRowHeight = 55
		  
		  tbl.AddSection ""
		  
		  dim oCell as iOSTableCellData
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Gears"
		  oCell.tag = new vwTeleopGears(m_sMatchKey, m_sTeamNumber)
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "High Goals"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Low Goals"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Driver Skill"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Climbing"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Defense"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Notes"
		  tbl.AddRow(0, oCell)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text)
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  LoadLIst
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event GetView() As iOSView
	#tag EndHook


	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty

	#tag Property, Flags = &h0
		vwParent As iOSView
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim oCell as iOSTableCellData = me.RowData(section, row)
		  
		  if oCell.tag = nil then return
		  
		  dim vw as iOSView = oCell.Tag
		  
		  self.vwParent.PushTo(vw)
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
