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
		  
		  for each oteam as DataFile.t_team in app.oSelectedEvent.GetTeams
		    dim cell as iOSTableCellData = tbl.CreateCell
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
		Sub AccessoryAction(section As Integer, row As Integer)
		  dim cell as iOSTableCellData = me.RowData(section, row)
		  
		  dim oTeam as DataFile.t_team = cell.Tag
		  
		  Dim v As New vwRobot(oTeam)
		  Self.PushTo(v)
		End Sub
	#tag EndEvent
#tag EndEvents
