#tag IOSView
Begin iosView vwImportData
   BackButtonTitle =   "Import Event"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Import Event"
   Top             =   0
   Begin iOSTextField txtSearch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtSearch, 1, <Parent>, 1, False, +1.00, 1, 1, 13, , True
      AutoLayout      =   txtSearch, 7, , 0, False, +1.00, 1, 1, 168, , True
      AutoLayout      =   txtSearch, 3, txtYear, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   txtSearch, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   13
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Search"
      Scope           =   2
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   112
      Visible         =   True
      Width           =   168.0
   End
   Begin iOSTable tbl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   tbl, 4, <Parent>, 4, False, +1.00, 1, 1, -89, , True
      AutoLayout      =   tbl, 3, txtSearch, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   240.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      Top             =   151
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton_BKS btnImport
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnImport, 7, , 0, False, +1.00, 1, 1, 119, , True
      AutoLayout      =   btnImport, 9, <Parent>, 9, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   btnImport, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   btnImport, 3, tbl, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      BackColor       =   &cCCCCCC00
      Caption         =   "Import Event"
      Enabled         =   True
      Height          =   30.0
      Left            =   100
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c0080FF00
      TextFont        =   ""
      TextSize        =   "0"
      Top             =   399
      Visible         =   False
      Width           =   119.0
   End
   Begin Xojo.net.httpsocket oEventSocket
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      TabPanelIndex   =   "-10"
      Top             =   0
      ValidateCertificates=   False
   End
   Begin Xojo.net.httpsocket oTeamSocket
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      TabPanelIndex   =   "-10"
      Top             =   0
      ValidateCertificates=   False
   End
   Begin Xojo.net.httpsocket oMatchSocket
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      TabPanelIndex   =   "-10"
      Top             =   0
      ValidateCertificates=   False
   End
   Begin iOSTextField txtYear
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtYear, 1, <Parent>, 1, False, +1.00, 1, 1, 13, , True
      AutoLayout      =   txtYear, 7, , 0, False, +1.00, 1, 1, 168, , True
      AutoLayout      =   txtYear, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, , True
      AutoLayout      =   txtYear, 8, , 0, True, +1.00, 1, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   13
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Year"
      Scope           =   2
      Text            =   "2016"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   168.0
   End
   Begin iOSButton_BKS btnRefresh
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnRefresh, 2, tbl, 2, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   btnRefresh, 7, , 0, False, +1.00, 1, 1, 134, , True
      AutoLayout      =   btnRefresh, 8, , 0, False, +1.00, 1, 1, 30, , True
      AutoLayout      =   btnRefresh, 11, txtSearch, 11, False, +1.00, 1, 1, 0, , True
      BackColor       =   &cCCCCCC00
      Caption         =   "Query Blue Alliance"
      Enabled         =   True
      Height          =   30.0
      Left            =   186
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   "0"
      Top             =   112
      Visible         =   True
      Width           =   134.0
   End
   Begin iOSProgressWheel ProgressWheel1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ProgressWheel1, 1, txtYear, 2, False, +1.00, 1, 1, *kStdControlGapH, , True
      AutoLayout      =   ProgressWheel1, 7, , 0, True, +1.00, 1, 1, 24, , True
      AutoLayout      =   ProgressWheel1, 3, txtYear, 3, False, +1.00, 1, 1, 0, , True
      AutoLayout      =   ProgressWheel1, 8, , 0, True, +1.00, 1, 1, 24, , True
      Height          =   24.0
      Left            =   189
      LockedInPosition=   False
      Scope           =   0
      Shade           =   "0"
      Top             =   73
      Visible         =   False
      Width           =   24.0
   End
   Begin iOSProgressWheel ProgressWheel2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ProgressWheel2, 1, btnImport, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   ProgressWheel2, 7, , 0, True, +1.00, 4, 1, 24, , True
      AutoLayout      =   ProgressWheel2, 3, btnImport, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ProgressWheel2, 8, , 0, True, +1.00, 4, 1, 24, , True
      Height          =   24.0
      Left            =   227
      LockedInPosition=   False
      Scope           =   0
      Shade           =   "0"
      Top             =   399
      Visible         =   False
      Width           =   24.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  LoadList sLastQuery
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CreateFilter()
		  if txtSearch.text = "" then
		    sLastQuery = " Year = " + txtYear.text
		  else
		    sLastQuery = " Year = " + txtYear.text + " AND ( Location Like " + sLastSearch.SQL_like + " OR Name Like " + sLastSearch.SQL_like + " OR Start_Date Like " + sLastSearch.SQL_like + ")"
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportMatches(oEvent as DataFile.t_event)
		  // Set up the socket
		  oMatchSocket.RequestHeader(kXTBAAppId) = kXTBAAppId_Value
		  
		  // Set the URL
		  dim url as text = "https://www.thebluealliance.com/api/v3/event/" + oCurrentEvent.sKey + "/matches"
		  
		  //Send the Asyncrhonous Request
		  oMatchSocket.Send("GET", URL)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportTeams(oEvent as DataFile.t_event)
		  oCurrentEvent = oEvent
		  
		  // Set up the socket
		  oTeamSocket.RequestHeader(kXTBAAppId) = kXTBAAppId_Value
		  
		  // Set the URL
		  dim url as Text = "https://www.thebluealliance.com/api/v3/event/" +oEvent.skey + "/teams"
		  
		  //Send the Asyncrhonous Request
		  oTeamSocket.Send("GET", URL)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadList(sSearch as text)
		  tbl.removeall
		  
		  tbl.AddSection
		  
		  Dim cell As iOSTableCellData
		  cell = tbl.CreateCell("Add Manual Event", "", nil, iOSTableCellData.AccessoryTypes.Disclosure)
		  cell.tag = Nil
		  tbl.AddRow(0, cell)
		  
		  for each oRecord as DataFile.t_event in DataFile.t_event.list(sSearch)
		    dim sDate as text
		    if oRecord.dtStart_Date <> Nil then
		      sDate = oRecord.dtStart_Date.ToText
		    end
		    
		    
		    cell = tbl.CreateCell(oRecord.sName,  oRecord.sLocation + " " + sDate, nil, iOSTableCellData.AccessoryTypes.None)
		    cell.tag = oRecord
		    tbl.AddRow(0, cell)
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequestEvents()
		  // Set up the socket
		  oEventSocket.RequestHeader(kXTBAAppId) = kXTBAAppId_Value
		  
		  // Set the URL
		  dim url as text = "https://www.thebluealliance.com/api/v3/events/" + txtYear.text
		  
		  //Send the Asyncrhonous Request
		  oEventSocket.Send("GET", URL)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		oCurrentEvent As DataFile.t_event
	#tag EndProperty

	#tag Property, Flags = &h0
		oSelectedCell As iOSTableCellData
	#tag EndProperty

	#tag Property, Flags = &h0
		sLastQuery As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sLastSearch As text
	#tag EndProperty


	#tag Constant, Name = kXTBAAppId, Type = Text, Dynamic = False, Default = \"X-TBA-Auth-Key", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kXTBAAppId_Value, Type = Text, Dynamic = False, Default = \"heEb91YwiQMAVsUjYSGLOKOklVuSbaFM2Z41XltDdQjCgFoLnduO8A9Lw7mJmuiW", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events txtSearch
	#tag Event
		Sub TextChange()
		  sLastSearch = me.text
		  
		  CreateFilter
		  
		  Loadlist sLastQuery
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbl
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  btnImport.visible = section <> -1 and row <> -1
		  
		  oSelectedCell = Me.RowData(section, row)
		  
		  if oSelectedCell = nil then return
		  
		  if oSelectedCell.tag = nil then
		    //Trying to Edit
		    
		    dim oEvent as new DataFile.t_event
		    
		    dim vw as new vwAddEvent(oEvent)
		    self.PushTo(vw)
		    
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImport
	#tag Event
		Sub Action()
		  if oSelectedCell = nil then return
		  dim oEvent as DataFile.t_event = oSelectedCell.Tag
		  
		  Foundation.NSUserDefaults.StandardUserDefaults.SetTextForKey(oEvent.sKey, "EventKey")
		  if Foundation.NSUserDefaults.StandardUserDefaults.Synchronize = false then
		    break
		  end
		  ImportTeams(oEvent)
		  
		  
		  
		  app.oSelectedEvent = DataFile.t_event.FindByKey(oEvent.sKey)
		  
		  btnImport.Visible = false
		  ProgressWheel2.Visible = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events oEventSocket
	#tag Event
		Sub Error(err as RuntimeException)
		  ProgressWheel1.Visible = false
		  tbl.Visible = true
		  
		  LoadList sLastQuery
		  
		  msgbox "Error Retrieving Event Data from The Blue Alliance.  Error Message: " + err.Reason
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub PageReceived(URL as Text, HTTPStatus as Integer, Content as xojo.Core.MemoryBlock)
		  tbl.RemoveAll
		  tbl.AddSection //blank section
		  
		  dim tData as Text = Xojo.Core.TextEncoding.ASCII.ConvertDataToText(content)
		  
		  Dim aroJSON() as auto = Xojo.Data.ParseJSON(tData)
		  
		  for each a as auto in aroJSON
		    dim d as xojo.Core.Dictionary = a
		    
		    dim sKey as text = d.Lookup("key", "")
		    
		    dim oRecord as DataFile.t_event = DataFile.T_Event.FindByKey(sKey)
		    oRecord.iYear = d.Lookup("year", 0)
		    
		    dim iEventTYpe as integer = d.Lookup("event_type", -1)
		    
		    oRecord.sEvent_Type_String = iEventTYpe.ToText
		    
		    oRecord.sLocation= d.Lookup("location", "")
		    
		    oRecord.sName= d.Lookup("name", "")
		    
		    if d.HasKey("short_name") = true and d.Lookup("short_name", nil) <> Nil then
		      oRecord.sShort_Name= d.Lookup("short_name", "")
		    end
		    
		    if d.HasKey("website") = true and d.Lookup("website", nil) <> Nil then
		      oRecord.swebsite= d.Lookup("website", "")
		    end
		    
		    dim tDateValue as Text = d.Lookup("start_date", "")
		    if tDateValue <> "" then
		      oRecord.dtStart_Date= xojo.core.date.FromText(tDateValue)
		    end
		    
		    tDateValue = d.Lookup("end_date", "")
		    if tDateValue <> "" then
		      oRecord.dtend_date = xojo.core.date.FromText(tDateValue)
		    end
		    
		    oRecord.save
		  next
		  
		  ProgressWheel1.Visible = false
		  tbl.Visible = true
		  
		  LoadList sLastQuery
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events oTeamSocket
	#tag Event
		Sub Error(err as RuntimeException)
		  msgbox "Error Retrieving Team Data from The Blue Alliance.  Error Message: " + err.Reason
		End Sub
	#tag EndEvent
	#tag Event
		Sub PageReceived(URL as Text, HTTPStatus as Integer, Content as xojo.Core.MemoryBlock)
		  if HTTPStatus = 400 then return  //Manual event?
		  
		  dim tData as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  
		  Dim aroJSON() as auto = Xojo.Data.ParseJSON(tData)
		  
		  for each a as auto in aroJSON
		    dim d as xojo.Core.Dictionary = a
		    
		    dim sKey as text = d.Lookup("key", "")
		    dim oRecord as DataFile.t_team = DataFile.t_team.FindByKeyAndEventID(sKey, oCurrentEvent.iEvent_ID )
		    oRecord.iEvent_ID = oCurrentEvent.ievent_ID
		    oRecord.sName = d.Lookup("name", "")
		    oRecord.sNickName= d.Lookup("nickname", "")
		    oRecord.sLocality= d.Lookup("locality", "")
		    oRecord.sRegion= d.Lookup("region", "")
		    dim iTeamNumber as integer = d.Lookup("team_number", 0)
		    oRecord.sTeam_Number= iTeamNumber.ToText
		    oRecord.iRookie_Year= d.Lookup("rookie_year", 0)
		    oRecord.save
		    
		  next
		  
		  ImportMatches(oCurrentEvent)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events oMatchSocket
	#tag Event
		Sub Error(err as RuntimeException)
		  msgbox "Error Retrieving Match Data from The Blue Alliance.  Error Message: " + err.Reason
		End Sub
	#tag EndEvent
	#tag Event
		Sub PageReceived(URL as Text, HTTPStatus as Integer, Content as xojo.Core.MemoryBlock)
		  dim tData as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  
		  Dim aroJSON() as auto = Xojo.Data.ParseJSON(tData)
		  
		  for each a as auto in aroJSON
		    dim d as xojo.Core.Dictionary = a
		    
		    dim sKey as Text = d.lookup("key", "")
		    
		    dim oRecord as DataFile.t_matches = DataFile.t_matches.FindByKey(skey )
		    oRecord.iEvent_ID = oCurrentEvent.ievent_ID
		    oRecord.sevent_key = d.Lookup("event_key", "")
		    if d.Lookup("time_string", nil) <> nil then
		      oRecord.stime_string= d.Lookup("time_string", "")
		    end
		    oRecord.imatch_number = d.Lookup("match_number", -1)
		    oRecord.iset_number = d.Lookup("set_number", -1)
		    oRecord.sComp_Level = d.Lookup("comp_level", "")
		    
		    dim dAlliances as Xojo.Core.Dictionary = d.Lookup("alliances", nil)
		    if dAlliances = nil then
		      break
		      return
		    end
		    
		    dim oBlueAlliance as Xojo.Core.Dictionary = dAlliances.Lookup("blue", nil)
		    oRecord.iBlueScore = oBlueAlliance.Lookup("score", -1)
		    
		    dim arArray() as Auto = oBlueAlliance.Lookup("team_keys", nil)
		    dim iCnt as integer = 0
		    for each aTeam as Auto in arArray
		      
		      select case icnt
		      case 0
		        oRecord.sBlue_Team_1 = aTeam
		      case 1
		        oRecord.sBlue_Team_2 = aTeam
		      case 2
		        oRecord.sBlue_Team_3 = aTeam
		      case else
		        break
		      end
		      
		      iCnt = iCnt + 1
		    next
		    
		    
		    dim oRedAlliance as Xojo.Core.Dictionary = dAlliances.Lookup("red", nil)
		    oRecord.iRedScore = oRedAlliance.Lookup("score", -1)
		    
		    
		    arArray()= oRedAlliance.Lookup("team_keys", nil)
		    iCnt = 0
		    for each aTeam as Auto in arArray
		      
		      select case icnt
		      case 0
		        oRecord.sRed_Team_1 = aTeam
		      case 1
		        oRecord.sRed_Team_2 = aTeam
		      case 2
		        oRecord.sRed_Team_3 = aTeam
		      case else
		        break
		      end
		      
		      iCnt = iCnt + 1
		    next
		    
		    oRecord.save
		  next
		  
		  self.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtYear
	#tag Event
		Sub TextChange()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Dim d As Xojo.Core.Date = Xojo.Core.Date.now
		  
		  me.text = d.Year.ToText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRefresh
	#tag Event
		Sub Action()
		  ProgressWheel1.Visible = true
		  tbl.Visible = false
		  
		  RequestEvents
		  
		  LoadList sLastQuery
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
		Name="sLastQuery"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="sLastSearch"
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
