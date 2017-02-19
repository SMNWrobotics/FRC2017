#tag Class
Protected Class t_matches
	#tag Method, Flags = &h0
		Shared Function Count() As Integer
		  
		  dim s as Text
		  
		  
		  s = "select Count(*) From t_matches "
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByID(id as Integer) As DataFile.t_matches
		  //Usage:
		  //dim t_matches as DataFile.t_matches = DataFile.t_matches.FindByID( id )
		  dim s as Text
		  s = "Select * from t_matches WHERE matches_ID = " +id.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim t_matches as new DataFile.t_matches
		  t_matches.ReadRecord(rs)
		  return t_matches
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKey(Key as Text) As DataFile.t_matches
		  //Usage:
		  //dim t_matches as DataFile.t_matches = DataFile.t_matches.FindByID( id )
		  dim s as Text
		  s = "Select * from t_matches WHERE key = " + key.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  if rs.RecordCount = 0 then 
		    dim t_matches as new DataFile.t_matches
		    t_matches.sKey = key
		    t_matches.save
		    return t_matches
		  else
		    dim t_matches as new DataFile.t_matches
		    t_matches.ReadRecord(rs)
		    return t_matches
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameBlue1() As DataFile.t_game
		  dim oGame as DataFile.t_game = DataFile.T_Game.TeamForMatch(me.skey, me.sBlue_Team_1)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameBlue2() As DataFile.t_game
		  dim oGame as DataFile.t_game = DataFile.T_Game.TeamForMatch(me.skey, me.sBlue_Team_2)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameBlue3() As DataFile.t_game
		  dim oGame as DataFile.t_game = DataFile.T_Game.TeamForMatch(me.skey, me.sBlue_Team_3)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameCount() As Integer
		  dim s as Text
		  s = "Select Count(*) from t_game where matchkey = " + me.skey.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameRed1() As DataFile.t_game
		  dim oGame as DataFile.t_game = DataFile.T_Game.TeamForMatch(me.skey, me.sRed_Team_1)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameRed2() As DataFile.t_game
		  dim oGame as DataFile.t_game = DataFile.T_Game.TeamForMatch(me.skey, me.sRed_Team_2)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameRed3() As DataFile.t_game
		  dim oGame as DataFile.t_game = DataFile.T_Game.TeamForMatch(me.skey, me.sRed_Team_3)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNew() As boolean
		  return iMatches_ID < 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as Text = "", sOrderBy as Text = "") As DataFile.t_matches()
		  //Usage:
		  // dim arot_matches() as DataFile.t_matches = DataFile.t_matches.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_matches() as DataFile.t_matches
		  dim s as Text
		  
		  
		  s = "select  * From t_matches "
		  if sCriteria <> "" then
		    s = s + " WHERE " + sCriteria
		  end
		  
		  
		  if sOrderBy.trim <> "" then 
		    s = s + " ORDER BY " + sOrderBy
		  end
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  do until rs.EOF
		    dim oRecord as new DataFile.t_matches
		    oRecord.ReadRecord(rs)
		    
		    arot_matches.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_matches
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListByEventTag(Key as Text, sCompLevel as Text) As DataFile.t_matches()
		  //Usage:
		  // dim arot_matches() as DataFile.t_matches = DataFile.t_matches.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_matches() as DataFile.t_matches
		  dim s as Text
		  
		  
		  s = "select  * From t_matches WHERE Event_Key = " + Key.SQLizeText 
		  
		  if sCompLevel <> "" then
		    s = s + " AND comp_level = " + sCompLevel.SQLizeText
		  end
		  
		  s = s + " ORDER BY Match_Number;"
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  
		  do until rs.EOF
		    dim oRecord as new DataFile.t_matches
		    oRecord.ReadRecord(rs)
		    
		    arot_matches.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_matches
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadRecord(rs as iOSSQLiteRecordSet)
		  iBlueScore = rs.Field("BlueScore").IntegerValue
		  iEvent_ID = rs.Field("Event_ID").IntegerValue
		  imatches_ID = rs.Field("matches_ID").IntegerValue
		  imatch_number = rs.Field("match_number").IntegerValue
		  iRedScore = rs.Field("RedScore").IntegerValue
		  sBlue_Team_1 =  rs.Field("Blue_Team_1").TextValue
		  sBlue_Team_2 =  rs.Field("Blue_Team_2").TextValue
		  sBlue_Team_3 =  rs.Field("Blue_Team_3").TextValue
		  sComp_Level =  rs.Field("Comp_Level").TextValue
		  sevent_key =  rs.Field("event_key").TextValue
		  sKey =  rs.Field("Key").TextValue
		  sRed_Team_1 =  rs.Field("Red_Team_1").TextValue
		  sRed_Team_2 =  rs.Field("Red_Team_2").TextValue
		  sRed_Team_3 =  rs.Field("Red_Team_3").TextValue
		  stime_string =  rs.Field("time_string").TextValue
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  if imatch_number = 0 and iset_number = 0 then
		    break
		  end
		  
		  gDB.SQLExecute("BEGIN TRANSACTION")
		  
		  dim ars() as Text
		  
		  try
		    if IsNew then
		      ars.Append "INSERT INTO t_matches"
		      ars.Append "(BlueScore, Event_ID, match_number, RedScore, set_number, Blue_Team_1, Blue_Team_2, Blue_Team_3, Comp_Level, " + _
		      " event_key, Key, Red_Team_1, Red_Team_2, Red_Team_3, time_string) VALUES ("
		      
		      ars.Append iBlueScore.ToText + ", "
		      ars.Append iEvent_ID.ToText + ", "
		      ars.Append imatch_number.ToText + ", "
		      ars.Append iRedScore.ToText + ", "
		      ars.Append iset_number.ToText + ", "
		      ars.Append sBlue_Team_1.SQLizeText + ", "
		      ars.Append sBlue_Team_2.SQLizeText + ", "
		      ars.Append sBlue_Team_3.SQLizeText + ", "
		      ars.Append sComp_Level.SQLizeText + ", "
		      ars.Append sevent_key.SQLizeText + ", "
		      ars.Append sKey.SQLizeText + ", "
		      ars.Append sRed_Team_1.SQLizeText + ", "
		      ars.Append sRed_Team_2.SQLizeText + ", "
		      ars.Append sRed_Team_3.SQLizeText + ", "
		      ars.Append stime_string.SQLizeText
		      
		      
		      ars.Append ")"
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL)
		      
		      me.imatches_ID = gdb.LastRowID
		      
		    else
		      
		      ars.Append "Update t_matches Set"
		      
		      ars.Append "BlueScore = " + iBlueScore.ToText + ", "
		      ars.Append "Event_ID = " +  iEvent_ID.ToText + ", "
		      ars.Append "match_number = " +  imatch_number.ToText + ", "
		      ars.Append "RedScore = " +  iRedScore.ToText + ", "
		      ars.Append "set_number = " +  iset_number.ToText + ", "
		      ars.Append "Blue_Team_1 = " +  sBlue_Team_1.SQLizeText + ", "
		      ars.Append "Blue_Team_2 = " +  sBlue_Team_2.SQLizeText + ", "
		      ars.Append "Blue_Team_3 = " +  sBlue_Team_3.SQLizeText + ", "
		      ars.Append "Comp_Level = " +  sComp_Level.SQLizeText + ", "
		      ars.Append "event_key = " +  sevent_key.SQLizeText + ", "
		      ars.Append "Key = " +  sKey.SQLizeText + ", "
		      ars.Append "Red_Team_1 = " +  sRed_Team_1.SQLizeText + ", "
		      ars.Append "Red_Team_2 = " +  sRed_Team_2.SQLizeText + ", "
		      ars.Append "Red_Team_3 = " +  sRed_Team_3.SQLizeText + ", "
		      ars.Append "time_string = " +  stime_string.SQLizeText
		      
		      
		      ars.Append "WHERE matches_ID = " + imatches_ID.ToText
		      
		      
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


	#tag Property, Flags = &h0
		iBlueScore As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iEvent_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		imatches_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		imatch_number As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iRedScore As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iset_number As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sBlue_Team_1 As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sBlue_Team_2 As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sblue_team_3 As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sComp_Level As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sevent_key As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		skey As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sRed_Team_1 As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sRed_Team_2 As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sRed_Team_3 As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		stime_string As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="iBlueScore"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iEvent_ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="imatches_ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="imatch_number"
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
			Name="iRedScore"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iset_number"
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
			Name="sBlue_Team_1"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sBlue_Team_2"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sblue_team_3"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sComp_Level"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sevent_key"
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
			Name="sRed_Team_1"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sRed_Team_2"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sRed_Team_3"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stime_string"
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
