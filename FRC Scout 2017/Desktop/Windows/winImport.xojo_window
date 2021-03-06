#tag Window
Begin Window winImport
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   122
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
   Title           =   "Import Data"
   Visible         =   True
   Width           =   600
   Begin BKS_Thread Thread1
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
   End
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
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "Event Data To Import:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   146
   End
   Begin PopupMenu pmEvents
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
      Left            =   195
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
      Width           =   331
   End
   Begin PushButton btnImport
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Import Data"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   471
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   82
      Underline       =   False
      Visible         =   True
      Width           =   109
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   379
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   82
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function DesignTeamExists(sTeamNumber as String, sVariable as string) As boolean
		  Dim s As String
		  
		  s = "Select count(*) FROM T_Design where Team_Number = " + sTeamNumber.SQLizeText + " AND Variable = " + sVariable.SQLizeText + " AND Value <> ''"
		  
		  Dim rs As RecordSet = gdb.SQLSelectRaiseOnError(s)
		  
		  Return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Display(f as FolderItem)
		  mF = f
		  
		  Load
		  
		  self.ShowModal
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IMport_Design()
		  Dim s As String
		  
		  s = "Select * from T_Design"
		  
		  Dim rs As RecordSet = mDB.SQLSelect(s)
		  
		  mDB.SQLExecute("BEGIN Transaction")
		  
		  While rs.eof = False
		    
		    Dim sTeamNumber As String = rs.Field("Team_Number").StringValue
		    Dim sVariable As String = rs.Field("Variable").StringValue
		    
		    //Do we already have MatchKey and Team?
		    If DesignTeamExists(sTeamNumber, sVariable) = False Then
		      
		      Dim dbr As New DatabaseRecord
		      dbr.column("Variable") = rs.Field("Variable").StringValue
		      dbr.column("Value") = rs.Field("Value").StringValue
		      dbr.column("Team_Number") = rs.Field("Team_Number").StringValue
		      
		      gdb.InsertRecord("T_Design", dbr)
		      If gdb.error Then
		        MsgBox "Error: " + gdb.ErrorMessage
		        gdb.Rollback
		      End
		    End
		    
		    rs.MoveNext
		  Wend
		  
		  gDB.Commit
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Import_Event()
		  dim s as string
		  
		  s = "INSERT INTO t_event Select * from a.t_event WHERE  key = " + sEventKey.SQLizeText 
		  
		  gDB.SQLExecuteRaiseOnError(s)
		  
		  Preferences.StringValue("EventKey") = sEventKey
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Import_Games()
		  Dim s As String
		  
		  s = "Select * from T_Game"
		  
		  Dim rs As RecordSet = mDB.SQLSelect(s)
		  
		  gdb.SQLExecute("BEGIN Transaction")
		  
		  While rs.eof = False
		    
		    Dim sKey As String = rs.Field("MatchKey").StringValue
		    Dim sTeamNumber As String = rs.Field("TeamNumber").StringValue
		    Dim sVariable As String = rs.Field("Variable").StringValue
		    //Do we already have MatchKey and Team?
		    If MatchandTeamExist(sKey, sTeamNumber, sVariable) = false Then
		      
		      Dim dbr As New DatabaseRecord
		      dbr.column("Variable") = rs.Field("Variable").StringValue
		      dbr.column("Value") = rs.Field("Value").StringValue
		      dbr.column("MatchKey") = rs.Field("MatchKey").StringValue
		      dbr.column("TeamNumber") = rs.Field("TeamNumber").StringValue
		      dbr.column("ScoutName") = rs.Field("ScoutName").StringValue
		      dbr.column("ScoutTeamNumber") = rs.Field("ScoutTeamNumber").StringValue
		      
		      gdb.InsertRecord("T_Game", dbr)
		      If gdb.error Then
		        msgbox "Error: " + gdb.ErrorMessage
		        gdb.Rollback
		      end
		    End
		    
		    rs.MoveNext
		  Wend
		  
		  gDB.Commit
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Import_Matches()
		  dim s as string
		  
		  
		  s = "INSERT INTO t_matches Select * from a.t_matches WHERE event_key = " + sEventKey.SQLizeText + " AND key Not In(select key from t_matches);"
		  
		  gDB.SQLExecuteRaiseOnError(s)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Import_Teams()
		  dim s as string
		  
		  s = "INSERT INTO t_team Select * from a.t_team WHERE  key Not In(select key from t_team);"
		  
		  gDB.SQLExecuteRaiseOnError(s)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load()
		  mdb = new SQLiteDatabase
		  
		  mDB.DatabaseFile = mF
		  
		  if mDB.Connect = false then
		    msgbox "This does not appear to be an SQLite Database File."
		    Self.close
		    return
		  end
		  
		  dim rs as RecordSet = mDB.TableSchema
		  
		  dim bFound as boolean
		  while rs.eof = false
		    select case rs.IdxField(1).StringValue
		    case "t_event", "t_game", "t_matches", "t_team", "T_Design"
		      bFound = true
		    case else
		      //do nothing
		    end
		    rs.MoveNext
		  wend
		  
		  if bFound = false then
		    msgbox "This does not appear to be an FRC Scout Database File."
		    self.close
		  end
		  
		  if gDB.AttachDatabase(mF, "a") = false then
		    msgbox "Could not attach to the FRC Scout Import File."
		    self.close
		  end
		  
		  LoadEventsPopup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadEventsPopup()
		  dim s as string
		  
		  
		  
		  s = "Select * from t_event ORDER BY Short_Name"
		  
		  dim rs as recordset = mDB.SQLSelectRaiseOnError(s)
		  
		  if rs.RecordCount = 0 then
		    msgbox "This FRC Scout Database has no events in it."
		    self.close
		    return
		  end
		  
		  dim sKey as string = preferences.StringValue("EventKey")
		  
		  dim iIndex as integer = -1
		  while rs.eof = false
		    dim sID as string = rs.Field("key").StringValue
		    dim sName as string = rs.Field("short_Name").StringValue + " " + rs.Field("start_date").StringValue
		    pmEvents.addRowAndTag sName, sID
		    
		    if sID = sKey then
		      //This is what the user has selected
		      iIndex = pmEvents.ListCount-1
		    end
		    
		    rs.MoveNext
		  Wend
		  
		  pmEvents.ListIndex = iIndex
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MatchandTeamExist(sKey as string, sTeamNumber as String, sVariable as String) As boolean
		  Dim s As String
		  
		  s = "Select count(*) FROM t_Game where MatchKey = " + sKey.SQLizeText + " AND TeamNumber = " + sTeamNumber.SQLizeText + " AND Variable = " + sVariable.SQLizeText + " AND Value <> '';"
		  
		  Dim rs As RecordSet = gdb.SQLSelectRaiseOnError(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		mdb As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		mF As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		sEventKey As String
	#tag EndProperty


#tag EndWindowCode

#tag Events Thread1
	#tag Event
		Sub HandleEvent(sEvent As String)
		  select case sEvent
		  case "Start"
		    
		  case else
		    
		    for i as integer = 0 to WindowCount-1
		      if window(i) isa winStartup then
		        winStartup(window(i)).Init
		        exit
		      end
		    next
		    
		    msgbox "Import Complete"
		    self.close
		    
		    gDB.DetachDatabase("a")
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub Run()
		  'Import_Event
		  ' Import_Matches
		  ' Import_Teams
		  IMport_Design
		  Import_Games
		End Sub
	#tag EndEvent
	#tag Event
		Sub UIUpdate(d as Dictionary)
		  if d.HasKey("msg") then
		    MsgBox d.value("msg")
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pmEvents
	#tag Event
		Sub Change()
		  btnImport.Enabled = me.ListIndex <> -1
		  
		  sEventKey = me.RowTag(me.ListIndex)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImport
	#tag Event
		Sub Action()
		  Thread1.run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
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
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
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
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
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
		Name="Placement"
		Visible=true
		Group="Behavior"
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
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="sEventKey"
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
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
