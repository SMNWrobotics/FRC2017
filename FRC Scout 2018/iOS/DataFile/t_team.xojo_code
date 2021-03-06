#tag Class
Protected Class t_team
	#tag Method, Flags = &h0
		Shared Function Count() As Integer
		  dim s as Text
		  
		  
		  s = "select  count(*) From t_team "
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByID(id as Integer) As DataFile.t_team
		  //Usage:
		  //dim t_team as DataFile.t_team = DataFile.t_team.FindByID( id )
		  dim s as Text
		  s = "Select * from t_team WHERE team_id = " +id.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim t_team as new DataFile.t_team
		  t_team.ReadRecord(rs)
		  return t_team
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKey(key as Text) As DataFile.t_team
		  dim s as Text
		  s = "Select * from t_team WHERE key = " + key.sqlizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then 
		    dim t_team as new DataFile.t_team
		    t_team.sKey = key
		    t_team.save
		    return t_team
		  else
		    
		    dim t_team as new DataFile.t_team
		    t_team.ReadRecord(rs)
		    return t_team
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKeyAndEventID(key as Text, EventID as Integer) As DataFile.t_team
		  dim s as Text
		  s = "Select * from t_team WHERE key = " + key.sqlizeText + " AND event_id = " + eventID.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then 
		    dim t_team as new DataFile.t_team
		    t_team.sKey = key
		    t_team.save
		    return t_team
		  else
		    
		    dim t_team as new DataFile.t_team
		    t_team.ReadRecord(rs)
		    return t_team
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDesignVariables() As DataFile.T_DesignVariables()
		  return DataFile.T_DesignVariables.List
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMatches(Comp_Level as Text) As DataFile.t_matches()
		  dim sWhere as Text = " comp_level = '" + comp_level + "' AND (blue_Team_1 = '^1' OR blue_Team_2 = '^1' OR blue_Team_3 = '^1' OR Red_Team_1 = '^1' OR Red_Team_2 = '^1' OR Red_Team_3 = '^1') " 
		  
		  sWhere = sWhere.ReplaceAll("^1", me.sKey)
		  
		  dim sOrder as Text = "Match_Number"
		  
		  dim aro() as DataFile.t_matches = DataFile.t_matches.list(sWHere, sorder)
		  
		  return aro
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HaveDesignData() As boolean
		  dim s as Text = "Select Count(*) from T_Design WHERE Team_Number = " + sTeam_Number.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gdb.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsKeyDuplicated(EventKey as text) As Boolean
		  dim s as text
		  s = "Select Count(*) from t_team WHERE Key = ? and team_id <> ?"
		  
		  dim rs as iOSSQLiteRecordSet
		  
		  rs = gdb.SQLSelect(s, EventKey, me.iteam_id)
		  
		  return rs.IdxField(0).IntegerValue > 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNew() As boolean
		  return iTeam_ID < 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as Text = "", sOrderBy as Text = "") As DataFile.t_team()
		  //Usage:
		  // dim arot_team() as DataFile.t_team = DataFile.t_team.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_team() as DataFile.t_team
		  dim s as Text
		  
		  
		  s = "select  * From t_team "
		  if sCriteria <> "" then
		    s = s + " WHERE " + sCriteria
		  end
		  
		  
		  if sOrderBy.trim <> "" then 
		    s = s + " ORDER BY " + sOrderBy
		  end
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  do until rs.EOF
		    dim oRecord as new DataFile.t_team
		    oRecord.ReadRecord(rs)
		    
		    arot_team.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_team
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListByEvent(ID as Integer) As DataFile.t_team()
		  //Usage:
		  // dim arot_team() as DataFile.t_team = DataFile.t_team.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_team() as DataFile.t_team
		  dim s as Text
		  
		  
		  s = "select  * From t_team WHERE Event_ID = " +id.ToText + " ORDER BY cast(Team_Number AS int)"
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  do until rs.EOF
		    dim oRecord as new DataFile.t_team
		    oRecord.ReadRecord(rs)
		    
		    arot_team.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_team
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadRecord(rs as iOSSQLiteRecordSet)
		  iTeam_ID = rs.Field("team_id").IntegerValue
		  iEvent_ID = rs.Field("event_id").IntegerValue
		  iRookie_Year = rs.Field("rookie_year").IntegerValue
		  skey = rs.Field("key").TextValue
		  sLocality = rs.Field("locality").TextValue
		  sName = rs.Field("name").TextValue
		  sNickName = rs.Field("nickname").TextValue
		  sRegion = rs.Field("region").TextValue
		  sTeam_Number = rs.Field("team_number").TextValue
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		  
		  gDB.SQLExecute("BEGIN TRANSACTION")
		  
		  dim ars() as Text
		  
		  try
		    if IsNew then
		      
		      ars.Append "INSERT INTO t_team"
		      ars.Append "(rookie_year, Key, locality, Name, nickname, region, team_number, Event_ID) "
		      ars.append "VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL, iRookie_Year, sKey, sLocality, sName, sNickName, sRegion, sTeam_Number, iEvent_ID)
		      
		      me.iteam_id = gdb.LastRowID
		      
		    else
		      
		      ars.Append "Update t_team Set"
		      
		      ars.Append "event_id = ?, "
		      ars.Append "rookie_year = ?, "
		      ars.Append "Key = ?, "
		      ars.Append "locality = ?, "
		      ars.Append "Name = ?, "
		      ars.Append "nickname = ?, "
		      ars.Append "region = ?, " 
		      ars.Append "team_number = ? "
		      
		      ars.Append "WHERE team_id =? "
		      
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL, iEvent_ID, iRookie_Year, sKey, sLocality, sName, sNickName, sRegion, sTeam_Number, iteam_id)
		      
		    end
		    gDB.SQLExecute("COMMIT")
		  catch
		    break
		    gdb.SQLExecute("ROLLBACK")
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TotalGames() As Text
		  //Get the total number of games
		  dim s as Text
		  
		  s = "select count(*) from t_game where teamkey = " + me.sKey.SQLizeText 
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  iTotalGames = rs.IdxField(1).IntegerValue
		  
		  rs.close
		  
		  
		  return iTotalGames.ToText(Xojo.Core.Locale.Current, "###")
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		iEvent_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iRookie_Year As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iteam_id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared iTotalGames As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sKey As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sLocality As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sNickName As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sRegion As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sTeam_Number As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="iEvent_ID"
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
			Name="iRookie_Year"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iteam_id"
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
			Name="sKey"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sLocality"
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
			Name="sNickName"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sRegion"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sTeam_Number"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
