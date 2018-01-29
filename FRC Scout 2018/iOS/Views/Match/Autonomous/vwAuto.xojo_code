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
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -100, , True
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   314.0
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
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   28
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton btnTimer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnTimer, 7, , 0, False, +1.00, 4, 1, 60, , True
      AutoLayout      =   btnTimer, 2, lblTimer, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   btnTimer, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnTimer, 3, tbl, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      Caption         =   "Timer"
      Enabled         =   True
      Height          =   30.0
      Left            =   97
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   388
      Visible         =   True
      Width           =   60.0
   End
   Begin iOSLabel lblTimer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTimer, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblTimer, 1, <Parent>, 1, False, +1.00, 4, 1, 165, , True
      AutoLayout      =   lblTimer, 3, btnTimer, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblTimer, 7, , 0, False, +1.00, 4, 1, 69, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   165
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      Top             =   388
      Visible         =   True
      Width           =   69.0
   End
   Begin Xojo.Core.Timer tmrGame
      Height          =   32
      Height          =   "32"
      Left            =   100
      Left            =   100
      LockedInPosition=   False
      Mode            =   "0"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   1000
      Scope           =   2
      Tolerance       =   0
      Top             =   100
      Top             =   100
      Width           =   32
      Width           =   "32"
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
		iSeconds As Integer
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
		  
		  App.CurrentScreen.Content = app.oOldContent
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnTimer
	#tag Event
		Sub Action()
		  If tmrGame.Mode = xojo.core.timer.Modes.Multiple Then
		    tmrGame.Mode = xojo.core.timer.Modes.Off
		    iSeconds = 0
		  Else
		    tmrGame.Mode = xojo.core.timer.Modes.Multiple
		    iSeconds = 0
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrGame
	#tag Event
		Sub Action()
		  iSeconds = iSeconds + 1
		  lblTimer.Text = iSeconds.ToText
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
		Name="iRow"
		Group="Behavior"
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
