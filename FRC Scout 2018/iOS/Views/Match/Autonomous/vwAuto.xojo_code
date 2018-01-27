#tag IOSView
Begin iosView vwAuto
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 46, , True
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -6, , True
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   408.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   66
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton btnDone
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnDone, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnDone, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btnDone, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnDone, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Done"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   "nil"
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   28
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub LoadList()
		  tbl.RemoveAll
		  
		  tbl.EstimatedRowHeight = 55
		  
		  tbl.AddSection ""
		  
		  dim oGame as DataFile.T_Game
		  dim cell as iOSTableCellData
		  dim oBoolean as ccBoolean
		  dim oLeftRight as ccLeftRight
		  dim oStart as ccStartingPosition
		  
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccStartingPosition))
		  oStart = ccStartingPosition(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "StartingPosition")
		  oStart.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccLeftRight))
		  oLeftRight = ccLeftRight(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoScalePosition")
		  oLeftRight.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccLeftRight))
		  oLeftRight = ccLeftRight(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoSwitchPosition")
		  oLeftRight.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "Baseline")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoScaleMade")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoSwitchAttempted")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoSwitchMade")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoScaleAttempted")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCustomCell(GetTypeInfo(ccBoolean))
		  oBoolean = ccBoolean(cell.control)
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoScaleMade")
		  oBoolean.SetGame(oGame)
		  cell.Tag = oGame
		  tbl.AddRow(0, cell)
		  
		  'cell = tbl.CreateCustomCell(GetTypeInfo(ccAttempts))
		  'oAttempts = ccAttempts(cell.control)
		  'oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "Gear1")
		  'oAttempts.SetGame(oGame)
		  'cell.Tag = oGame
		  'tbl.AddRow(0, cell)
		  
		  
		  
		  cell = tbl.CreateCell
		  cell.text = "Notes"
		  oGame = DataFile.T_Game.LoadMatchValue(m_sMatchKey, m_sTeamNumber, "AutoNotes")
		  cell.Tag = oGame
		  if oGame.sValue <> "" then
		    Cell.DetailText = oGame.sValue.left(20)
		  end
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReturnValue(oInstance as vwStartingPosition, sType as text, sValue as Text, sTag as Text)
		  RemoveHandler oInstance.Action, AddressOf ReturnValue
		  
		  
		  select case sType
		  case "StartingPosition"
		    oCell.DetailText = sValue
		    tbl.ReloadRow(0, iRow)
		    
		  case else
		    
		    break //Didn't handle
		    
		  end
		  
		  oInstance.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetGame(sMatchKey as text, sTeamNumber as text, sAlliance as text)
		  m_sMatchKey = sMatchKey
		  m_sTeamNumber = sTeamNumber
		  LoadLIst
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		iRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sMatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		m_sTeamNumber As text
	#tag EndProperty

	#tag Property, Flags = &h0
		oCell As iOSTableCellData
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  oCell = me.RowData(section, row)
		  
		  select case oCell.text
		    
		  case "Notes"
		    dim vw as new vwNotes
		    vw.LoadNotes( oCell.tag)
		    
		    self.pushto(vw)
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDone
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
