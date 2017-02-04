#tag IOSView
Begin iosView vwImportData
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Import Data"
   Top             =   0
   Begin iOSTextField txtSearch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   txtSearch, 1, <Parent>, 1, False, +1.00, 1, 1, 13, 
      AutoLayout      =   txtSearch, 7, , 0, False, +1.00, 1, 1, 168, 
      AutoLayout      =   txtSearch, 3, txtYear, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   txtSearch, 8, , 0, True, +1.00, 1, 1, 31, 
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
      AutoLayout      =   tbl, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   tbl, 3, txtSearch, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   tbl, 4, btnImport, 3, False, +1.00, 1, 1, -*kStdControlGapV, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   283.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      Top             =   151
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton btnImport
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnImport, 7, , 0, False, +1.00, 1, 1, 119, 
      AutoLayout      =   btnImport, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   btnImport, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -*kStdControlGapV, 
      AutoLayout      =   btnImport, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Import Event"
      Enabled         =   True
      Height          =   30.0
      Left            =   100
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   442
      Visible         =   True
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
      AutoLayout      =   txtYear, 1, <Parent>, 1, False, +1.00, 1, 1, 13, 
      AutoLayout      =   txtYear, 7, , 0, False, +1.00, 1, 1, 168, 
      AutoLayout      =   txtYear, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   txtYear, 8, , 0, True, +1.00, 1, 1, 31, 
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
   Begin iOSButton btnRefresh
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnRefresh, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   btnRefresh, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   btnRefresh, 11, txtSearch, 11, False, +1.00, 1, 1, , 
      AutoLayout      =   btnRefresh, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Refresh List"
      Enabled         =   True
      Height          =   30.0
      Left            =   200
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   112
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
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
		Sub LoadList(sSearch as text)
		  tbl.removeall
		  
		  tbl.AddSection
		  
		  
		  for each oRecord as DataFile.t_event in DataFile.t_event.list(sSearch)
		    dim sDate as text
		    if oRecord.dtStart_Date <> Nil then
		      sDate = oRecord.dtStart_Date.ToText
		    end
		    
		    tbl.addRow 0, oRecord.sName + " - " + oRecord.sLocation + " " + sDate
		    
		    
		    'lst.AddRow oRecord.sName, oRecord.sLocation, sDate
		    '
		    'lst.RowTag(lst.LastIndex) = oRecord
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequestEvents()
		  // Set up the socket
		  oEventSocket.RequestHeader(kXTBAAppId) = kXTBAAppId_Value
		  
		  // Set the URL
		  dim url as text = "https://www.thebluealliance.com/api/v2/events/" + txtYear.text
		  
		  //Send the Asyncrhonous Request
		  oEventSocket.Send("GET", URL)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		sLastQuery As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sLastSearch As text
	#tag EndProperty


	#tag Constant, Name = kXTBAAppId, Type = Text, Dynamic = False, Default = \"X-TBA-App-Id", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kXTBAAppId_Value, Type = Text, Dynamic = False, Default = \"frc1982:scouting-app:2017.1", Scope = Public
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
#tag Events oEventSocket
	#tag Event
		Sub Error(err as RuntimeException)
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
		  
		  
		  'For Each entry As DictionaryEntry In dict
		  'dim sKey as Text = entry.Key
		  'dim sValue as Auto = entry.Value
		  '
		  'dim i as integer
		  'next
		  
		  'for i as integer = 0 to oJSON.Count-1
		  'dim oCHild as JSONitem = oJSON.Child(i)
		  '
		  'if oChild <> nil then
		  'dim sKey as Text = oChild.lookup("key", "")
		  '
		  'dim oRecord as Data.t_event = Data.T_Event.FindByKey(sKey)
		  '
		  'oRecord.iYear = oChild.Lookup("year", 0)
		  'oRecord.sEvent_Type_String= oChild.Lookup("event_type", "")
		  'oRecord.sLocation= oChild.Lookup("location", "")
		  'oRecord.sName= oChild.Lookup("name", "")
		  'oRecord.sShort_Name= oChild.Lookup("short_name", "")
		  'oRecord.swebsite= oChild.Lookup("website", "")
		  '
		  'dim d as new Date
		  'd.SQLDate = oChild.Lookup("start_date", "")
		  'oRecord.dtStart_Date= d
		  '
		  'd.SQLDate = oChild.Lookup("end_date", "")
		  'oRecord.dtend_date= d
		  '
		  'oRecord.save
		  '
		  'end
		  'next
		  
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
		  'dim t as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  'dim s as Text = t
		  '
		  'dim oJSON as New JSONItem(s)
		  '
		  'for i as integer = 0 to oJSON.Count-1
		  'dim oCHild as JSONitem = oJSON.Child(i)
		  '
		  'if oChild <> nil then
		  'dim sKey as Text = oChild.lookup("key", "")
		  '
		  'dim oRecord as Data.t_team = Data.t_team.FindByKeyAndEventID(skey, oCurrentEvent.iEvent_ID )
		  'oRecord.iEvent_ID = oCurrentEvent.ievent_ID
		  'oRecord.sName = oChild.Lookup("name", "")
		  'oRecord.sNickName= oChild.Lookup("nickname", "")
		  'oRecord.sLocality= oChild.Lookup("locality", "")
		  'oRecord.sRegion= oChild.Lookup("region", "")
		  'oRecord.sTeam_Number= oChild.Lookup("team_number", "")
		  'oRecord.iRookie_Year= oChild.Lookup("rookie_year", 0)
		  'oRecord.save
		  '
		  'end
		  'next
		  '
		  'dim oEvent as Data.t_event = lst.RowTag(lst.ListIndex)
		  'ImportMatches(oEvent)
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
		  'dim t as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  'dim s as Text = t
		  '
		  'dim oJSON as New JSONItem(s)
		  '
		  'for i as integer = 0 to oJSON.Count-1
		  'dim oCHild as JSONitem = oJSON.Child(i)
		  '
		  'if oChild <> nil then
		  'dim sKey as Text = oChild.lookup("key", "")
		  '
		  'dim oRecord as Data.t_matches = Data.t_matches.FindByKey(skey )
		  'oRecord.iEvent_ID = oCurrentEvent.ievent_ID
		  'oRecord.sevent_key = oChild.Lookup("event_key", "")
		  'oRecord.stime_string= oChild.Lookup("time_string", "")
		  'oRecord.imatch_number = oChild.Lookup("match_number", -1)
		  'oRecord.iset_number = oChild.Lookup("set_number", -1)
		  'oRecord.stime_string = oChild.Lookup("time_string", "")
		  'oRecord.sComp_Level = oChild.Lookup("comp_level", "")
		  '
		  'dim oAliances as JSONItem = oChild.Lookup("alliances", nil)
		  'if oAliances = nil then
		  'break
		  'return
		  'end
		  '
		  'dim oBlueAlliance as JSONItem = oAliances.Lookup("blue", nil)
		  'oRecord.iBlueScore = oBlueAlliance.Lookup("score", -1)
		  'dim oBlueTeams as JSONItem = oBlueAlliance.Lookup("teams", nil)
		  'if oBlueTeams.IsArray then
		  'oRecord.sBlue_Team_1 = oBlueTeams.value(0)
		  '
		  'oRecord.sBlue_Team_2 = oBlueTeams.value(1)
		  '
		  'oRecord.sBlue_Team_3 = oBlueTeams.value(2)
		  '
		  'end
		  '
		  'dim oRedAlliance as JSONItem = oAliances.Lookup("red", nil)
		  'oRecord.iRedScore = oRedAlliance.Lookup("score", -1)
		  'dim oRedTeams as JSONItem = oRedAlliance.Lookup("teams", nil)
		  '
		  'if oRedTeams.IsArray then
		  'oRecord.sRed_Team_1 = oRedTeams.value(0)
		  '
		  'oRecord.sRed_Team_2 = oRedTeams.value(1)
		  '
		  'oRecord.sRed_Team_3 = oRedTeams.value(2)
		  '
		  'end
		  '
		  '
		  'oRecord.save
		  '
		  'end
		  'next
		  '
		  'msgbox "All Data Imported from Blue Alliance"
		  '
		  'for i as integer = 0 to WindowCount-1
		  'if window(i) isa winStartup then
		  'winStartup(window(i)).Init
		  'exit
		  'end
		  'next
		  '
		  'self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtYear
	#tag Event
		Sub TextChange()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRefresh
	#tag Event
		Sub Action()
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
