#tag IOSView
Begin iosView vwListSelect
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Select Value"
   Top             =   0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   415.0
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
	#tag Method, Flags = &h0
		Function GetCompLevel() As text
		  dim oCell as iOSTableCellData = tbl.RowData(0, iSelectedRow)
		  
		  return oCell.Text
		  
		  'select case oCell.Text
		  'case "Qualifier Match"
		  'return "qm"
		  'case "Quarter Finals"
		  'return "qf"
		  'case "Semi-Finals"
		  'return "sf"
		  'case "Finals"
		  'return "f"
		  'case else
		  'break
		  'end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadCompLevel()
		  iSelectedRow = -1
		  sType = "Comp"
		  
		  tbl.removeall
		  
		  tbl.AddSection ""
		  
		  tbl.addRow(0, tbl.createcell("Finals"))
		  tbl.addRow(0, tbl.createcell("Semi-Finals"))
		  tbl.addRow(0, tbl.createcell("Qualifier Finals"))
		  tbl.addRow(0, tbl.createcell("Qualifier Match"))
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadMatches(sCompLevel as text)
		  tbl.removeall
		  
		  tbl.AddSection ""
		  
		  for each oMatch as DataFile.t_matches in DataFile.t_matches.ListByEventTag(app.oSelectedEvent.skey, sCompLevel)
		    
		    tbl.addRow(0, tbl.createcell(oMatch.imatch_number.ToText))
		    
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		iSelectedRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sType As text
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  iSelectedRow = row
		  
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
		Name="iSelectedRow"
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
