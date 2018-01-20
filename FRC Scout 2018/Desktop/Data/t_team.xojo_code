#tag Class
Protected Class t_team
Inherits Data.ActiveRecordBase
	#tag Method, Flags = &h0
		Shared Function Count() As Integer
		  dim s as string
		  
		  
		  s = "select  count(*) From t_team "
		  
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
		Shared Function FindByID(id as Integer) As Data.t_team
		  //Usage:
		  //dim t_team as Data.t_team = Data.t_team.FindByID( id )
		  dim s as string
		  s = "Select * from t_team WHERE team_id = " + str(id)
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then return nil
		  
		  dim t_team as new Data.t_team
		  t_team.ReadRecord(rs)
		  return t_team
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKey(key as String) As Data.t_team
		  dim s as string
		  s = "Select * from t_team WHERE key = " + key.sqlizeText
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then 
		    dim t_team as new Data.t_team
		    t_team.sKey = key
		    t_team.save
		    return t_team
		  else
		    
		    dim t_team as new Data.t_team
		    t_team.ReadRecord(rs)
		    return t_team
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKeyAndEventID(key as String, EventID as Integer) As Data.t_team
		  dim s as string
		  s = "Select * from t_team WHERE key = " + key.sqlizeText + " AND event_id = " + str(eventID)
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then 
		    dim t_team as new Data.t_team
		    t_team.sKey = key
		    t_team.save
		    return t_team
		  else
		    
		    dim t_team as new Data.t_team
		    t_team.ReadRecord(rs)
		    return t_team
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDesignVariables() As Data.T_DesignVariables()
		  return data.T_DesignVariables.List
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMatches(Comp_Level as String) As Data.t_matches()
		  dim sWhere as string = " comp_level = '" + comp_level + "' AND (blue_Team_1 = '^1' OR blue_Team_2 = '^1' OR blue_Team_3 = '^1' OR Red_Team_1 = '^1' OR Red_Team_2 = '^1' OR Red_Team_3 = '^1') " 
		  
		  sWhere = sWhere.ReplaceAll("^1", me.sKey)
		  
		  dim sOrder as string = "Match_Number"
		  
		  dim aro() as Data.t_matches = Data.t_matches.list(sWHere, sorder)
		  
		  return aro
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HaveDesignData() As boolean
		  dim s as string = "Select Count(*) from T_Design WHERE Team_Number = " + sTeam_Number.SQLizeText
		  
		  dim rs as RecordSet = gdb.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as string = "", sOrderBy as string = "") As Data.t_team()
		  //Usage:
		  // dim arot_team() as Data.t_team = Data.t_team.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_team() as Data.t_team
		  dim s as string
		  
		  
		  s = "select  * From t_team "
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
		    return arot_team
		  end
		  
		  do until rs.EOF
		    dim oRecord as new Data.t_team
		    oRecord.ReadRecord(rs)
		    
		    arot_team.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_team
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListByEvent(ID as Integer) As Data.t_team()
		  //Usage:
		  // dim arot_team() as Data.t_team = Data.t_team.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_team() as Data.t_team
		  dim s as string
		  
		  
		  s = "select  * From t_team WHERE Event_ID = " + str(ID) + " ORDER BY cast(Team_Number AS int)"
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return arot_team
		  end
		  
		  do until rs.EOF
		    dim oRecord as new Data.t_team
		    oRecord.ReadRecord(rs)
		    
		    arot_team.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_team
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TotalGames() As String
		  //Get the total number of games
		  dim s as string
		  
		  s = "select count(*) from t_game where teamnumber = " + me.sTeam_Number.SQLizeText 
		  dim rs as RecordSet = gDB.SQLSelectRaiseOnError(s)
		  
		  iTotalGames = rs.IdxField(1).IntegerValue
		  
		  rs.close
		  
		  
		  return format(iTotalGames, "###")
		  
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
		sKey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sLocality As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sNickName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sRegion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sTeam_Number As String
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sLocality"
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
			Name="sNickName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sRegion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sTeam_Number"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
