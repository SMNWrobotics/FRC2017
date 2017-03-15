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
   Begin iOSButton btnStart
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnStart, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnStart, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   btnStart, 3, tbl, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   btnStart, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Start"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c0080FF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   420
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  
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
		  if Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastLevel") <> "" then
		    Level = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastLevelTag")
		    cell.DetailText = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastLevel")
		  end
		  
		  cell = tbl.CreateCell
		  cell.text = "Match"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  if Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastMatch") <> "" then
		    MatchKey = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastMatchTag")
		    cell.DetailText = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastMatch")
		  end
		  
		  cell = tbl.CreateCell
		  cell.text = "Alliance"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  if Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastAlliance") <> "" then
		    Alliance = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastAllianceTag")
		    cell.DetailText = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("LastAlliance")
		  end
		  
		  cell = tbl.CreateCell
		  cell.text = "Team Number"
		  Cell.DetailText = ""
		  cell.AccessoryType = iOSTableCellData.AccessoryTypes.Disclosure
		  tbl.AddRow(0, cell)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ReturnValue(oInstance as vwListSelect, sType as text, sValue as Text, sTag as Text)
		  RemoveHandler oInstance.Action, AddressOf ReturnValue
		  
		  
		  select case sType
		  case "Comp"
		    oCell.DetailText = sValue
		    tbl.ReloadRow(0, iRow)
		    
		    level = sTag
		    
		    Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(sTag, "LastLevelTag")
		    Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(sValue, "LastLevel")
		    
		  case "Match"
		    
		    oCell.DetailText = sValue
		    tbl.ReloadRow(0, iRow)
		    
		    MatchKey = sTag
		    
		    Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(sTag, "LastMatchTag")
		    Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(sValue, "LastMatch")
		    
		  case "Alliance"
		    
		    oCell.DetailText = sValue
		    tbl.ReloadRow(0, iRow)
		    
		    Alliance = sTag
		    
		    Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(sTag, "LastAllianceTag")
		    Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(sValue, "LastAlliance")
		    
		  case "Team"
		    
		    oCell.DetailText = sValue
		    tbl.ReloadRow(0, iRow)
		    
		    Team = sTag
		    
		  case else
		    
		    break //Didn't handle
		    
		  end
		  
		  
		  
		  oSelect.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Alliance As text
	#tag EndProperty

	#tag Property, Flags = &h0
		iRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Level As text
	#tag EndProperty

	#tag Property, Flags = &h0
		MatchKey As text
	#tag EndProperty

	#tag Property, Flags = &h0
		oCell As iOSTableCellData
	#tag EndProperty

	#tag Property, Flags = &h0
		oSelect As vwListSelect
	#tag EndProperty

	#tag Property, Flags = &h0
		Team As text
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
		    
		    oSelect = new vwListSelect
		    oSelect.LoadAlliances
		    
		  case "Team Number"
		    
		    dim oMatch as DataFile.t_matches = DataFile.t_matches.FindByKey(MatchKey)
		    oSelect = new vwListSelect
		    oSelect.LoadTeams(Alliance, oMatch)
		    
		  case else
		    break
		    
		  end
		  
		  AddHandler oSelect.Action, AddressOf ReturnValue
		  
		  self.PushTo(oSelect)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStart
	#tag Event
		Sub Action()
		  if Alliance = "" or level = "" or MatchKey = "" or Team = "" then
		    msgbox "Fill out all values before starting."
		    return
		  end
		  
		  //Match Data
		  dim oMatch as DataFile.t_matches = DataFile.t_matches.FindByKey(MatchKey)
		  
		  //Team Data
		  dim oTeam as DataFile.t_team = DataFile.t_team.FindByKey(Team)
		  
		  dim sAlliance as text
		  If oTeam.sTeam_Number = oMatch.sBlue_Team_1 Or _
		    oTeam.sTeam_Number = oMatch.sBlue_Team_2 Or _
		    oTeam.sTeam_Number = oMatch.sBlue_Team_3 Then
		    sAlliance = "Blue"
		  Else
		    sAlliance = "Red"
		  end
		  dim vw as new vwGameScouting(oMatch.skey, oTeam.sTeam_Number, sAlliance)
		  self.PushTo(vw)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Alliance"
		Group="Behavior"
		Type="text"
	#tag EndViewProperty
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
		Name="Level"
		Group="Behavior"
		Type="text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MatchKey"
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
		Name="Team"
		Group="Behavior"
		Type="text"
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
