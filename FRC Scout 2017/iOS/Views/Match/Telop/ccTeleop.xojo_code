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
		  tbl.EstimatedRowHeight = 40
		  
		  
		  tbl.AddSection ""
		  
		  
		  dim oCell as iOSTableCellData
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Gears"
		  oCell.tag = new vwTeleopGears(m_sMatchKey, m_sTeamNumber)
		  oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Goals"
		  oCell.tag = new vwGoals(m_sMatchKey, m_sTeamNumber)
		  oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, oCell)
		  
		  
		  oCell = tbl.CreateCustomCell(GetTypeInfo(cellDriverSkill))
		  dim oDriverSkillCell as cellDriverSkill = cellDriverSkill(oCell.control)
		  dim oGame as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "DriverSkill")
		  oDriverSkillCell.SetGame(oGame)
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCustomCell(GetTypeInfo(cellClimbing))
		  dim oClimbingCell as cellClimbing = cellClimbing(oCell.control)
		  dim oClimbingAttempted as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "ClimbingAttempted")
		  dim oClimbingmade as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "ClimbingMade")
		  oClimbingCell.SetGame(oClimbingAttempted, oClimbingMade)
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCustomCell(GetTypeInfo(cellDefense))
		  dim ocellDefense as cellDefense = cellDefense(oCell.control)
		  dim oDefenseEffectiveNess as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "DefenseEffectiveness")
		  dim oDefensePlayed as DataFile.T_Game = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "DefensePlayed")
		  ocellDefense.SetGame(oDefensePlayed, oDefenseEffectiveNess)
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.text = "Notes"
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "TeleopNotes")
		  oCell.Tag = oGame
		  if oGame.sValue <> "" then
		    oCell.DetailText = "Has Notes"
		  end
		  oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, oCell)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text, sAlliance as text)
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  LoadLIst
		  
		  ' ' ObjC Declare to get a ref to a class by its name
		  ' Declare Function objc_getClass Lib "/usr/lib/libobjc.dylib" (aClassName As CString) As Ptr
		  ' ' Here is the corresponding Xojo call
		  ' Dim theUIColorClassRef As Ptr =  objc_getClass("UIColor")
		  ' 
		  ' ' UIKit Declare to create a color object
		  ' Declare Function decl_GetColorWithRGBA Lib "UIKit" selector "colorWithRed:green:blue:alpha:" (UIColorClassRef As Ptr, red As Single, green As Single, blue As Single, alpha As Single) As Ptr
		  ' ' Here is the corresponding Xojo call, where we create a flashy green color
		  ' Dim myUIColorObject As ptr 
		  ' If sAlliance = "Blue" Then
		  ' myUIColorObject= decl_GetColorWithRGBA(theUIColorClassRef, (206 / 255), (207/ 255), (254 / 255), 1.0)
		  ' Else
		  ' myUIColorObject= decl_GetColorWithRGBA(theUIColorClassRef, (253 / 255), (185/ 255), (181 / 255), 1.0)
		  ' End
		  ' ' UIKit Declare to get a reference to a View from its ViewController
		  ' Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		  ' ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		  ' Dim myViewPtr As Ptr = decl_GetView(Self.Handle)
		  ' 
		  ' ' UIKit Declare to set the backgound color of a View
		  ' Declare Sub decl_SetBackgroundColor Lib "UIKit" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' ' Here is the corresponding Xojo call
		  ' decl_SetBackgroundColor(myViewPtr, myUIColorObject)
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
		  
		  if oCell.text = "Notes" then
		    dim vw as new vwNotes
		    vw.LoadNotes( oCell.tag)
		    
		    self.vwParent.pushto(vw)
		    
		  else
		    dim vw as iOSView = oCell.Tag
		    
		    self.vwParent.PushTo(vw)
		  end
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
