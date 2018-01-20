#tag Module
Protected Module BKS_ActiveRecord
	#tag Method, Flags = &h0
		Sub BeginTransaction()
		  //Use BeginTransaction when outside of ActiveRecord
		  
		  
		  dim ctx as BKS_ActiveRecord.P.Context = GetContext
		  dim adp as BKS_ActiveRecord.DatabaseAdapter = ctx.ConnectionAdapter_Get(GetTypeInfo(BKS_ActiveRecord.Base))
		  
		  adp.BeginTransaction
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ColumnName(rs as RecordSet) As String
		  dim iIndex as integer = -1
		  'Oracle FieldSchema it is Column_Name
		  for i as Integer = 0 to rs.FieldCount - 1
		    select case rs.IdxField(i+1).Name
		    case "ColumnName","Column_Name"
		      iIndex = i + 1
		    end select
		  next
		  
		  if iIndex > -1 then
		    Return rs.IdxField(iIndex).StringValue
		  else
		    Return "unknown"
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CommitTransaction()
		  //Use CommitTransaction when outside of ActiveRecord
		  
		  
		  dim ctx as BKS_ActiveRecord.P.Context = GetContext
		  dim adp as BKS_ActiveRecord.DatabaseAdapter = ctx.ConnectionAdapter_Get(GetTypeInfo(BKS_ActiveRecord.Base))
		  
		  adp.CommitTransaction
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Connect(db as Database)
		  Connect(GetTypeInfo(BKS_ActiveRecord.Base), db)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Connect(ty as Introspection.TypeInfo, db as Database)
		  if ty=nil or db=nil then
		    raise new NilObjectException
		  end if
		  dim adp as BKS_ActiveRecord.DatabaseAdapter
		  adp = CreateDatabaseAdapter(db)
		  GetContext.ConnectionAdapter_Set(ty, adp)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateDatabaseAdapter(db as Database) As BKS_ActiveRecord.DatabaseAdapter
		  #if BKS_ActiveRecordConfig.kIncludeREALSQLDatabase
		    if db isa REALSQLDatabase then
		      return new REALSQLDatabaseAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeSQLiteDatabase and RBVersion>=2013
		    if db isa SQLiteDatabase then
		      return new SQLiteDatabaseAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeCubeDatabase
		    if db isa CubeSQLServer then
		      return new cubeSQLDatabaseAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeMSSQLServer
		    if db isa MSSQLServerDatabase then
		      return new MSSQLServerAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeMySQLCommunityServer
		    if db isa MySQLCommunityServer then
		      return new MySQLCommunityServerAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeODBC
		    if db isa ODBCDatabase then
		      return new ODBCServerAdapter(db)
		    end
		  #Endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeOracle
		    if db isa OracleDatabase then
		      return new OracleAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludePostgreSQLDatabase
		    if db isa PostgreSQLDatabase then
		      return new PostgreSQLDatabaseAdapter(db)
		    end if
		  #endif
		  
		  #if BKS_ActiveRecordConfig.kIncludeVSQLiteDatabase
		    if db isa VSQLiteDatabase then
		      return new VSQLiteDatabaseAdapter(db)
		    end if
		  #endif
		  
		  dim ex as new UnsupportedOperationException
		  ex.Message = "Unsupported database type: " + Introspection.GetType(db).FullName
		  raise ex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Disconnect()
		  'Disconnect the base active record class from the database
		  Disconnect( GetTypeInfo(BKS_ActiveRecord.Base) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Disconnect(ty as Introspection.TypeInfo)
		  'Disconnect a specific active record class from the database
		  if ty=nil then
		    raise new NilObjectException
		  end if
		  
		  dim ctx as BKS_ActiveRecord.P.Context = GetContext
		  ctx.ConnectionAdapter_Remove(ty)
		  #if RBVersion >= 2011.04
		    #if TargetWeb
		      if ctx.ConnectionAdapter_Count=0 then
		        'kill the context
		        dim lck as new BKS_ActiveRecord.P.ScopedLock(csCtx)
		        m_dictContext.Remove(Session.Identifier)
		      end if
		    #endif
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Field(sFieldName as string) As BKS_ActiveRecord.FieldOpt
		  return new FieldOpt(sFieldName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FieldType(rs as RecordSet) As Integer
		  dim iIndex as integer = -1
		  'Oracle FieldSchema it is Data_Type
		  for i as Integer = 0 to rs.FieldCount - 1
		    select case rs.IdxField(i+1).Name
		    case "FieldType","Data_Type"
		      iIndex = i + 1
		    end select
		  next
		  
		  if iIndex > -1 then
		    Return rs.IdxField(iIndex).IntegerValue
		  else
		    Return 0
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Field_IsPrimary(rs as RecordSet) As Boolean
		  
		  'Oracle FieldSchema does not have this info so, calling rs.Field("IsPrimary") throws an exception
		  for i as Integer = 0 to rs.FieldCount - 1
		    select case rs.IdxField(i+1).Name
		    case "IsPrimary"
		      Return rs.IdxField(i+1).BooleanValue
		    end select
		  next
		  
		  Return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FindFieldProperty(tyClass as Introspection.TypeInfo, sField as string) As Introspection.PropertyInfo
		  dim iPrefixType as integer = 1 //Created By ARGen
		  
		  static arsAllowPrefix() as string = Array("dt", "s", "d", "b", "i", "i64", "c") //Created By ARGen
		  static arsAllowSuffix() as string = Array("_dt", "_s", "_d", "_b", "_i", "_i64", "_c") //Created By ARGen
		  
		  'Match the field to a property of the class.
		  
		  select case iPrefixType
		  case 0
		    //No prefix/Suffix
		    
		    for each pi as Introspection.PropertyInfo in tyClass.GetProperties
		      
		      if pi.Name = sField then
		        return pi 'accept exact match
		      end
		    next
		    
		    return nil
		    
		  case 1
		    //Prefix
		    for each pi as Introspection.PropertyInfo in tyClass.GetProperties
		      if pi.Name.Right(sField.Len) = sField then
		        'check for a prefix match
		        dim sPrefix as string = pi.Name.Mid(1, pi.Name.Len - sField.Len)
		        if arsAllowPrefix.IndexOf(sPrefix) >-1 then
		          return pi
		        end if
		      end
		    next
		    
		    return nil
		    
		  case 2
		    //Suffix
		    for each pi as Introspection.PropertyInfo in tyClass.GetProperties
		      if pi.name.left(sField.Len) = sField then
		        'Check for suffix match
		        dim sSuffix as string = pi.Name.Right(pi.Name.Len - sField.Len)
		        if arsAllowSuffix.IndexOf(sSuffix) > -1 then
		          return pi
		        end
		      end if
		    next
		    
		    return nil
		    
		  case else
		    break
		  end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FindMatchingTable(adp as BKS_ActiveRecord.DatabaseAdapter, sClassName as string) As string
		  dim sTable as string = sClassName
		  if adp.HasTable( sTable ) then
		    return sTable
		  end if
		  
		  sTable = "tbl" + sClassName
		  if adp.HasTable( sTable ) then
		    return sTable
		  end if
		  
		  'if the class is clsSomething, look for Something and tblSomething
		  'but not if the letter after cls is lowercase
		  dim sFourth as string = Mid(sClassName,4,1)
		  if Left( sClassName, 3 ) = "cls" and _
		    StrComp( sFourth, "A", 0 ) >= 0 and _
		    StrComp( sFourth, "Z", 0 ) <=0 then
		    sTable = sClassName.Mid(4)
		    if adp.HasTable( sTable ) then
		      return sTable
		    end if
		    
		    sTable = "tbl" + sTable
		    if adp.HasTable( sTable ) then
		      return sTable
		    end if
		  end if
		  
		  return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FindPrimaryKeyOracle(db as Database, oTableInfo as BKS_ActiveRecord.P.TableInfo)
		  'Oracle FieldSchema does not have a IsPrimary column
		  
		  dim ars() as string
		  dim sTableName as string = "'" + oTableInfo.sTableName.Uppercase + "'"
		  ars.append "SELECT cols.column_name as name "
		  ars.append "FROM all_constraints cons, all_cons_columns cols"
		  ars.append "WHERE cols.table_name = "
		  ars.Append sTableName
		  ars.append "AND cons.constraint_type = 'P'"
		  ars.append "AND cons.constraint_name = cols.constraint_name"
		  ars.append "AND cons.owner = cols.owner"
		  ars.append "ORDER BY cols.table_name, cols.position"
		  
		  
		  dim s as string = join(ars, " ")
		  
		  dim rs as RecordSet = db.SQLSelect(s)
		  if db.Error then
		    break 
		    Return 'do nothing we can't find the primary key
		  end if
		  
		  if rs.eof then
		    break
		    Return 'do nothing we can't find the primary key
		  end if
		  
		  dim sField as string = rs.Field("name").StringValue.Lowercase
		  for each oField as BKS_ActiveRecord.P.FieldInfo in oTableInfo.aroField
		    if oField.sFieldName.Lowercase = sField then
		      oTableInfo.sPrimaryKey = oField.sFieldName
		      oTableInfo.piPrimaryKey = oField.piFieldProperty
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetContext() As BKS_ActiveRecord.P.Context
		  if m_ctxDefault is nil then
		    m_ctxDefault = new BKS_ActiveRecord.P.Context
		  end if
		  
		  #if RBVersion >= 2011.04
		    #if TargetWeb
		      if not Session.Available then
		        return m_ctxDefault
		      end if
		      
		      dim lck as new BKS_ActiveRecord.P.ScopedLock(csCtx)
		      
		      if m_dictContext=nil then
		        m_dictContext = new Dictionary
		      end if
		      
		      if not m_dictContext.HasKey(Session.Identifier) then
		        m_dictContext.Value(Session.Identifier) = new BKS_ActiveRecord.P.Context
		      end if
		      return m_dictContext.Value(Session.Identifier)
		    #endif
		  #endif
		  
		  return m_ctxDefault
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetDatabaseAdapter() As BKS_ActiveRecord.DatabaseAdapter
		  //GetDatabaseAdapter
		  //Useful if you want to get do transactions outside of the Base Class.
		  //Example:  You know you have some lengthy operations to do.
		  
		  dim ctx as BKS_ActiveRecord.P.Context = GetContext
		  dim adp as BKS_ActiveRecord.DatabaseAdapter = ctx.ConnectionAdapter_Get(GetTypeInfo(BKS_ActiveRecord.Base))
		  
		  Return adp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetTableDefs() As BKS_ActiveRecord.TableDef()
		  dim aroTableDef() as BKS_ActiveRecord.TableDef
		  for each oTableInfo as BKS_ActiveRecord.P.TableInfo in GetContext.TableInfo_List
		    dim aro() as BKS_ActiveRecord.FieldDef
		    
		    for each oFieldInfo as BKS_ActiveRecord.P.FieldInfo in oTableInfo.aroField
		      dim o as new BKS_ActiveRecord.FieldDef( oFieldInfo.sFieldName, oFieldInfo.enFieldType, oFieldInfo.bPrimaryKey, oFieldInfo.bForeignKey)
		      aro.Append(o)
		    next
		    
		    dim oTableDef as new BKS_ActiveRecord.TableDef(oTableInfo.sTableName, oTableInfo.sPrimaryKey, aro)
		    aroTableDef.Append(oTableDef)
		  next
		  return aroTableDef
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetTableInfo(ty as Introspection.TypeInfo) As BKS_ActiveRecord.P.TableInfo
		  'check the info cache and return the mapping if it exists
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo = GetContext.TableInfo_Get(ty)
		  if oTableInfo<>nil then
		    return oTableInfo
		  end if
		  
		  'try to map the class to a table by name
		  dim adp as BKS_ActiveRecord.DatabaseAdapter = GetContext.ConnectionAdapter_Get( ty )
		  if adp<>nil then
		    dim sTable as string
		    sTable = FindMatchingTable( adp, ty.Name )
		    if sTable<>"" then
		      Table adp.Db, sTable, ty
		      return GetContext.TableInfo_Get(ty)
		    end if
		  end if
		  
		  'table not registered and not found by name
		  dim ex as RuntimeException
		  ex.Message = "Class does not have a table registered for it: " + ty.FullName
		  raise ex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetTypeConstructor(oTableInfo as BKS_ActiveRecord.P.TableInfo) As Introspection.ConstructorInfo
		  dim oConstructor as Introspection.ConstructorInfo
		  
		  for each o as Introspection.ConstructorInfo in oTableInfo.tyClass.GetConstructors
		    dim aroParam() as Introspection.ParameterInfo = o.GetParameters
		    if aroParam.Ubound = 0 then
		      if aroParam(0).ParameterType.FullName = "RecordSet" then
		        oConstructor = o
		        exit for
		      end if
		    end if
		  next
		  
		  return oConstructor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MapFieldInfo(tyClass as Introspection.TypeInfo, rs as RecordSet, aroFieldOpt() as FieldOpt) As BKS_ActiveRecord.P.FieldInfo
		  static arsAllowPrefix() as string = Array("m_", "m_id","i","s","dtm","dt","b","d","v","pict")
		  
		  dim sField as string = ColumnName(rs)
		  
		  If sField = "orderlineprice" Then
		    dim i as integer
		  end
		  
		  'extract the field option if one was passed in for this field
		  dim oFieldOpt as FieldOpt
		  for each o as FieldOpt in aroFieldOpt
		    if o.FieldName=sField then
		      oFieldOpt = o
		    end if
		  next
		  
		  if oFieldOpt<>nil and oFieldOpt.IsIgnored then
		    return nil 'ignore this field
		  end if
		  
		  'Find the database field type
		  dim enFieldType as DbType
		  dim iFieldType as integer = FieldType(rs)
		  select case iFieldType
		  case 2 'smallint
		    enFieldType = DbType.DSmallInt
		  case 3 'integer
		    enFieldType = DbType.DInteger
		  case 4 'Serial
		    enFieldType = DbType.DInteger
		  case 5 'text or varchar
		    enFieldType = DbType.DText
		  case 6 'float
		    enFieldType = DbType.DFloat
		  case 7 'double
		    enFieldType = DbType.DDouble
		  case 8 'date
		    enFieldType = DbType.DDate
		  case 9 'time
		    enFieldType = DbType.DTime
		  case 10 'timestamp
		    enFieldType = DbType.DTimestamp
		  case 1, 12 'boolean
		    enFieldType = DbType.DBoolean
		  case 13 'Decimal?
		    enFieldType = DBType.DCurrency
		  case 14 'binary
		    enFieldType = DbType.DBlob
		  case 15 'blob
		    enFieldType = DbType.DBlob
		  case 19 'int64
		    enFieldType = DbType.DInt64
		  case else
		    break
		  end select
		  
		  'Match the field to a property of the class.
		  ' Properties are named with a prefix:  <prefix>FieldName = FieldName
		  dim piFound as Introspection.PropertyInfo
		  piFound = FindFieldProperty(tyClass, sField)
		  
		  if piFound=nil then
		    BKS_Debug.Assert( false, "No property for field " +tyclass.FullName + "." + sField )
		    return nil
		  end if
		  
		  dim oFieldInfo as new BKS_ActiveRecord.P.FieldInfo(sField, piFound)
		  oFieldInfo.enFieldType = enFieldType
		  if Field_IsPrimary(rs) then
		    oFieldInfo.bPrimaryKey = true
		  end if
		  
		  
		  return oFieldInfo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MapTableInfo(db as Database, sTable as string, tyClass as Introspection.TypeInfo, aroFieldOpt() as FieldOpt, IsView as boolean = false) As BKS_ActiveRecord.P.TableInfo
		  'Map fields in the database to properties on the class and
		  'return a list of <field> : <propertyInfo> pairs.
		  
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  ' dim pi as Introspection.Propertyinfo
		  
		  oTableInfo = new BKS_ActiveRecord.P.TableInfo
		  oTableInfo.tyClass = tyClass
		  
		  dim rs as RecordSet = Db.FieldSchema(sTable)
		  
		  BKS_Debug.Assert(rs.EOF=false, "Table not found: " + sTable)
		  
		  do until rs.EOF
		    dim oFieldInfo as BKS_ActiveRecord.P.FieldInfo
		    oFieldInfo = MapFieldInfo(tyClass, rs, aroFieldOpt)
		    if oFieldInfo<>nil then
		      if oFieldInfo.bPrimaryKey then
		        oTableInfo.sPrimaryKey = oFieldInfo.sFieldName
		        oTableInfo.piPrimaryKey = oFieldInfo.piFieldProperty
		      end if
		      oTableInfo.aroField.Append(oFieldInfo)
		    end if
		    
		    rs.MoveNext
		  loop
		  
		  #if BKS_ActiveRecordConfig.kIncludeOracle
		    if IsView = false and oTableInfo.sPrimaryKey =  "" then
		      
		      if db isa OracleDatabase then
		        oTableInfo.sTableName = sTable
		        FindPrimaryKeyOracle db, oTableInfo
		      end if
		      
		    end if
		  #Endif
		  
		  if IsView = false then
		    BKS_Debug.Assert(oTableInfo.sPrimaryKey<>"", "The table needs to have a primary key")
		  end
		  
		  oTableInfo.sTableName = sTable
		  
		  return oTableInfo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MapTableInfo(tyClass as Introspection.TypeInfo, oTableDef as BKS_ActiveRecord.TableDef) As BKS_ActiveRecord.P.TableInfo
		  'Map fields in the database to properties on the class and
		  'return a list of <field> : <propertyInfo> pairs.
		  
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  ' dim pi as Introspection.Propertyinfo
		  
		  oTableInfo = new BKS_ActiveRecord.P.TableInfo
		  oTableInfo.sTableName = oTableDef.sTableName
		  oTableInfo.sPrimaryKey = oTableDef.sPrimaryKey
		  oTableInfo.piPrimaryKey = FindFieldProperty(tyClass, oTableInfo.sPrimaryKey)
		  if oTableInfo.piPrimaryKey=nil then
		    break
		  end if
		  oTableInfo.tyClass = tyClass
		  
		  for each oFieldDef as BKS_ActiveRecord.FieldDef in oTableDef.aroField
		    dim oFieldInfo as new BKS_ActiveRecord.P.FieldInfo( oFieldDef.sFieldName, FindFieldProperty(tyClass, oFieldDef.sFieldName))
		    oFieldInfo.bPrimaryKey = oFieldDef.IsPrimaryKey
		    oFieldInfo.bForeignKey = oFieldDef.IsForeignKey
		    oFieldInfo.enFieldType = oFieldDef.enFieldType
		    if oFieldInfo.piFieldProperty=nil then
		      break
		    end if
		    oTableInfo.aroField.Append(oFieldInfo)
		  next
		  
		  return oTableInfo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Query(ty as Introspection.TypeInfo, sCriteria as string = "", sOrder as string = "") As Variant()
		  dim adp as BKS_ActiveRecord.DatabaseAdapter
		  adp = GetContext.ConnectionAdapter_Get( ty )
		  if adp=nil then
		    raise new RuntimeException
		  end if
		  
		  if not ty.IsSubclassOf( GetTypeInfo( Base ) ) then
		    dim ex as new RuntimeException
		    ex.Message = "Invalid type"
		    raise ex
		  end if
		  
		  dim aro() as Variant
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo = GetTableInfo( ty )
		  
		  dim oConstructor as Introspection.ConstructorInfo
		  oConstructor = GetTypeConstructor(oTableInfo)
		  
		  dim rs as RecordSet
		  rs = adp.SelectList(oTableInfo.sTableName, sCriteria, sOrder)
		  
		  do until rs.EOF
		    dim arv() as Variant
		    arv.Append(rs)
		    dim oBase as Base = oConstructor.Invoke(arv)
		    aro.Append( oBase )
		    rs.MoveNext
		  loop
		  
		  return aro
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function QueryRecordset(ty as Introspection.TypeInfo, sql as String) As RecordSet
		  dim adp as BKS_ActiveRecord.DatabaseAdapter
		  adp = GetContext.ConnectionAdapter_Get( ty )
		  if adp=nil then
		    raise new RuntimeException
		  end if
		  
		  if not ty.IsSubclassOf( GetTypeInfo( Base ) ) then
		    dim ex as new RuntimeException
		    ex.Message = "Invalid type"
		    raise ex
		  end if
		  
		  return adp.SQLSelect(sql)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RollbackTransaction()
		  //Use RollbackTransaction when outside of ActiveRecord
		  
		  
		  dim ctx as BKS_ActiveRecord.P.Context = GetContext
		  dim adp as BKS_ActiveRecord.DatabaseAdapter = ctx.ConnectionAdapter_Get(GetTypeInfo(BKS_ActiveRecord.Base))
		  
		  adp.RollbackTransaction
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function stringFromDbType(enDbType as BKS_ActiveRecord.DbType) As string
		  select case enDbType
		  case DbType.DInteger
		    return "DInteger"
		  case DbType.DSmallInt
		    return "DSmallInt"
		  case DbType.DDouble
		    return "DDouble"
		  case DbType.DDate
		    return "DDate"
		  case DbType.DTime
		    return "DTime"
		  case DbType.DTimestamp
		    return "DTimestamp"
		  case DbType.DBoolean
		    return "DBoolean"
		  case DbType.DBlob
		    return "DBlob"
		  case DbType.DText
		    return "DText"
		  case DbType.DInt64
		    return "DInt64"
		  case DbType.DFloat
		    return "DFloat"
		  case DBtype.DCurrency
		    return "DCurrency"
		  case else
		    break
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Table(db as Database, sTable as string, tyClass as Introspection.TypeInfo, ParamArray aroFieldOpt() as FieldOpt)
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  'Record the mapping between the type and the table.
		  oTableInfo = BKS_ActiveRecord.MapTableInfo( db, sTable, tyClass, aroFieldOpt )
		  
		  GetContext.TableInfo_Set(tyClass, oTableInfo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Table(tyClass as Introspection.TypeInfo, oTableDef as BKS_ActiveRecord.TableDef)
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  'Record the mapping between the type and the table.
		  oTableInfo = BKS_ActiveRecord.MapTableInfo(tyClass, oTableDef)
		  
		  GetContext.TableInfo_Set(tyClass, oTableInfo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub View(db as Database, sTable as string, tyClass as Introspection.TypeInfo, ParamArray aroFieldOpt() as FieldOpt)
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  'Record the mapping between the type and the table.
		  oTableInfo = BKS_ActiveRecord.MapTableInfo( db, sTable, tyClass, aroFieldOpt, true )
		  
		  GetContext.TableInfo_Set(tyClass, oTableInfo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub View(tyClass as Introspection.TypeInfo, oTableDef as BKS_ActiveRecord.TableDef)
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo
		  
		  'Record the mapping between the type and the table.
		  oTableInfo = BKS_ActiveRecord.MapTableInfo(tyClass, oTableDef)
		  
		  GetContext.TableInfo_Set(tyClass, oTableInfo)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  if m_csCtx=nil then
			    'Mutexes work on Mac and Linux but not Windows.
			    'CriticalSections work on Windows but not Mac.
			    '(Verified as of 2011 R4.1)
			    #if TargetWin32
			      m_csCtx = new CriticalSection
			    #else
			      m_csCtx = new Mutex("")
			    #endif
			  end if
			  return m_csCtx
			End Get
		#tag EndGetter
		Private csCtx As CriticalSection
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private m_csCtx As CriticalSection
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_ctxDefault As BKS_ActiveRecord.P.Context
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_dictContext As Dictionary
	#tag EndProperty


	#tag Constant, Name = kBKS_ActiveRecordVersion, Type = Double, Dynamic = False, Default = \"2016.01", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDoubleNullSentinal, Type = Double, Dynamic = False, Default = \"1.7E+308", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = DbType, Type = Integer, Flags = &h1
		DInteger
		  DSmallInt
		  DDouble
		  DDate
		  DTime
		  DTimestamp
		  DBoolean
		  DBlob
		  DText
		  DInt64
		  DFloat
		DCurrency
	#tag EndEnum


	#tag ViewBehavior
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
