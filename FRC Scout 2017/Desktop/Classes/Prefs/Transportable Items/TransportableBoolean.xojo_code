#tag Class
Class TransportableBoolean
Implements TransportableItem
	#tag Method, Flags = &h0
		Function AsXMLElement() As XmlElement
		  dim node as xmlelement
		  node = TransportManager.NewXMLElement("boolean")
		  if value then
		    node.appendchild(TransportManager.NewXMLText("1"))
		  else
		    node.appendchild(TransportManager.NewXMLText("0"))
		  end
		  return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Setup As Boolean = False)
		  Value = Setup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(XML As XMLNode)
		  dim s as string
		  if xml.firstchild <> nil then
		    s = xml.firstchild.value
		    if s = "1" then
		      me.value = true
		    else
		      me.value = false
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  return kTransportableBoolean
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Value As Boolean
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
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
