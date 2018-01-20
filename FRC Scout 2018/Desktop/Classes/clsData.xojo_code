#tag Class
Protected Class clsData
	#tag Method, Flags = &h21
		Private Sub Load(rs as RecordSet)
		  sTeamNumber = rs.Field("TeamNumber").StringValue
		  sScoutName = rs.Field("ScoutName").StringValue
		  sAutoNotes = rs.Field("AutoNotes").StringValue
		  sOtherNotes = rs.Field("OtherNotes").StringValue
		  sMatchUUID = rs.Field("MatchUUID").StringValue
		  iMatch_ID = rs.Field("Match_ID").IntegerValue
		  bAttemptedScale = rs.Field("AttemptedScale").BooleanValue
		  bSuccessfulScale = rs.Field("SuccessfulScale").BooleanValue
		  iDefense2Breeches = rs.Field("Defense2Breeches").IntegerValue
		  iDefense3Breeches = rs.Field("Defense3Breeches").IntegerValue
		  iDefense4Breeches = rs.Field("Defense4Breeches").IntegerValue
		  iDefense5Breeches = rs.Field("Defense5Breeches").IntegerValue
		  iDefenseType2ID = rs.Field("DefenseType2_ID").IntegerValue
		  iDefenseType3ID = rs.Field("DefenseType3_ID").IntegerValue
		  iDefenseType4ID = rs.Field("DefenseType4_ID").IntegerValue
		  iDefenseType5ID = rs.Field("DefenseType5_ID").IntegerValue
		  iHighShootMade = rs.Field("HighShootMade").IntegerValue
		  iHighShootAttempts = rs.Field("HighShootAttempts").IntegerValue
		  iLowShootMade = rs.Field("LowShootMade").IntegerValue
		  iLowShootAttempts = rs.Field("LowShootAttempts").IntegerValue
		  iLowBarBreaches = rs.Field("LowBarBreeches").IntegerValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadID(ID as Integer)
		  dim s as string
		  s = "Select * from t_game where match_id = " + str(ID)
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  if gDB.error then
		    dim serror as string = gDB.ErrorMessage
		    break
		    return
		  end
		  
		  Load rs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadUUID(UUID as String)
		  dim s as string
		  s = "Select * from t_game where matchUUID = " + UUID
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  if gDB.error then
		    dim serror as string = gDB.ErrorMessage
		    break
		    return
		  end
		  
		  Load rs
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  if iMatch_ID = 0 then
		    SaveNew
		  else
		    SaveExisting
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveExisting()
		  dim s as string
		  s = "Select * from t_game where match_id = " + str(iMatch_ID)
		  dim rs as RecordSet = gDB.SQLSelect(s)
		  if gDB.error then
		    dim serror as string = gDB.ErrorMessage
		    break
		    return
		  end
		  
		  rs.edit
		  
		  rs.Field("TeamNumber").StringValue = sTeamNumber
		  rs.Field("ScoutName").StringValue = sScoutName
		  rs.Field("AutoNotes").StringValue = sAutoNotes
		  rs.Field("OtherNotes").StringValue = sOtherNotes
		  rs.Field("MatchUUID").StringValue = sMatchUUID
		  rs.Field("Match_ID").IntegerValue = iMatch_ID 
		  rs.Field("AttemptedScale").BooleanValue = bAttemptedScale
		  rs.Field("SuccessfulScale").BooleanValue = bSuccessfulScale 
		  rs.Field("Defense2Breeches").IntegerValue = iDefense2Breeches
		  rs.Field("Defense3Breeches").IntegerValue = iDefense3Breeches
		  rs.Field("Defense4Breeches").IntegerValue = iDefense4Breeches
		  rs.Field("Defense5Breeches").IntegerValue = iDefense5Breeches
		  rs.Field("DefenseType2_ID").IntegerValue = iDefenseType2ID
		  rs.Field("DefenseType3_ID").IntegerValue = iDefenseType3ID
		  rs.Field("DefenseType4_ID").IntegerValue = iDefenseType4ID
		  rs.Field("DefenseType5_ID").IntegerValue = iDefenseType5ID
		  rs.Field("HighShootMade").IntegerValue = iHighShootMade
		  rs.Field("HighShootAttempts").IntegerValue = iHighShootAttempts
		  rs.Field("LowShootMade").IntegerValue = iLowShootMade 
		  rs.Field("LowShootAttempts").IntegerValue = iLowShootAttempts
		  rs.Field("LowBarBreeches").IntegerValue = iLowBarBreaches
		  
		  rs.Update
		  if gDB.error then
		    dim serror as string = gDB.ErrorMessage
		    break
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveNew()
		  dim dbr as new DatabaseRecord
		  
		  dbr.column("TeamNumber") = sTeamNumber
		  dbr.column("ScoutName") = sScoutName
		  dbr.column("AutoNotes") = sAutoNotes
		  dbr.column("OtherNotes") = sOtherNotes
		  sMatchUUID = modGlobals.GetGUID
		  dbr.column("MatchUUID") = sMatchUUID
		  dbr.BooleanColumn("AttemptedScale") = bAttemptedScale
		  dbr.BooleanColumn("SuccessfulScale") = bSuccessfulScale 
		  dbr.Integercolumn("Defense2Breeches") = iDefense2Breeches
		  dbr.Integercolumn("Defense3Breeches") = iDefense3Breeches
		  dbr.Integercolumn("Defense4Breeches") = iDefense4Breeches
		  dbr.Integercolumn("Defense5Breeches") = iDefense5Breeches
		  dbr.Integercolumn("DefenseType2_ID") = iDefenseType2ID
		  dbr.Integercolumn("DefenseType3_ID") = iDefenseType3ID
		  dbr.Integercolumn("DefenseType4_ID") = iDefenseType4ID
		  dbr.Integercolumn("DefenseType5_ID") = iDefenseType5ID
		  dbr.Integercolumn("HighShootMade") = iHighShootMade
		  dbr.Integercolumn("HighShootAttempts") = iHighShootAttempts
		  dbr.Integercolumn("LowShootMade") = iLowShootMade 
		  dbr.Integercolumn("LowShootAttempts") = iLowShootAttempts
		  dbr.Integercolumn("LowBarBreeches") = iLowBarBreaches
		  
		  gDB.InsertRecord "t_game", dbr
		  if gDB.error then
		    dim serror as string = gDB.ErrorMessage
		    break
		  end
		  
		  iMatch_ID = gDB.LastRowID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Validate() As boolean
		  if sScoutName.trim.len = 0 then
		    msgbox "Must Enter Scout Name"
		    return false
		  end
		  
		  if sTeamNumber.trim.len = 0 then
		    msgbox "Must Enter a Team Number"
		    return false
		  end
		  
		  if iDefenseType2ID = 0 then
		    msgbox "Defense 2  needs to be set"
		    return false
		  end
		  
		  if iDefenseType3ID = 0 then
		    msgbox "Defense 3  needs to be set"
		    return false
		  end
		  
		  if iDefenseType4ID = 0 then
		    msgbox "Defense 4  needs to be set"
		    return false
		  end
		  
		  if iDefenseType5ID = 0 then
		    msgbox "Defense 5  needs to be set"
		    return false
		  end
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		bAttemptedScale As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		bSuccessfulScale As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefense2Breeches As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefense3Breeches As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefense4Breeches As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefense5Breeches As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefenseType2ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefenseType3ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefenseType4ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iDefenseType5ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iHighShootAttempts As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iHighShootMade As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iLowBarBreaches As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iLowShootAttempts As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iLowShootMade As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		iMatch_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sAutoNotes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sMatchUUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sOtherNotes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sScoutName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sTeamNumber As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="bAttemptedScale"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bSuccessfulScale"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefense2Breeches"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefense3Breeches"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefense4Breeches"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefense5Breeches"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefenseType2ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefenseType3ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefenseType4ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iDefenseType5ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iHighShootAttempts"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iHighShootMade"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLowBarBreaches"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLowShootAttempts"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLowShootMade"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iMatch_ID"
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
			Name="sAutoNotes"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sMatchUUID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sOtherNotes"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sScoutName"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
