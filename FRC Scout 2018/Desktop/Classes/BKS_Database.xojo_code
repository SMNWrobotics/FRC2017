#tag Module
Protected Module BKS_Database
	#tag Method, Flags = &h0
		Sub SQLExecuteRaiseOnError(extends db as Database, sql as String)
		  db.SQLExecute( sql )
		  if db.Error then
		    raise new BKS_Database.DatabaseException( db.ErrorMessage, sql )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SQLExecuteRaiseOnError(extends stmt as PreparedSQLStatement, db as Database)
		  stmt.SQLExecute
		  if db.Error then
		    raise new BKS_Database.DatabaseException( db.ErrorMessage, "" )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLSelectRaiseOnError(extends db as Database, sql as String) As RecordSet
		  dim rs as RecordSet = db.SQLSelect( sql )
		  if db.Error then
		    raise new BKS_Database.DatabaseException( db.ErrorMessage, sql )
		  end if
		  return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLSelectRaiseOnError(extends stmt as PreparedSQLStatement, db as Database) As RecordSet
		  dim rs as RecordSet = stmt.SQLSelect
		  if db.Error then
		    raise new BKS_Database.DatabaseException( db.ErrorMessage, "" )
		  end if
		  return rs
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
End Module
#tag EndModule
