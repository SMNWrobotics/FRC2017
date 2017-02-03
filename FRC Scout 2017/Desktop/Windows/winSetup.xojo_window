#tag Window
Begin WindowMenuWindow winSetup
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   626
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "Import Event Data"
   Visible         =   True
   Width           =   862
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Year"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   57
   End
   Begin PopupMenu pmYear
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   104
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Underline       =   False
      Visible         =   True
      Width           =   149
   End
   Begin Listbox lst
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   523
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Name	Location	Date"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   83
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   652
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton btnImportMatches
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Import Event Data"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   692
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   83
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin SearchControl SearchControl1
      AutoDeactivate  =   True
      Enabled         =   True
      HasCancelButton =   True
      HasMenu         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   104
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacBorderStyle  =   0
      PlaceHolderText =   ""
      Scope           =   0
      SendSearchStringImmediately=   False
      SendWholeSearchString=   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      Top             =   52
      Visible         =   True
      Width           =   253
   End
   Begin Label Label2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   "Filter"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   51
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   57
   End
   Begin Label Label3
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   102
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   692
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   "Note:  Importing Event Data will make this the default Event."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   122
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin PushButton btnAddEvent
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Add Event"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   684
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   221
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin PushButton btnEditEvent
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Edit Event"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   684
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   253
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
   Begin Canvas cvsFetchingData
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   31
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   283
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   9
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   False
      Width           =   373
      Begin ProgressWheel ProgressWheel1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "cvsFetchingData"
         Left            =   290
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   16
         Visible         =   True
         Width           =   21
      End
      Begin Label Label4
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "cvsFetchingData"
         Italic          =   False
         Left            =   332
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         Text            =   "Fetching Online Data"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   16
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   290
      End
   End
   Begin PushButton btnRefresh
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Query Server"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   668
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   142
   End
   Begin Label lblNoValidInternetConnection
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   182
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   676
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   "WARNING!  No valid internet connection.  You will not be able to connect to http://thebluealliance.com to retrieve event, match, game, and team data."
      TextAlign       =   0
      TextColor       =   &cFF000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   300
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   186
   End
   Begin Xojo.net.httpsocket oEventSocket
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      ValidateCertificates=   False
   End
   Begin Xojo.net.httpsocket oTeamSocket
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      ValidateCertificates=   False
   End
   Begin Xojo.net.httpsocket oMatchSocket
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      ValidateCertificates=   False
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  bConnected = modGlobals.IsConnected
		  
		  lblNoValidInternetConnection.Visible = not bConnected
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CreateFilter()
		  if SearchControl1.text = "" then
		    sLastQuery = " Year = " + pmYear.text
		  else
		    sLastQuery = " Year = " + pmYear.text + " AND ( Location Like " + sLastSearch.SQL_like + " OR Name Like " + sLastSearch.SQL_like + " OR Start_Date Like " + sLastSearch.SQL_like + ")"
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Handle_Edit()
		  if lst.ListIndex = -1 then return
		  
		  dim oEvent as Data.t_event = lst.RowTag(lst.ListIndex)
		  
		  dim w as new winAddEvent
		  w.Display oEvent
		  
		  LoadList sLastQuery
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportMatches(oEvent as Data.t_event)
		  // Set up the socket
		  oMatchSocket.RequestHeader(kXTBAAppId.ToText) = kXTBAAppId_Value.ToText
		  
		  // Set the URL
		  dim url as string = "http://www.thebluealliance.com/api/v2/event/" + oEvent.sKey + "/matches"
		  
		  //Send the Asyncrhonous Request
		  oMatchSocket.Send("GET", URL.ToText)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportMatchesAndTeams()
		  if lst.ListIndex = -1 then 
		    msgbox "You've not selected an event to import."
		    return
		  end
		  
		  oCurrentEvent = lst.RowTag(lst.ListIndex)
		  
		  dim sKey as string = oCurrentEvent.skey
		  Preferences.StringValue("EventKey") = sKey
		  
		  ImportTeams oCurrentEvent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ImportTeams(oEvent as Data.t_event)
		  // Set up the socket
		  oTeamSocket.RequestHeader(kXTBAAppId.ToText) = kXTBAAppId_Value.ToText
		  
		  // Set the URL
		  dim url as string = "http://www.thebluealliance.com/api/v2/event/" +oEvent.skey + "/teams"
		  
		  //Send the Asyncrhonous Request
		  oTeamSocket.Send("GET", URL.ToText)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadList(sSearch as string)
		  lst.DeleteAllRows
		  
		  for each oRecord as Data.t_event in Data.t_event.list(sSearch)
		    dim sDate as string
		    if oRecord.dtStart_Date <> Nil then
		      sDate = oRecord.dtStart_Date.SQLDate
		    end
		    lst.AddRow oRecord.sName, oRecord.sLocation, sDate
		    
		    lst.RowTag(lst.LastIndex) = oRecord
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Query()
		  cvsFetchingData.Visible = true
		  cvsFetchingData.Refresh true
		  
		  
		  //do we have events for the selected year?
		  if data.t_event.CountForYear(pmYear.text.val) = 0 and bConnected then
		    RequestEvents
		  end
		  
		  cvsFetchingData.Visible = false
		  
		  
		  LoadList sLastQuery
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequestEvents()
		  // Set up the socket
		  oEventSocket.RequestHeader(kXTBAAppId.ToText) = kXTBAAppId_Value.ToText
		  
		  // Set the URL
		  dim url as string = "http://www.thebluealliance.com/api/v2/events/" + pmYear.text
		  
		  //Send the Asyncrhonous Request
		  oEventSocket.Send("GET", URL.ToText)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bConnected As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private oCurrentEvent As Data.t_event
	#tag EndProperty

	#tag Property, Flags = &h0
		sLastQuery As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sLastSearch As String
	#tag EndProperty


#tag EndWindowCode

#tag Events pmYear
	#tag Event
		Sub Change()
		  if pmYear.ListIndex = -1 then 
		    lst.DeleteAllRows
		    return
		  end
		  
		  CreateFilter
		  
		  Query
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.DeleteAllRows
		  dim d as new date
		  for i as integer = 2010 to d.year
		    me.AddRow str(i)
		  next
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst
	#tag Event
		Sub Change()
		  btnImportMatches.Enabled = lst.ListIndex <> -1
		  
		  btnEditEvent.Enabled = lst.ListIndex <> -1
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Handle_Edit
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImportMatches
	#tag Event
		Sub Action()
		  
		  
		  if lst.ListIndex = -1 then 
		    msgbox "You've not selected an event to import."
		    return
		  end
		  
		  dim oEvent as Data.t_event = lst.RowTag(lst.ListIndex)
		  
		  Preferences.StringValue("EventKey") = oEvent.skey
		  
		  if bConnected and (data.t_event.MatchCount(oEvent.skey) = 0 OR data.t_event.TeamCount(oEvent.ievent_ID) = 0) then
		    cvsFetchingData.Visible = true
		    ImportMatchesAndTeams
		    cvsFetchingData.Visible = false
		  end
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchControl1
	#tag Event
		Sub Search()
		  sLastSearch = me.text
		  
		  CreateFilter
		  
		  Loadlist sLastQuery
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAddEvent
	#tag Event
		Sub Action()
		  dim d as new date
		  dim oEvent as new Data.t_event
		  oEvent.iYear = d.year
		  oEvent.skey = modGlobals.GetGUID
		  oEvent.sName = "Manual Event"
		  oEvent.dtStart_Date = d
		  oEvent.dtend_date = d
		  
		  
		  dim w as new winAddEvent
		  w.Display oEvent
		  
		  LoadList sLastQuery
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnEditEvent
	#tag Event
		Sub Action()
		  Handle_Edit
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
#tag Events oEventSocket
	#tag Event
		Sub Error(err as RuntimeException)
		  msgbox "Error Retrieving Event Data from The Blue Alliance.  Error Message: " + err.Reason
		End Sub
	#tag EndEvent
	#tag Event
		Sub PageReceived(URL as Text, HTTPStatus as Integer, Content as xojo.Core.MemoryBlock)
		  dim t as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  dim s as string = t
		  
		  dim oJSON as New JSONItem(s)
		  
		  
		  for i as integer = 0 to oJSON.Count-1
		    dim oCHild as JSONitem = oJSON.Child(i)
		    
		    if oChild <> nil then
		      dim sKey as string = oChild.lookup("key", "")
		      
		      dim oRecord as Data.t_event = Data.T_Event.FindByKey(sKey)
		      
		      oRecord.iYear = oChild.Lookup("year", 0)
		      oRecord.sEvent_Type_String= oChild.Lookup("event_type", "")
		      oRecord.sLocation= oChild.Lookup("location", "")
		      oRecord.sName= oChild.Lookup("name", "")
		      oRecord.sShort_Name= oChild.Lookup("short_name", "")
		      oRecord.swebsite= oChild.Lookup("website", "")
		      
		      dim d as new Date
		      d.SQLDate = oChild.Lookup("start_date", "")
		      oRecord.dtStart_Date= d
		      
		      d.SQLDate = oChild.Lookup("end_date", "")
		      oRecord.dtend_date= d
		      
		      oRecord.save
		      
		    end
		  next
		  
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
		  dim t as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  dim s as string = t
		  
		  dim oJSON as New JSONItem(s)
		  
		  for i as integer = 0 to oJSON.Count-1
		    dim oCHild as JSONitem = oJSON.Child(i)
		    
		    if oChild <> nil then
		      dim sKey as string = oChild.lookup("key", "")
		      
		      dim oRecord as Data.t_team = Data.t_team.FindByKeyAndEventID(skey, oCurrentEvent.iEvent_ID )
		      oRecord.iEvent_ID = oCurrentEvent.ievent_ID
		      oRecord.sName = oChild.Lookup("name", "")
		      oRecord.sNickName= oChild.Lookup("nickname", "")
		      oRecord.sLocality= oChild.Lookup("locality", "")
		      oRecord.sRegion= oChild.Lookup("region", "")
		      oRecord.sTeam_Number= oChild.Lookup("team_number", "")
		      oRecord.iRookie_Year= oChild.Lookup("rookie_year", 0)
		      oRecord.save
		      
		    end
		  next
		  
		  dim oEvent as Data.t_event = lst.RowTag(lst.ListIndex)
		  ImportMatches(oEvent)
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
		  dim t as text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(content)
		  dim s as string = t
		  
		  dim oJSON as New JSONItem(s)
		  
		  for i as integer = 0 to oJSON.Count-1
		    dim oCHild as JSONitem = oJSON.Child(i)
		    
		    if oChild <> nil then
		      dim sKey as string = oChild.lookup("key", "")
		      
		      dim oRecord as Data.t_matches = Data.t_matches.FindByKey(skey )
		      oRecord.iEvent_ID = oCurrentEvent.ievent_ID
		      oRecord.sevent_key = oChild.Lookup("event_key", "")
		      oRecord.stime_string= oChild.Lookup("time_string", "")
		      oRecord.imatch_number = oChild.Lookup("match_number", -1)
		      oRecord.iset_number = oChild.Lookup("set_number", -1)
		      oRecord.stime_string = oChild.Lookup("time_string", "")
		      oRecord.sComp_Level = oChild.Lookup("comp_level", "")
		      
		      dim oAliances as JSONItem = oChild.Lookup("alliances", nil)
		      if oAliances = nil then
		        break
		        return
		      end
		      
		      dim oBlueAlliance as JSONItem = oAliances.Lookup("blue", nil)
		      oRecord.iBlueScore = oBlueAlliance.Lookup("score", -1)
		      dim oBlueTeams as JSONItem = oBlueAlliance.Lookup("teams", nil)
		      if oBlueTeams.IsArray then
		        oRecord.sBlue_Team_1 = oBlueTeams.value(0)
		        
		        oRecord.sBlue_Team_2 = oBlueTeams.value(1)
		        
		        oRecord.sBlue_Team_3 = oBlueTeams.value(2)
		        
		      end
		      
		      dim oRedAlliance as JSONItem = oAliances.Lookup("red", nil)
		      oRecord.iRedScore = oRedAlliance.Lookup("score", -1)
		      dim oRedTeams as JSONItem = oRedAlliance.Lookup("teams", nil)
		      
		      if oRedTeams.IsArray then
		        oRecord.sRed_Team_1 = oRedTeams.value(0)
		        
		        oRecord.sRed_Team_2 = oRedTeams.value(1)
		        
		        oRecord.sRed_Team_3 = oRedTeams.value(2)
		        
		      end
		      
		      
		      oRecord.save
		      
		    end
		  next
		  
		  msgbox "All Data Imported from Blue Alliance"
		  
		  for i as integer = 0 to WindowCount-1
		    if window(i) isa winStartup then
		      winStartup(window(i)).Init
		      exit
		    end
		  next
		  
		  self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="bConnected"
		Group="Behavior"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsZoomed"
		Group="Behavior"
		InitialValue="0"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldHeight"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldLeft"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldTop"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="OldWidth"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="sLastQuery"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="sLastSearch"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="sName"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
