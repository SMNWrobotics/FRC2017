#tag Class
Protected Class t_event
Inherits Data.ActiveRecordBase
	#tag Event
		Sub AfterSave()
		  for each oTeam as Data.t_team in aroTeams
		    oTeam.iEvent_ID = me.ievent_ID
		    oTeam.save
		  next
		  
		  //Clear the array so next time it reloads them.
		  redim aroTeams(-1)
		  
		  
		  for each oMatch as Data.t_matches in aroMatches
		    oMatch.iEvent_ID = me.ievent_ID
		    oMatch.sevent_key = me.skey
		    oMatch.save
		  next
		  
		  //Clear the array so next time it reloads them.
		  redim aroMatches(-1)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AppendMatch(oMatch as Data.t_matches)
		  aroMatches.Append oMatch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendTeam(oTeam as Data.t_team)
		  aroTeams.Append oTeam
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Count() As Integer
		  
		  dim s as string
		  
		  
		  s = "select  Count(*) From t_event "
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return 0
		  end
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CountForYear(year as integer) As Integer
		  
		  dim s as string
		  
		  
		  s = "select  Count(*) From t_event WHERE Year = " + str(year)
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return 0
		  end
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByID(id as Integer) As Data.t_event
		  //Usage:
		  //dim t_event as Data.t_event = Data.t_event.FindByID( id )
		  dim s as string
		  s = "Select * from t_event WHERE event_ID = " + str(id)
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then return nil
		  
		  dim t_event as new Data.t_event
		  t_event.ReadRecord(rs)
		  return t_event
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKey(key as String) As Data.t_event
		  dim s as string
		  s = "Select * from t_event WHERE key = " + key.sqlizeText
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then 
		    dim t_event as new Data.t_event
		    t_event.sKey = key
		    return t_event
		  else
		    
		    dim t_event as new Data.t_event
		    t_event.ReadRecord(rs)
		    return t_event
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMatches() As Data.t_matches()
		  if aroMatches.Ubound = -1 then
		    aroMatches = Data.t_matches.ListByEventTag(me.skey, "")
		  end
		  
		  return aroMatches
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTeams() As Data.T_Team()
		  if aroTeams.Ubound = -1 then
		    aroTeams = Data.t_team.ListByEvent(me.ievent_ID)
		  end
		  
		  return aroTeams
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as string = "", sOrderBy as string = "") As Data.t_event()
		  //Usage:
		  // dim arot_event() as Data.t_event = Data.t_event.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_event() as Data.t_event
		  dim s as string
		  
		  
		  s = "select  * From t_event "
		  if sCriteria <> "" then
		    s = s + " WHERE " + sCriteria
		  end
		  
		  
		  if sOrderBy.trim <> "" then 
		    s = s + " ORDER BY " + sOrderBy
		  end
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return arot_event
		  end
		  
		  do until rs.EOF
		    dim oRecord as new Data.t_event
		    oRecord.ReadRecord(rs)
		    
		    arot_event.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_event
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MatchCount(EventKey as string) As Integer
		  
		  dim s as string
		  
		  
		  s = "select  Count(*) From t_matches WHERE event_key = " + EventKey.SQLizeText
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return 0
		  end
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveTeams()
		  for each oTeam as Data.t_team in aroTeams
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
		  
		  dim s as string
		  
		  
		  s = "select  Count(*) From t_team WHERE event_id = " + str(EventID)
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return 0
		  end
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnscoutedTeams() As Data.t_team()
		  dim sWHERE as string = " event_id = " + str(me.ievent_ID) + " AND key NOT IN (Select ('frc'||teamnumber) as key from t_game) "
		  
		  return Data.T_Team.List(sWhere, "cast(Team_Number AS int)")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aroMatches() As Data.t_matches
	#tag EndProperty

	#tag Property, Flags = &h0
		aroTeams() As Data.t_team
	#tag EndProperty

	#tag Property, Flags = &h0
		dtend_date As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		dtStart_Date As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		ievent_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sEvent_Type_String As String
	#tag EndProperty

	#tag Property, Flags = &h0
		skey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sLocation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sShort_Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		swebsite As String
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="skey"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sLocation"
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
			Name="sShort_Name"
			Group="Behavior"
			Type="String"
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
			Type="String"
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
