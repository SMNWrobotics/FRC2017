#tag Class
Protected Class T_Design
	#tag Method, Flags = &h0
		Shared Function BaseSQL(bAsCount as Boolean = false) as Text
		  dim ars() as Text
		  
		  ars.Append "select "
		  if bAsCount = false then
		    ars.Append "*"
		  else
		    ars.Append "count(*) as iCnt"
		  end if
		  
		  ars.Append "From T_Design"
		  
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
		Shared Function FindByID(id as Integer) As DataFile.T_Design
		  dim s as Text
		  s = "Select * from T_Design WHERE Design_ID = " + id.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim oRecord as new DataFile.T_Design
		  oRecord.ReadRecord(rs)
		  return oRecord
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNew() As boolean
		  return iDesign_ID < 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as Text = "", sOrder as Text = "", iOffset as Integer = -1) As DataFile.T_Design()
		  //Note: You should not use this method if your query contains user entered DataFile.
		  //Using this method with user entered data could expose you to SQL injection attacks.
		  dim aro() as DataFile.T_Design
		  dim ars() as Text
		  
		  
		  ars.append DataFile.T_Design.BaseSQL
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
		    dim oRecord as new DataFile.T_Design
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
		  
		  
		  ars.append DataFile.T_Design.BaseSQL(True)
		  if sCriteria<>"" then
		    ars.append "WHERE " + sCriteria
		  end if
		  dim s as Text = ars.JoinSQL
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  return rs.Field("iCnt").IntegerValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LoadTeamValue(TeamNumber as Text, Variable as Text) As DataFile.T_Design
		  dim oValue as new DataFile.T_Design
		  
		  //Let's try and load it from the database
		  dim s as Text = "Select * from T_Design where Team_Number = " + TeamNumber.SQLizeText + " AND Variable = " + Variable.SQLizeText
		  dim rs as iOSSQLiteRecordSet = gdb.SQLSelect(s)
		  
		  if rs.RecordCount = 0 then
		    //Name made yet.
		    oValue.sTeam_number = TeamNumber
		    oValue.sVariable = Variable
		    
		    Select case Variable
		    case "Scout Name"
		      oValue.sValue = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("ScoutName")
		    case "Scout Team"
		      oValue.sValue = Foundation.NSUserDefaults.StandardUserDefaults.TextForKey("TeamNumber")
		    end
		    
		    
		    oValue.save
		  else
		    oValue.ReadRecord(rs)
		  end
		  
		  return oValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadRecord(rs as iOSSQLiteRecordSet)
		  iDesign_ID = rs.Field("Design_ID").IntegerValue
		  sTeam_number = rs.Field("Team_number").TextValue
		  sValue = rs.Field("Value").TextValue
		  sVariable = rs.Field("Variable").TextValue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		  gDB.SQLExecute("BEGIN TRANSACTION")
		  
		  dim ars() as Text
		  
		  
		  try
		    if IsNew then
		      ars.Append "INSERT INTO T_Design"
		      ars.Append "(Team_number, Value, Variable) VALUES ("
		      
		      ars.Append sTeam_number.SQLizeText + ", "
		      ars.Append sValue.SQLizeText + ", "
		      ars.Append sVariable.SQLizeText
		      
		      ars.Append ")"
		      
		      dim sSQL as Text = ars.JoinSQL
		      
		      gDB.SQLExecute(sSQL)
		      
		    else
		      
		      ars.Append "Update T_Design  set "
		      
		      ars.Append "Team_number = " + sTeam_number.SQLizeText + ", "
		      ars.Append "Value = " + sValue.SQLizeText + ", "
		      ars.Append "Variable = " + sVariable.SQLizeText
		      
		      ars.Append "WHERE design_ID = " + iDesign_ID.ToText
		      
		      
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
		iDesign_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sTeam_number As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sValue As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		sVariable As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="iDesign_ID"
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
			Name="sTeam_number"
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
