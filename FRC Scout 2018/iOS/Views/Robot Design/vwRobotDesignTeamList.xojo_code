#tag IOSView
Begin iosView vwRobotDesignTeamList
   BackButtonTitle =   "Team List"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Robot Design:  Team List"
   Top             =   0
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  LoadList
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadList()
		  tbl.RemoveAll
		  
		  if app.oSelectedEvent = nil then
		    msgbox "No Event Selected", "Select an event to load the teams."
		    return
		  end
		  
		  
		  tbl.AddSection ""
		  
		  dim cell as iOSTableCellData = tbl.CreateCell
		  cell = tbl.CreateCell
		  cell.Text = "Add Team"
		  cell.tag = nil
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Detail
		  tbl.AddRow 0, cell
		  
		  for each oteam as DataFile.t_team in app.oSelectedEvent.GetTeams
		    cell = tbl.CreateCell
		    cell.Text = oTeam.sTeam_Number
		    cell.DetailText = oTeam.sNickName + " - " + oTeam.sLocality
		    cell.tag = oTeam
		    cell.AccessoryType = iOSTableCellData.AccessoryTypes.Detail
		    
		    tbl.AddRow 0, cell
		  next
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim cell as iOSTableCellData = me.RowData(section, row)
		  
		  if cell.tag = nil then
		    dim oNew as new DataFile.t_team
		    
		    dim vw as new vwAddTeam(oNew)
		    self.PushTo(vw)
		    
		  else
		    
		    dim oTeam as DataFile.t_team = cell.Tag
		    
		    Dim v As New vwRobot(oTeam)
		    Self.PushTo(v)
		    
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
