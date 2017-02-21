#tag Class
Protected Class T_Game
	#tag Method, Flags = &h0
		Shared Function BaseSQL(bAsCount as Boolean = false) as Text
		  dim ars() as Text
		  
		  ars.Append "select "
		  if bAsCount = false then
		    ars.Append "*"
		  else
		    ars.Append "count(*) as iCnt"
		  end if
		  
		  ars.Append "From T_Game"
		  
		  Return ars.JoinSQL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteOK(Byref sError as Text) As Boolean
		  //Add your delete Validation here
		  
		  //Use sError to provide feedback to the user.
		  //Example:
		  //sError = "This Record cannot be deleted because xyz"
		  
		  
		  
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByID(id as Integer) As DataFile.T_Game
		  dim s as Text
		  s = "Select * from T_Game WHERE Game_ID = " + id.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim oRecord as new DataFile.T_Game
		  oRecord.ReadRecord(rs)
		  return oRecord
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNew() As boolean
		  return iGame_ID < 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as Text = "", sOrder as Text = "", iOffset as Integer = -1) As DataFile.T_Game()
		  //Note: You should not use this method if your query contains user entered DataFile.
		  //Using this method with user entered data could expose you to SQL injection attacks.
		  dim aro() as DataFile.T_Game
		  dim ars() as Text
		  
		  
		  ars.append DataFile.T_Game.BaseSQL
		  if sCriteria.Trim <> "" then
		    ars.append "WHERE " + sCriteria
		  end if
		  
		  if sOrder.trim <> "" then
		    ars.append " ORDER BY " + sOrder
		  else
		    'ars.append "<Your Field Here>"
		  end if
		  
		  if iOffset > -1 then
		    ars.append " LIMIT " + kMaxReturn.ToText + " Offset " + iOffset.ToText
		  end if
		  
		  dim s as Text = ars.JoinSQL
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  while rs.eof = false
		    dim oRecord as new DataFile.T_Game
		    oRecord.ReadRecord(rs)
		    aro.Append oRecord
		    rs.MoveNext
		  wend
		  
		  return aro
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListCount(sCriteria as Text = "") As Integer
		  //Note: You should not use this method if your query contains user entered DataFile.
		  //Using this method with user entered data could expose you to SQL injection attacks.
		  dim ars() as Text
		  
		  
		  ars.append DataFile.T_Game.BaseSQL(True)
		  if sCriteria<>"" then
		    ars.append "WHERE " + sCriteria
		  end if
		  dim s as Text = ars.JoinSQL
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  return rs.Field("iCnt").IntegerValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LoadMatchValue(MatchKey as Text, TeamNumber as Text, Variable as Text) As DataFile.T_Game
		  dim oValue as new DataFile.T_Game
		  
		  //Let's try and load it from the database
		  dim s as Text = "Select * from T_Game where " + _
		  " MatchKey = " + MatchKey.SQLizeText + _
		  " AND TeamNumber = " + TeamNumber.SQLizeText + _
		  " AND Variable = " + Variable.SQLizeText
		  dim rs as iOSSQLiteRecordSet = gdb.SQLSelect(s)
		  
		  if rs.RecordCount = 0 then
		    //Name made yet.
		    oValue.sMatchKey = MatchKey
		    oValue.sTeamNumber = TeamNumber
		    oValue.sVariable = Variable
		    oValue.save
		  else
		    oValue.ReadRecord(rs)
		  end
		  
		  return oValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadRecord(rs as iOSSQLiteRecordSet)
		  iGame_ID = rs.Field("Game_ID").IntegerValue
		  sMatchKey = rs.Field("MatchKey").TextValue
		  sscoutName = rs.Field("scoutName").TextValue
		  sScoutTeamNumber = rs.Field("ScoutTeamNumber").TextValue
		  sTeamNumber = rs.Field("TeamNumber").TextValue
		  sValue = rs.Field("Value").TextValue
		  sVariable = rs.Field("Variable").TextValue
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  if sTeamNumber = "" then
		    break
		  end
		  
		  gDB.SQLExecute("BEGIN TRANSACTION")
		  
		  dim ars() as Text
		  
		  try
		    if IsNew then
		      ars.Append "INSERT INTO t_game"
		      ars.Append "(MatchKey, scoutName,ScoutTeamNumber,TeamNumber,  Value, Variable)  "
		      ars.Append " VALUES (?, ?, ?, ?, ?, ?)"
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL,  sMatchKey, sscoutName, sScoutTeamNumber, sTeamNumber, sValue, sVariable)
		      
		      me.iGame_ID = gdb.LastRowID
		      
		    else
		      
		      ars.Append "Update t_game Set"
		      ars.Append " MatchKey = ?, scoutName = ?,ScoutTeamNumber = ?,TeamNumber = ?,  Value = ?, Variable = ? "
		      ars.Append "WHERE game_id = ?" 
		      
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL,  sMatchKey, sscoutName, sScoutTeamNumber, sTeamNumber, sValue, sVariable, iGame_ID)
		      
		    end
		    gDB.SQLExecute("COMMIT")
		  catch
		    break
		    gdb.SQLExecute("ROLLBACK")
		  end
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamForMatch(MatchKey as Text, TeamKey as Text) As DataFile.T_Game
		  dim s as Text
		  
		  s = "Select * from t_game where MatchKey = " + MatchKey.SQLizeText + " AND TeamKey = " + teamKey.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  if rs.RecordCount = 0 then
		    return nil
		  end
		  
		  dim oRecord as new DataFile.t_game
		  oRecord.ReadRecord(rs)
		  return oRecord
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamFound(TeamKey as Text) As boolean
		  dim s as Text
		  
		  s = "Select Count(*) from t_game where TeamKey = " + teamKey.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamFoundForMatchAndTeam(MatchKey as Text, TeamNumber as Text) As boolean
		  dim s as Text
		  
		  s = "Select Count(*) from t_game where MatchKey = " + MatchKey.SQLizeText + " AND TeamNumber = " + TeamNumber.SQLizeText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		iGame_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sMatchKey As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sscoutName As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sScoutTeamNumber As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sTeamNumber As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sValue As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sVariable As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="iGame_ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
			Name="sMatchKey"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sscoutName"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sScoutTeamNumber"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sTeamNumber"
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
			Name="sValue"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sVariable"
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
