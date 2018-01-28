#tag Class
Protected Class T_Game
Inherits Data.ActiveRecordBase
	#tag Event
		Sub BeforeSave()
		  if me.sscoutName = "" then
		    me.sscoutName = Preferences.StringValue("LastScoutName")
		  end
		  
		  if me.sScoutTeamNumber = "" then
		    me.sScoutTeamNumber = Preferences.StringValue("LastScoutTeam")
		  end
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function AverageForVariable(TeamNumber as string, Variable as String) As string
		  
		  Dim sql As String
		  
		  sql = "Select * from T_Game WHERE TeamNumber = " + TeamNumber.SQLizeText + " AND Variable = " + Variable.SQLizeText  + " AND Value <> '';"
		  
		  Dim rs As RecordSet = gDB.SQLSelectRaiseOnError(sql)
		  
		  Dim iCnt As Integer
		  Dim dTotal As Double
		  
		  Dim arsCount() As String = Array("BaseLine", "AutoSwitchAttempted", "AutoSwitchMade", "AutoScaleAttempted", "AutoScaleMade", "AutoScalePosition", "AutoSwitchPosition", _
		  "BoostOne", "BoostTwo", "BoostThree", "BoostUsedCount", "ForceOne", "ForceTwo", "ForceThree", "ForceUsedCount", _
		  "LevitateOne", "LevitateTwo", "LevitateThree", "Parked", "ClimbingAttemptedRobot", "ClimbingAttemptedRung", "ClimbingMade", "DefensePlayed", _
		  "CountOpponentSwitch", "CountPortalIntake", "CountScale", "CountYourSwitch", "CubesFromFloor", "CubesFromOpponent", "CubesFromPortal", _
		  "CubesFromPyramid", "CubesFromYou", "CubesLost", "CubeFromRobot", "CycleCount")
		  
		  Dim arsAverage() As String = Array("BoostUsedTime", "ForceUsedTime", "LevitateUsedTime", "CycleTotalTime", "CycleAverageTime")
		  
		  Dim arstemp() As String
		  
		  While rs.eof = False
		    If arsCount.IndexOf(Variable) > -1 Then
		      If rs.field("Value").StringValue  = "Yes" Then
		        iCnt = iCnt + 1
		      End
		    Elseif arsAverage.IndexOf(Variable) > -1 Then
		      dTotal = dTotal + rs.Field("Value").StringValue.Val
		    Else
		      arstemp.Append rs.Field("Value").StringValue
		    End
		    
		    rs.MoveNext
		  Wend
		  
		  If rs.RecordCount = 0 Then
		    Return ""
		  Else
		    
		    ' If Variable = "Baseline" Then
		    ' Break
		    ' End
		    
		    If arsCount.IndexOf(Variable) > -1 Then
		      Return Format(icnt/rs.RecordCount * 100, "###.0")+ "%"
		    Elseif arsAverage.IndexOf(Variable) > -1 Then
		      Return Format(dTotal/rs.RecordCount, "###")
		    Else
		      return Join(arstemp, ", ")
		    End
		  End
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function BaseSQL(bAsCount as Boolean = false) As String
		  dim ars() as string
		  
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
		Function DeleteOK(Byref sError as string) As Boolean
		  //Add your delete Validation here
		  
		  //Use sError to provide feedback to the user.
		  //Example:
		  //sError = "This Record cannot be deleted because xyz"
		  
		  
		  
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FindByID(id as Integer) As Data.T_Game
		  dim s as string
		  s = "Select * from T_Game WHERE Game_ID = " + id.ToString
		  
		  dim rs as RecordSet = gDB.SQLSelectRaiseOnError(s)
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim oRecord as new Data.T_Game
		  oRecord.ReadRecord(rs)
		  return oRecord
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(stmt as PreparedSQLStatement) As Data.T_Game()
		  //Note: You should use this method if your query contains user entered data. Using this method will help prevent SQL injection attacks
		  dim aro() as Data.T_Game
		  
		  dim rs as recordset = stmt.SQLSelectRaiseOnError(gDB)
		  
		  while rs.eof = false
		    dim oRecord as new Data.T_Game
		    oRecord.ReadRecord(rs)
		    aro.Append oRecord
		    rs.MoveNext
		  wend
		  
		  return aro
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as string = "", sOrder as string = "", iOffset as Integer = -1) As Data.T_Game()
		  //Note: You should not use this method if your query contains user entered data.
		  //Using this method with user entered data could expose you to SQL injection attacks.
		  dim aro() as Data.T_Game
		  dim ars() as string
		  
		  
		  ars.append Data.T_Game.BaseSQL
		  if sCriteria.Trim <> "" then
		    ars.append "WHERE " + sCriteria
		  end if
		  
		  if sOrder.trim <> "" then
		    ars.append " ORDER BY " + sOrder
		  else
		    'ars.append "<Your Field Here>"
		  end if
		  
		  if iOffset > -1 then
		    ars.append " LIMIT " + str(kMaxReturn) + " Offset " + str(iOffset)
		  end if
		  
		  dim s as string = ars.JoinSQL
		  dim rs as recordset = gDB.SQLSelectRaiseOnError(s)
		  
		  while rs.eof = false
		    dim oRecord as new Data.T_Game
		    oRecord.ReadRecord(rs)
		    aro.Append oRecord
		    rs.MoveNext
		  wend
		  
		  return aro
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListCount(stmt as PreparedSQLStatement) As Integer
		  //Note: You should use this method if your query contains user entered data. Using this method will help prevent SQL injection attacks
		  
		  dim rs as Recordset = stmt.SQLSelectRaiseOnError(gDB)
		  return rs.Field("iCnt").IntegerValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListCount(sCriteria as string = "") As Integer
		  //Note: You should not use this method if your query contains user entered data.
		  //Using this method with user entered data could expose you to SQL injection attacks.
		  dim ars() as string
		  
		  
		  ars.append Data.T_Game.BaseSQL(True)
		  if sCriteria<>"" then
		    ars.append "WHERE " + sCriteria
		  end if
		  dim s as string = ars.JoinSQL
		  dim rs as Recordset = gDB.SQLSelectRaiseOnError(s)
		  return rs.Field("iCnt").IntegerValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LoadMatchValue(MatchKey as string, TeamNumber as string, Variable as String) As Data.T_Game
		  dim oValue as new Data.T_Game
		  
		  //Let's try and load it from the database
		  dim s as string = "Select * from T_Game where " + _
		  " MatchKey = " + MatchKey.SQLizeText + _
		  " AND TeamNumber = " + TeamNumber.SQLizeText + _
		  " AND Variable = " + Variable.SQLizeText
		  dim rs as RecordSet = gdb.SQLSelectRaiseOnError(s)
		  
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
		Shared Function TeamForMatch(MatchKey as string, TeamKey as String) As Data.T_Game
		  dim s as string
		  
		  s = "Select * from t_game where MatchKey = " + MatchKey.SQLizeText + " AND TeamKey = " + teamKey.SQLizeText
		  
		  dim rs as RecordSet = gDB.SQLSelectRaiseOnError(s)
		  
		  if rs.RecordCount = 0 then
		    return nil
		  end
		  
		  dim oRecord as new Data.t_game
		  oRecord.ReadRecord(rs)
		  return oRecord
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamFound(TeamKey as String) As boolean
		  dim s as string
		  
		  s = "Select Count(*) from t_game where TeamKey = " + teamKey.SQLizeText
		  
		  dim rs as RecordSet = gDB.SQLSelectRaiseOnError(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamFoundForMatch(MatchKey as string, TeamNumber as String) As boolean
		  dim s as string
		  
		  s = "Select Count(*) from t_game where MatchKey = " + MatchKey.SQLizeText + " AND TeamNumber = " + TeamNumber.SQLizeText
		  
		  dim rs as RecordSet = gdb.SQLSelectRaiseOnError(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TeamFoundForMatchAndTeam(MatchKey as string, TeamNumber as String) As boolean
		  dim s as string
		  
		  s = "Select Count(*) from t_game where MatchKey = " + MatchKey.SQLizeText + " AND TeamNumber = " + TeamNumber.SQLizeText
		  
		  dim rs as RecordSet = gDB.SQLSelectRaiseOnError(s)
		  
		  return rs.IdxField(1).IntegerValue > 0
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		iGame_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sGameUUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sMatchKey As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sscoutName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sScoutTeamNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sTeamNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sValue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sVariable As String
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
			Name="sGameUUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sMatchKey"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sscoutName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sScoutTeamNumber"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sTeamNumber"
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
			Name="sValue"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sVariable"
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
