#tag Class
Protected Class BaseList
	#tag Method, Flags = &h0
		Sub Constructor(ty as Introspection.TypeInfo, sCriteria as string = "", sOrder as string = "")
		  m_tyElement = ty
		  
		  if not ty.IsSubclassOf(GetTypeInfo(BKS_ActiveRecord.Base)) then
		    dim ex as new RuntimeException
		    ex.Message = "Invalid type"
		    raise ex
		  end if
		  
		  dim adp as BKS_ActiveRecord.DatabaseAdapter
		  adp = GetContext.ConnectionAdapter_Get( ty )
		  if adp=nil then
		    raise new RuntimeException
		  end if
		  
		  dim rs as RecordSet
		  ' dim aro() as Variant
		  dim oTableInfo as BKS_ActiveRecord.P.TableInfo = GetTableInfo( ty )
		  
		  dim sql as string = "SELECT " + oTableInfo.sPrimaryKey + _
		  " FROM " + oTableInfo.sTableName
		  if sCriteria<>"" then
		    sql = sql + " WHERE " + sCriteria
		  end if
		  
		  if sOrder<>"" then
		    sql = sql + " ORDER BY " + sOrder
		  end if
		  
		  dim arid() as Int64
		  
		  rs = adp.SQLSelect(sql)
		  
		  dim oField as DatabaseField = rs.IdxField(1)
		  do until rs.EOF
		    arid.Append(oField.Int64Value)
		    rs.MoveNext
		  loop
		  
		  m_arid = arid
		  redim m_aro(m_arid.Ubound)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ElementType() As Introspection.TypeInfo
		  return m_tyElement
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Item(index as integer) As BKS_ActiveRecord.Base
		  if m_aro(index)<>nil then
		    return m_aro(index)
		  end if
		  
		  const kBatchSize = 50
		  
		  LoadRange(index, Min(index+kBatchSize-1, m_arid.Ubound))
		  
		  return m_aro(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadRange(startIndex as integer, endIndex as integer)
		  dim sPrimaryKey as string = GetTableInfo(m_tyElement).sPrimaryKey
		  
		  dim aridix() as integer
		  dim arid() as Int64
		  
		  for i as integer = startIndex to endIndex
		    aridix.Append(i)
		    arid.Append(m_arid(i))
		  next
		  
		  arid.SortWith(aridix)
		  
		  dim arsId() as string
		  for i as integer = 0 to arid.Ubound
		    arsId.Append(Str(arid(i)))
		  next
		  
		  dim sCriteria as string
		  sCriteria = sPrimaryKey + " IN (" + Join(arsId, ",") + ")"
		  dim arv() as Variant = BKS_ActiveRecord.Query(m_tyElement, sCriteria, sPrimaryKey)
		  for i as integer = 0 to arv.Ubound
		    dim oRecord as BKS_ActiveRecord.Base = arv(i)
		    if oRecord.ID = arid(i) then
		      m_aro(aridix(i)) = oRecord
		    else
		      break
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Subscript(index as Integer) As BKS_ActiveRecord.Base
		  return Item(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Ubound() As integer
		  return m_arid.Ubound
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_arid() As Int64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_aro() As BKS_ActiveRecord.Base
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_tyElement As Introspection.TypeInfo
	#tag EndProperty


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
