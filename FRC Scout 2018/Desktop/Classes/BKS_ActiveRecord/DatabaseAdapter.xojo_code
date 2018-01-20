#tag Class
Protected Class DatabaseAdapter
	#tag Method, Flags = &h0
		Sub BeginTransaction()
		  break //Should be called by the Database Adapter Subclass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BindId(stmt as PreparedSQLStatement, i as integer, id as Int64)
		  #if BKS_ActiveRecordConfig.kIncludeREALSQLDatabase
		    if db isa REALSQLDatabase then
		      stmt.BindType(i, REALSQLPreparedStatement.SQLITE_INT64)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeSQLiteDatabase and RBVersion>=2013
		    if db isa SQLiteDatabase then
		      stmt.BindType(i, SQLitePreparedStatement.SQLITE_INT64)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeMySQLCommunityServer
		    if db isa MySQLCommunityServer then
		      stmt.BindType(i, MySQLPreparedStatement.MYSQL_TYPE_LONGLONG)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludePostgreSQLDatabase
		    if db isa PostgreSQLDatabase then
		      //PostgreSQL doesn't do binding the same way
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeMSSQLServer
		    if db isa MSSQLServerDatabase then
		      stmt.BindType(i, MSSQLServerPreparedStatement.MSSQLSERVER_TYPE_INT)
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeODBC
		    if db isa ODBCDatabase then
		      stmt.BindType(i, ODBCPreparedStatement.ODBC_TYPE_BIGINT)
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeOracle
		    if db isa OracleDatabase then
		      stmt.BindType(i, OracleSQLPreparedStatement.SQL_TYPE_INTEGER)
		    end
		  #endif
		  
		  #If BKS_ActiveRecordConfig.kIncludeCubeDatabase
		    if db isa CubeSQLServer then
		      break
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeVSQLiteDatabase
		    if db isa VSQLiteDatabase then
		      stmt.BindType(i, SQLitePreparedStatement.SQLITE_INT64)
		    end if
		  #endif
		  
		  stmt.Bind(i, id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BindNull(stmt as PreparedSQLStatement, i as integer)
		  #if BKS_ActiveRecordConfig.kIncludeMySQLCommunityServer
		    if db isa MySQLCommunityServer then
		      stmt.BindType(i, MySQLPreparedStatement.MYSQL_TYPE_NULL)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeREALSQLDatabase
		    if db isa REALSQLDatabase then
		      stmt.BindType(i, REALSQLPreparedStatement.SQLITE_NULL)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeSQLiteDatabase and RBVersion>=2013
		    if db isa SQLiteDatabase then
		      stmt.BindType(i, SQLitePreparedStatement.SQLITE_NULL)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludePostgreSQLDatabase
		    if db isa PostgreSQLDatabase then
		      //PostgreSQL doesn't do binding the same way
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeODBC
		    if db isa ODBCDatabase then
		      stmt.BindType(i, ODBCPreparedStatement.ODBC_TYPE_NULL)
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeMSSQLServer
		    if db isa MSSQLServerDatabase then
		      stmt.BindType(i, MSSQLServerPreparedStatement.MSSQLSERVER_TYPE_NULL)
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeOracle
		    if db isa OracleDatabase then
		      stmt.BindType(i, OracleSQLPreparedStatement.SQL_TYPE_NULL)
		    end
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeVSQLiteDatabase
		    if db isa VSQLiteDatabase then
		      stmt.BindType(i, SQLitePreparedStatement.SQLITE_NULL)
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function BindValues(stmt as PreparedSQLStatement, oRecord as BKS_ActiveRecord.Base, aroField() as BKS_ActiveRecord.P.FieldInfo) As Dictionary
		  dim dictFieldValue as new Dictionary
		  
		  for i as integer = 0 to aroField.Ubound
		    dim oField as BKS_ActiveRecord.P.FieldInfo = aroField(i)
		    
		    dim iDbType as integer = oField.iDbType
		    
		    dim pi as Introspection.PropertyInfo = oField.piFieldProperty
		    
		    dim v as Variant = pi.Value(oRecord)
		    
		    select case db
		    case nil
		      'empty. This just let's it compile if someone turns off all the constants
		      
		    case isa MySQLCommunityServer
		      select case aroField(i).enFieldType
		      case DbType.DInteger
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_LONG
		      case DbType.DSmallInt
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_SHORT
		      case DbType.DDouble
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_DOUBLE
		      case DbType.DDate
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_DATE
		      case DbType.DTimestamp
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_TIMESTAMP
		      case DbType.DBoolean
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_TINY
		      case DbType.DBlob
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_BLOB
		      case DbType.DText
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_STRING
		      case DbType.DInt64
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_LONGLONG
		      case DbType.DFloat
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_DOUBLE
		      Case DBType.DCurrency
		        iDbType = MySQLPreparedStatement.MYSQL_TYPE_DOUBLE
		      case else
		        break 'unsupported type
		      end select
		      
		      
		      
		    end select
		    
		    'Xojo thinks MySQL BigInt (Int64) is a text field.
		    if oField.piFieldProperty.PropertyType.name = "Int64" AND oField.enFieldType = DbType.DText then
		      iDbType = MySQLPreparedStatement.MYSQL_TYPE_LONGLONG
		    end if
		    
		    stmt.BindType(i, iDbType)
		    
		    if oField.IsKey and v.IntegerValue<=0 then
		      'if the field is a key and it's 0 or less, then set it to NULL
		      BindNull(stmt, i)
		      stmt.Bind(i, nil)
		    elseif pi.PropertyType.Name="Date" or (pi.PropertyType.Name="Variant" and v.Type=Variant.TypeDate) then
		      
		      dim dt as Date = v.DateValue
		      if dt=nil then
		        BindNull(stmt, i)
		        stmt.Bind(i, nil)
		      else
		        dim dt1 as new Date
		        dt1.GMTOffset = dt.GMTOffset
		        dt1.TotalSeconds = dt.TotalSeconds
		        v = dt1 'copied for the saved value
		        
		        dim dt2 as new Date
		        dt2.GMTOffset = dt.GMTOffset
		        dt2.TotalSeconds = dt.TotalSeconds
		        dt = dt2
		        
		        if oField.enFieldType=BKS_ActiveRecord.DbType.DDate then
		          stmt.Bind(i, dt.SQLDate)
		        elseif oField.enFieldType=BKS_ActiveRecord.DbType.DTimestamp then
		          stmt.Bind(i, dt.SQLDateTime)
		        else
		          stmt.Bind(i, dt.SQLDateTime)
		        end if
		      end if
		      
		    elseif pi.PropertyType.Name="Double" and v.DoubleValue = BKS_ActiveRecord.kDoubleNullSentinal then
		      BindNull(stmt, i)
		      stmt.Bind(i, nil)
		    else
		      stmt.Bind(i, v)
		    end if
		    
		    dictFieldValue.Value(pi.Name) = v
		    
		  next
		  
		  return dictFieldValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CommitTransaction()
		  break //Should be called by the Database Adapter Subclass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor()
		  'Empty
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Db() As Database
		  BKS_Debug.Assert( false, "needs to be implemented in subclass" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteRecord(oRecord as BKS_ActiveRecord.Base)
		  
		  dim sql as string
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  oTableInfo = GetTableInfo( Introspection.GetType(oRecord) )
		  
		  sql = "DELETE FROM " + oTableInfo.sTableName + _
		  " WHERE " + oTableInfo.sPrimaryKey
		  
		  #If BKS_ActiveRecordConfig.kIncludePostgreSQLDatabase
		    If db IsA PostgreSQLDatabase Then
		      sql = sql  + "=$1"
		    Else
		      sql = sql  + "=?"
		    End If
		  #Else
		    sql = sql  + "=?"
		  #EndIf
		  dim stmt as PreparedSQLStatement
		  stmt = db.Prepare(sql)
		  BindId(stmt, 0, oRecord.ID)
		  
		  stmt.SQLExecute
		  if db.Error then
		    raise new BKS_ActiveRecord.DatabaseException(db)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetLastInsertID() As Int64
		  BKS_Debug.Assert( false, "needs to be implemented in subclass" )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasTable(sTableName as String) As boolean
		  dim rs as RecordSet
		  rs = Db.TableSchema
		  while not rs.EOF
		    if rs.IdxField(1).StringValue = sTableName then
		      return true
		    end if
		    rs.MoveNext
		  wend
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertRecord(oRecord as BKS_ActiveRecord.Base, byref dictSavedPropertyValue as Dictionary) As Int64
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  dim dictFieldValue as Dictionary
		  
		  oTableInfo = GetTableInfo( Introspection.GetType(oRecord) )
		  
		  dim arsField() as string
		  dim arsPlaceholder() as string
		  dim aroField() as BKS_ActiveRecord.P.FieldInfo
		  
		  for each oField as BKS_ActiveRecord.P.FieldInfo in oTableInfo.aroField
		    if oField.bPrimaryKey then
		      continue
		    end if
		    arsField.Append(oField.sFieldName)
		    arsPlaceholder.Append("?")
		    aroField.Append(oField)
		  Next
		  
		  If oTableInfo.sTableName = "VendorOrderDetail" Then
		    Dim i As Integer
		  end
		  
		  dim arsSQL() as string
		  arsSQL.append "INSERT INTO " + oTableInfo.sTableName
		  arsSQL.append "(" + Join(arsField, ",") + ")"
		  arsSQL.append " VALUES "
		  arsSQL.append "(" + Join(arsPlaceholder, ",") + ")"
		  
		  dim sSQL as string = Join(arsSQL, " ")
		  
		  dim stmt as PreparedSQLStatement
		  stmt = db.Prepare( sSQL )
		  
		  dictFieldValue = BindValues(stmt, oRecord, aroField)
		  
		  stmt.SQLExecute
		  if db.Error then
		    raise new BKS_ActiveRecord.DatabaseException(db)
		  end if
		  
		  dim iRecordID as Int64 = GetLastInsertID
		  dictFieldValue.Value( oTableInfo.piPrimaryKey.Name ) = iRecordID
		  
		  'store the newly saved property values
		  dictSavedPropertyValue = dictFieldValue
		  
		  return iRecordID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RollbackTransaction()
		  break //Should be called by the Database Adapter Subclass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectList(sTable as string, sCondition as string = "", sOrder as string = "") As RecordSet
		  dim sSQL as string = "SELECT * FROM " + sTable + " "
		  if sCondition<>"" then
		    sSQL = sSQL + "WHERE " + sCondition
		  end if
		  
		  if sOrder<>"" then
		    sSQL = sSQL + " ORDER BY " + sOrder
		  end if
		  sSQL = sSQL + ";"
		  
		  return SQLSelect(sSQL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectRecord(oRecord as BKS_ActiveRecord.Base, iRecordID as integer) As RecordSet
		  dim sql as string
		  dim rs as RecordSet
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  oTableInfo = GetTableInfo( Introspection.GetType(oRecord) )
		  
		  sql = "SELECT * FROM " + oTableInfo.sTableName + " WHERE " + oTableInfo.sPrimaryKey + "=?"
		  
		  dim stmt as PreparedSQLStatement
		  stmt = db.Prepare(sql)
		  BindId(stmt, 0, iRecordID)
		  
		  rs = stmt.SQLSelect
		  if db.Error then
		    raise new BKS_ActiveRecord.DatabaseException(db)
		  end if
		  
		  return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SQLExecute(sql as String)
		  db.SQLExecute( sql )
		  if db.Error then
		    raise new BKS_ActiveRecord.DatabaseException( db, sql )
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLSelect(sql as String) As RecordSet
		  dim rs as RecordSet = db.SQLSelect( sql )
		  if db.Error then
		    raise new BKS_ActiveRecord.DatabaseException( db, sql )
		  end if
		  return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateRecord(oRecord as BKS_ActiveRecord.Base, byref dictSavedPropertyValue as Dictionary)
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  dim dictFieldValue as Dictionary
		  
		  oTableInfo = GetTableInfo( Introspection.GetType(oRecord) )
		  
		  dim arsField() as string
		  dim aroField() as BKS_ActiveRecord.P.FieldInfo
		  dim oPrimaryKeyField as BKS_ActiveRecord.P.FieldInfo
		  
		  for each oField as BKS_ActiveRecord.P.FieldInfo in oTableInfo.aroField
		    if oField.bPrimaryKey then
		      oPrimaryKeyField = oField
		      continue
		    end if
		    arsField.Append(oField.sFieldName + "=?")
		    aroField.Append(oField)
		  next
		  dim arsSQL() as string
		  arsSQL.Append "UPDATE " + oTableInfo.sTableName + " SET "
		  arsSQL.Append Join(arsField, ",")
		  arsSQL.Append " WHERE " + oTableInfo.sPrimaryKey + "=?"
		  
		  dim stmt as PreparedSQLStatement
		  stmt = db.Prepare( Join(arsSQL, " ") )
		  
		  aroField.Append(oPrimaryKeyField)
		  dictFieldValue = BindValues(stmt, oRecord, aroField)
		  
		  stmt.SQLExecute
		  if db.Error then
		    raise new BKS_ActiveRecord.DatabaseException(db)
		  end if
		  
		  'store the newly saved property values
		  dictSavedPropertyValue = dictFieldValue
		End Sub
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
End Class
#tag EndClass
