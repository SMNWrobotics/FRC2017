#tag Class
Protected Class TR_DriveTrainType
	#tag Method, Flags = &h0
		Shared Function BaseSQL(bAsCount as Boolean = false) as Text
		  dim ars() as Text
		  
		  ars.Append "select "
		  if bAsCount = false then
		    ars.Append "*"
		  else
		    ars.Append "count(*) as iCnt"
		  end if
		  
		  ars.Append "From TR_DriveTrainType"
		  
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
		Shared Function FindByID(id as Integer) As DataFile.TR_DriveTrainType
		  dim s as Text
		  s = "Select * from TR_DriveTrainType WHERE DriveTrainType_ID = " + id.ToText
		  
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  
		  if rs.RecordCount = 0 then return nil
		  
		  dim oRecord as new DataFile.TR_DriveTrainType
		  oRecord.ReadRecord(rs)
		  return oRecord
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNew() As boolean
		  return iDriveTrainType_ID < 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List(sCriteria as Text = "", sOrder as Text = "", iOffset as Integer = -1) As DataFile.TR_DriveTrainType()
		  //Note: You should not use this method if your query contains user entered DataFile.
		  //Using this method with user entered data could expose you to SQL injection attacks.
		  dim aro() as DataFile.TR_DriveTrainType
		  dim ars() as Text
		  
		  
		  ars.append DataFile.TR_DriveTrainType.BaseSQL
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
		    dim oRecord as new DataFile.TR_DriveTrainType
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
		  
		  
		  ars.append DataFile.TR_DriveTrainType.BaseSQL(True)
		  if sCriteria<>"" then
		    ars.append "WHERE " + sCriteria
		  end if
		  dim s as Text = ars.JoinSQL
		  dim rs as iOSSQLiteRecordSet = gDB.SQLSelect(s)
		  return rs.Field("iCnt").IntegerValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadRecord(rs as iOSSQLiteRecordSet)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		iDriveTrainType_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="iDriveTrainType_ID"
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
			Name="sName"
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
