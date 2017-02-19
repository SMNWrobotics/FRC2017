#tag Class
Protected Class t_event
	#tag Method, Flags = &h0
		Sub AppendMatch(oMatch as DataFile.t_matches)
		  aroMatches.Append oMatch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendTeam(oTeam as DataFile.t_team)
		  aroTeams.Append oTeam
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Count() As Integer
		  
		  dim s as Text
		  
		  
		  s = "select  Count(*) From t_event "
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CountForYear(year as integer) As Integer
		  
		  dim s as Text
		  
		  
		  s = "select  Count(*) From t_event WHERE Year = " + year.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByID(id as Integer) As DataFile.t_event
		  //Usage:
		  //dim t_event as DataFile.t_event = DataFile.t_event.FindByID( id )
		  dim s as Text
		  s = "Select * from t_event WHERE event_ID = " + id.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim t_event as new DataFile.t_event
		  t_event.ReadRecord(rs)
		  return t_event
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKey(key as Text) As DataFile.t_event
		  dim s as Text
		  s = "Select * from t_event WHERE key = " + key.sqlizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then 
		    dim t_event as new DataFile.t_event
		    t_event.sKey = key
		    return t_event
		  else
		    
		    dim t_event as new DataFile.t_event
		    t_event.ReadRecord(rs)
		    return t_event
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMatches() As DataFile.t_matches()
		  if aroMatches.Ubound = -1 then
		    aroMatches = DataFile.t_matches.ListByEventTag(me.skey, "")
		  end
		  
		  return aroMatches
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTeams() As DataFile.T_Team()
		  if aroTeams.Ubound = -1 then
		    aroTeams = DataFile.t_team.ListByEvent(me.ievent_ID)
		  end
		  
		  return aroTeams
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsKeyDuplicated(EventKey as text) As Boolean
		  dim s as text
		  s = "Select Count(*) from t_event WHERE Key = ? and event_id <> ?"
		  
		  dim rs as iOSSQLiteRecordSet
		  
		  rs = gdb.SQLSelect(s, EventKey, me.ievent_ID)
		  
		  return rs.IdxField(0).IntegerValue > 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNew() As boolean
		  return iEvent_ID < 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as Text = "", sOrderBy as Text = "") As DataFile.t_event()
		  //Usage:
		  // dim arot_event() as DataFile.t_event = DataFile.t_event.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_event() as DataFile.t_event
		  dim s as Text
		  
		  
		  s = "select  * From t_event "
		  if sCriteria <> "" then
		    s = s + " WHERE " + sCriteria
		  end
		  
		  
		  if sOrderBy.trim <> "" then 
		    s = s + " ORDER BY " + sOrderBy
		  end
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  do until rs.EOF
		    dim oRecord as new DataFile.t_event
		    oRecord.ReadRecord(rs)
		    
		    arot_event.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_event
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MatchCount(EventKey as Text) As Integer
		  
		  dim s as Text
		  
		  
		  s = "select  Count(*) From t_matches WHERE event_key = " + EventKey.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadRecord(rs as iOSSQLiteRecordSet)
		  ievent_ID = rs.Field("event_id").IntegerValue
		  iYear = rs.Field("year").IntegerValue
		  sEvent_Type_String = rs.Field("Event_Type_String").TextValue
		  sKey = rs.Field("key").TextValue
		  sLocation = rs.Field("Location").TextValue
		  sName = rs.Field("Name").TextValue
		  sShort_Name= rs.Field("Short_Name").TextValue
		  swebsite = rs.Field("website").TextValue
		  dtStart_Date = rs.Field("Start_Date").DateValue
		  dtend_date = rs.Field("End_Date").DateValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		  gDB.SQLExecute("BEGIN TRANSACTION")
		  
		  dim ars() as Text
		  
		  try
		    if IsNew then
		      ars.Append "INSERT INTO t_event"
		      ars.Append "(Year, Event_Type_String, Key, Location, Name, Short_Name, website, Start_Date, End_Date) VALUES ("
		      ars.Append iYear.ToText  + ", "
		      ars.Append sEvent_Type_String + ", "
		      ars.Append sKey.SQLizeText + ", "
		      ars.Append sLocation.SQLizeText + ", "
		      ars.Append sName.SQLizeText + ", "
		      ars.Append sShort_Name.SQLizeText + ", "
		      ars.Append swebsite.SQLizeText + ", "
		      ars.Append dtStart_Date.ToText.SQLizeText + ", "
		      ars.Append dtend_date.ToText.SQLizeText 
		      
		      ars.Append ")"
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL)
		      
		      me.ievent_ID = gdb.LastRowID
		      
		    else
		      
		      ars.Append "Update t_event Set"
		      ars.Append "Year = " + iYear.ToText  + ", "
		      ars.Append "Event_Type_String = " + sEvent_Type_String + ", "
		      ars.Append "Key = " + sKey.SQLizeText + ", "
		      ars.Append "Location = " + sLocation.SQLizeText + ", "
		      ars.Append "Name =" + sName.SQLizeText + ", "
		      ars.Append "Short_Name =" + sShort_Name.SQLizeText + ", "
		      ars.Append "website = " + swebsite.SQLizeText + ", "
		      ars.Append "start_Date = " + dtStart_Date.ToText.SQLizeText + ", "
		      ars.Append "end_Date = " + dtend_date.ToText.SQLizeText
		      ars.Append "WHERE event_ID = " + ievent_ID.ToText
		      
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL)
		      
		    end
		    gDB.SQLExecute("COMMIT")
		  catch
		    break
		    gdb.SQLExecute("ROLLBACK")
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveTeams()
		  for each oTeam as DataFile.t_team in aroTeams
		    if oTeam.IsNew then
		      oTeam.iEvent_ID = me.ievent_ID
		      oTeam.save
		    end
		  next
		  
		  //Clear the array so next time it reloads them.
		  redim aroTeams(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamCount(EventID as Integer) As Integer
		  
		  dim s as Text
		  
		  
		  s = "select  Count(*) From t_team WHERE event_id = " + EventID.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnscoutedTeams() As DataFile.t_team()
		  dim sWHERE as Text = " event_id = " + me.ievent_ID.ToText + " AND key NOT IN (Select teamkey from t_game) "
		  
		  return DataFile.T_Team.List(sWhere, "cast(Team_Number AS int)")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aroMatches() As DataFile.t_matches
	#tag EndProperty

	#tag Property, Flags = &h0
		aroTeams() As DataFile.t_team
	#tag EndProperty

	#tag Property, Flags = &h0
		dtend_date As xojo.Core.Date
	#tag EndProperty

	#tag Property, Flags = &h0
		dtStart_Date As xojo.Core.Date
	#tag EndProperty

	#tag Property, Flags = &h0
		ievent_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sEvent_Type_String As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		skey As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sLocation As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sShort_Name As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		swebsite As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ievent_ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iYear"
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
			Name="sEvent_Type_String"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="skey"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sLocation"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sName"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sShort_Name"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="swebsite"
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
End Class
#tag EndClass
