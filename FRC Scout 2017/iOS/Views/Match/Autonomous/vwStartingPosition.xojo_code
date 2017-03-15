#tag IOSView
Begin iosView vwStartingPosition
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Select Starting Position"
   Top             =   0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
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
		Sub LoadStartingPosition(oStartingPosition as DataFile.T_Game)
		  m_oStartingPosition = oStartingPosition
		  
		  iSelectedRow = -1
		  sType = "StartingPosition"
		  
		  tbl.removeall
		  
		  tbl.AddSection ""
		  
		  dim oCell as iOSTableCellData
		  
		  oCell = tbl.CreateCell
		  oCell.text = "A"
		  if m_oStartingPosition.sValue = oCell.Text then
		    oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Checkmark
		  else
		    oCell.AccessoryType = iOSTableCellData.AccessoryTypes.None
		  end
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.text = "B"
		  if m_oStartingPosition.sValue = oCell.Text then
		    oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Checkmark
		  else
		    oCell.AccessoryType = iOSTableCellData.AccessoryTypes.None
		  end
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.text = "C"
		  if m_oStartingPosition.sValue = oCell.Text then
		    oCell.AccessoryType = iOSTableCellData.AccessoryTypes.Checkmark
		  else
		    oCell.AccessoryType = iOSTableCellData.AccessoryTypes.None
		  end
		  tbl.AddRow(0, oCell)
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action(sType as text, sValue as Text, sTag as Text)
	#tag EndHook


	#tag Property, Flags = &h0
		iSelectedRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		m_oStartingPosition As DataFile.T_Game
	#tag EndProperty

	#tag Property, Flags = &h0
		sType As text
	#tag EndProperty


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim oCell as iOSTableCellData = me.RowData(section, row)
		  
		  m_oStartingPosition.sValue = oCell.Text
		  m_oStartingPosition.save
		  
		  Raiseevent Action(sType, oCell.Text, oCell.Text)
		  
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
		Name="sType"
		Group="Behavior"
		Type="text"
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
