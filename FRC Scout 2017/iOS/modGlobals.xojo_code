#tag Module
Protected Module modGlobals
	#tag Method, Flags = &h0
		Function BoolToText(extends b as Boolean) As text
		  if b = true then
		    return "True"
		  else
		    Return "False"
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function cBool(t as Text) As Boolean
		  select case t
		  case "1", "True", "T"
		    return true
		  else
		    return false
		  end
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
