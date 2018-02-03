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
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, , True
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
		Sub LoadAlliances()
		  self.Title = "Pick Alliance Color"
		  
		  iSelectedRow = -1
		  sType = "Alliance"
		  
		  tbl.removeall
		  
		  tbl.AddSection ""
		  
		  dim oCell as iOSTableCellData
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Blue"
		  oCell.Tag = "Blue"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Red"
		  oCell.Tag = "Red"
		  tbl.AddRow(0, oCell)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadCompLevel()
		  self.Title = "Pick Level"
		  
		  iSelectedRow = -1
		  sType = "Comp"
		  
		  tbl.removeall
		  
		  tbl.AddSection ""
		  
		  dim oCell as iOSTableCellData
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Qualifier Match"
		  oCell.Tag = "qm"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Qualifier Finals"
		  oCell.Tag = "qf"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Semi-Finals"
		  oCell.Tag = "sf"
		  tbl.AddRow(0, oCell)
		  
		  oCell = tbl.CreateCell
		  oCell.Text = "Finals"
		  oCell.Tag = "f"
		  tbl.AddRow(0, oCell)
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadMatches(sCompLevel as text)
		  
		  self.Title = "Pick Match Number"
		  
		  tbl.removeall
		  
		  tbl.AddSection ""
		  
		  sType = "Match"
		  
		  
		  
		  
		  
		  for each oMatch as DataFile.t_matches in DataFile.t_matches.ListByEventTag(app.oSelectedEvent.skey, sCompLevel)
		    
		    dim oCell as iOSTableCellData = tbl.CreateCell
		    oCell.text = oMatch.imatch_number.ToText
		    oCell.tag = oMatch.skey
		    
		    tbl.addRow(0, oCell)
		    
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadTeams(alliance as text, oMatch as DataFile.t_matches)
		  self.Title = "Pick " + alliance + " Alliance Team"
		  tbl.RemoveAll
		  
		  tbl.AddSection ""
		  
		  sType = "Team"
		  
		  dim oCell as iOSTableCellData
		  
		  select case alliance
		  case "Blue"
		    oCell = tbl.CreateCell
		    oCell.Text = oMatch.sBlue_Team_1
		    oCell.tag = oCell.Text
		    tbl.AddRow(0, oCell)
		    
		    oCell = tbl.CreateCell
		    oCell.Text = oMatch.sBlue_Team_2
		    oCell.tag = oCell.Text
		    tbl.AddRow(0, oCell)
		    
		    oCell = tbl.CreateCell
		    oCell.Text = oMatch.sBlue_Team_3
		    oCell.tag = oCell.Text
		    tbl.AddRow(0, oCell)
		    
		  Case "Red"
		    oCell = tbl.CreateCell
		    oCell.Text = oMatch.sRed_Team_1
		    oCell.tag = oCell.Text
		    tbl.AddRow(0, oCell)
		    
		    oCell = tbl.CreateCell
		    oCell.Text = oMatch.sRed_Team_2
		    oCell.tag = oCell.Text
		    tbl.AddRow(0, oCell)
		    
		    oCell = tbl.CreateCell
		    oCell.Text = oMatch.sRed_Team_3
		    oCell.tag = oCell.Text
		    tbl.AddRow(0, oCell)
		  end
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action(sType as text, sValue as Text, sTag as Text, a as auto)
	#tag EndHook


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
		  dim oCell as iOSTableCellData = me.RowData(section, row)
		  
		  dim sTag as Text
		  
		  if oCell.Tag <> nil then
		    sTag = oCell.tag
		  end
		  
		  Raiseevent Action(sType, oCell.Text, sTag, nil)
		  
		  
		  
		  if sType = "Team" then
		    iTeamIndex = row
		  end
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
