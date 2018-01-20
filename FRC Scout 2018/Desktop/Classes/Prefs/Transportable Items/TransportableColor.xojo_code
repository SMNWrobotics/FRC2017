#tag Class
Class TransportableColor
Implements TransportableItem
	#tag Method, Flags = &h0
		Function AsXMLElement() As XmlElement
		  dim node as xmlelement
		  node = TransportManager.NewXMLElement("color")
		  node.appendchild(TransportManager.NewXMLText(str(value.red) + "," + str(value.green) + "," + str(value.blue)))
		  return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Setup As Color)
		  Value = Setup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(XML As XMLNode)
		  dim parts() as string
		  if xml.firstchild <> nil then
		    parts = split(xml.firstchild.value,",")
		    me.value = rgb(val(parts(0)),val(parts(1)),val(parts(2)))
		  else
		    me.value = &c000000
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  return kTransportableColor
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Value As Color
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
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
