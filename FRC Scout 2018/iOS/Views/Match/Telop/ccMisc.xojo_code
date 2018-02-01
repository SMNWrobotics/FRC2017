#tag IOSContainerControl
Begin iOSContainerControl ccMisc
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
      AutoLayout      =   tbl, 8, <Parent>, 8, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
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
	#tag Method, Flags = &h21
		Private Sub LoadData()
		  tbl.RemoveAll
		  tbl.EstimatedRowHeight = 55
		  
		  tbl.AddSection "Miscellaneous Data"
		  
		  Dim cell As iOSTableCellData
		  Dim oBoolean As ccBoolean
		  Dim oGame As DataFile.T_Game
		  Dim oEffect As ccEffectiveness
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "Parked")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingAttemptedRobot")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingAttemptedRung")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "ClimbingMade")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefensePlayed")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccEffectiveness))
		  oEffect = ccEffectiveness(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DefenseEffectiveness")
		  oEffect.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccEffectiveness))
		  oEffect = ccEffectiveness(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "DriverSkill")
		  oEffect.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  
		  cell = tbl.CreateCell
		  cell.Text = "Notes"
		  oGame = DataFile.T_Game.LoadMatchValue(msMatchKey, msTeamNumber, "TeleopNotes")
		  cell.Tag = oGame
		  If oGame.sValue <> "" Then
		    Cell.DetailText = oGame.sValue.Left(Min(oGame.sValue.Length, 20))
		  End
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text)
		  msMatchKey = sMatchKey
		  msTeamNumber = sTeamNumber
		  
		  LoadData
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private msMatchKey As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private msTeamNumber As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		oCell As iOSTableCellData
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingAttemptedRobot As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingAttemptedRung As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oClimbingMade As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oDefenseEffectiveness As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oDefensePlayed As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oDriverSkill As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oNotes As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		oParent As vwTeleop
	#tag EndProperty

	#tag Property, Flags = &h0
		oParked As DataFile.T_Game
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  oCell = Me.RowData(section, row)
		  
		  select case oCell.text
		    
		  Case "Notes"
		    dim vw as new vwNotes
		    vw.LoadNotes( oCell.tag)
		    
		    oParent.pushto(vw)
		    
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
