#tag Class
Protected Class t_matches
Inherits Data.ActiveRecordBase
	#tag Method, Flags = &h0
		Shared Function Count() As Integer
		  
		  dim s as string
		  
		  
		  s = "select Count(*) From t_matches "
		  
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
		Shared Function FindByID(id as Integer) As Data.t_matches
		  //Usage:
		  //dim t_matches as Data.t_matches = Data.t_matches.FindByID( id )
		  dim s as string
		  s = "Select * from t_matches WHERE matches_ID = " + str(id)
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then return nil
		  
		  dim t_matches as new Data.t_matches
		  t_matches.ReadRecord(rs)
		  return t_matches
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByKey(Key as String) As Data.t_matches
		  //Usage:
		  //dim t_matches as Data.t_matches = Data.t_matches.FindByID( id )
		  dim s as string
		  s = "Select * from t_matches WHERE key = " + key.SQLizeText
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  
		  if gDB.error then
		    System.debugLog gDB.ErrorMessage
		    return nil
		  end
		  if rs.RecordCount = 0 then 
		    dim t_matches as new Data.t_matches
		    t_matches.sKey = key
		    t_matches.save
		    return t_matches
		  else
		    dim t_matches as new Data.t_matches
		    t_matches.ReadRecord(rs)
		    return t_matches
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameBlue1() As Data.t_game
		  dim oGame as Data.t_game = Data.T_Game.TeamForMatch(me.skey, me.sBlue_Team_1)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameBlue2() As Data.t_game
		  dim oGame as Data.t_game = Data.T_Game.TeamForMatch(me.skey, me.sBlue_Team_2)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameBlue3() As Data.t_game
		  dim oGame as Data.t_game = Data.T_Game.TeamForMatch(me.skey, me.sBlue_Team_3)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameCount() As Integer
		  dim s as string
		  s = "Select Count(*) from t_game where matchkey = " + me.skey.SQLizeText
		  
		  dim rs as RecordSet = gDB.SQLSelectRaiseOnError(s)
		  
		  return rs.IdxField(1).IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameRed1() As Data.t_game
		  dim oGame as Data.t_game = Data.T_Game.TeamForMatch(me.skey, me.sRed_Team_1)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameRed2() As Data.t_game
		  dim oGame as Data.t_game = Data.T_Game.TeamForMatch(me.skey, me.sRed_Team_2)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GameRed3() As Data.t_game
		  dim oGame as Data.t_game = Data.T_Game.TeamForMatch(me.skey, me.sRed_Team_3)
		  return oGame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as string = "", sOrderBy as string = "") As Data.t_matches()
		  //Usage:
		  // dim arot_matches() as Data.t_matches = Data.t_matches.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_matches() as Data.t_matches
		  dim s as string
		  
		  
		  s = "select  * From t_matches "
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
		    return arot_matches
		  end
		  
		  do until rs.EOF
		    dim oRecord as new Data.t_matches
		    oRecord.ReadRecord(rs)
		    
		    arot_matches.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_matches
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListByEventTag(Key as String, sCompLevel as string) As Data.t_matches()
		  //Usage:
		  // dim arot_matches() as Data.t_matches = Data.t_matches.List("fieldName = somevalue", "fieldName")
		  
		  dim arot_matches() as Data.t_matches
		  dim s as string
		  
		  
		  s = "select  * From t_matches WHERE Event_Key = " + Key.SQLizeText 
		  
		  if sCompLevel <> "" then
		    s = s + " AND comp_level = " + sCompLevel.SQLizeText
		  end
		  
		  s = s + " ORDER BY Match_Number;"
		  
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  If gDB.error then
		    break
		    System.debugLog gDB.ErrorMessage
		    return arot_matches
		  end
		  
		  do until rs.EOF
		    dim oRecord as new Data.t_matches
		    oRecord.ReadRecord(rs)
		    
		    arot_matches.Append(oRecord)
		    rs.MoveNext
		  loop
		  
		  
		  
		  return arot_matches
		End Function
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
		sBlue_Team_1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sBlue_Team_2 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sblue_team_3 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sComp_Level As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sevent_key As String
	#tag EndProperty

	#tag Property, Flags = &h0
		skey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sRed_Team_1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sRed_Team_2 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sRed_Team_3 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		stime_string As String
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sBlue_Team_2"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sblue_team_3"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sComp_Level"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sevent_key"
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
			Name="sRed_Team_1"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sRed_Team_2"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sRed_Team_3"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stime_string"
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
