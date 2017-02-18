#tag IOSView
Begin iosView vwGame
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Match Setup"
   Top             =   0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 8, , 0, False, +1.00, 1, 1, 347, 
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   347.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  if oSelect = nil then return
		  
		  select case oSelect.sType
		  case "Comp"
		    oCell.DetailText = oSelect.GetCompLevel
		    tbl.ReloadRow(0, iRow)
		    
		    Select case oCell.DetailText 
		      
		    case "Finals"
		      level = "f"
		    case"Semi-Finals"
		      level = "sf"
		    case"Qualifier Finals"
		      level = "qf"
		    case"Qualifier Match"
		      level = "qm"
		    case else
		      break
		      
		    end
		  end
		  'dim cell as iOSTableCellData
		  'cell.text "Level"
		  'Cell.DetailText = ""
		  'cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  'tbl.AddRow(0, cell)
		  '
		  'cell = tbl.CreateCell
		  'cell.text "Match"
		  'Cell.DetailText = ""
		  'cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  'tbl.AddRow(0, cell)
		  '
		  'cell = tbl.CreateCell
		  'cell.text "Alliance"
		  'Cell.DetailText = ""
		  'cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  'tbl.AddRow(0, cell)
		  '
		  'cell = tbl.CreateCell
		  'cell.text "Team Number"
		  'Cell.DetailText = ""
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  tbl.RemoveAll
		  
		  tbl.AddSection ""
		  
		  dim cell as iOSTableCellData
		  
		  cell = tbl.CreateCell
		  cell.text = "Level"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCell
		  cell.text = "Match"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCell
		  cell.text = "Alliance"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		  cell = tbl.CreateCell
		  cell.text = "Team Number"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		iRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Level As text
	#tag EndProperty

	#tag Property, Flags = &h0
		oCell As iOSTableCellData
	#tag EndProperty

	#tag Property, Flags = &h0
		oSelect As vwListSelect
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  iRow = row
		  oCell = me.RowData(section, row)
		  
		  select case oCell.Text
		  case "Level"
		    
		    oSelect = new vwListSelect
		    oSelect.LoadCompLevel
		    
		  case  "Match"
		    oSelect = new vwListSelect
		    oSelect.LoadMatches(Level)
		    
		  case "Alliance"
		    
		  case "Team Number"
		    
		  case else
		    break
		    
		  end
		  
		  self.PushTo(oSelect)
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
