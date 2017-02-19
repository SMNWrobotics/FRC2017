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
		  tbl.RemoveAll
		  
		  tbl.EstimatedRowHeight = 55
		  
		  tbl.AddSection ""
		  
		  dim cell as iOSTableCellData
		  dim oGear as gearAttempts
		  
		  cell = tbl.CreateCell
		  cell.text = "Starting Position"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(gearAttempts))
		  oGear = gearAttempts(cell.control)
		  oGear.SetGame(m_oGame, "Gear 1")
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(gearAttempts))
		  oGear = gearAttempts(cell.control)
		  oGear.SetGame(m_oGame, "Gear 2")
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(gearAttempts))
		  oGear = gearAttempts(cell.control)
		  oGear.SetGame(m_oGame, "Gear 3")
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCell
		  cell.text = "Passed Base Line"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(cellShooter))
		  dim oCustomCell as cellShooter = cellShooter(cell.control)
		  tbl.addRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(cellShooter))
		  oCustomCell = cellShooter(cell.control)
		  tbl.addRow(0, cell)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetGame(oGame as DataFile.t_game)
		  m_oGame = oGame
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		m_oGame As DataFile.t_game
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
