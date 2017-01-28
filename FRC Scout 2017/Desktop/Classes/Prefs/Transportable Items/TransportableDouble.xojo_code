#tag Class
Class TransportableDouble
Implements TransportableItem
	#tag Method, Flags = &h0
		Function AsXMLElement() As XmlElement
		  dim node as XmlElement
		  node = TransportManager.NewXMLElement("double")
		  node.appendchild(TransportManager.NewXMLText(format(value, "-#")))
		  return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Setup As Double = 0)
		  Value = Setup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(XML As XMLNode)
		  if xml.firstchild <> nil then
		    me.value = val(xml.firstchild.value)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  return kTransportableDouble
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Value As Double
	#tag EndProperty


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
		#tag ViewProperty
			Name="Value"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
