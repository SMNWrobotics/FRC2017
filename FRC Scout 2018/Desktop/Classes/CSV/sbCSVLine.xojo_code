#tag Class
Protected Class sbCSVLine
	#tag Method, Flags = &h0
		Sub Constructor()
		  ReDim Field(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CSVText() As String
		  dim ret As String = ""
		  
		  for lp as Integer = 0 to Field.Ubound-1
		    if Field(lp).InStr(Delimiter) > 0 or Field(lp).InStr(EndOfLine) > 0 then
		      ret = ret + """" + Field(lp) + """" + Delimiter
		    else
		      ret = ret + Field(lp) + Delimiter
		    end if
		  next
		  
		  if Field(Field.Ubound).InStr(Delimiter) > 0 then
		    ret = ret + """" + Field(Field.Ubound) + """"
		  else
		    ret = ret + Field(Field.Ubound)
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberColumns() As Integer
		  Return Field.Ubound + 1
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Delimiter As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Field() As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLineIn
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLineIn = value.Trim
			  Field = SplitCommaSeparatedValuesMBS(mLineIn, Delimiter)
			  
			  for lp as integer = 0 to Field.Ubound
			    Field(lp) = Field(lp).ReplaceAll("""", "")
			    Field(lp) = Field(lp).Trim
			  next
			  
			End Set
		#tag EndSetter
		LineIn As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mLineIn As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Delimiter"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="LineIn"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
