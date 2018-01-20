#tag Class
Class TransportableArray
Implements TransportableItem
	#tag Method, Flags = &h0
		Sub Append(NewItem As TransportableItem)
		  Values.Append NewItem
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AsXMLElement() As XmlElement
		  dim i as integer
		  dim node as XmlElement
		  node = TransportManager.NewXMLElement("array")
		  for i = 0 to ubound(values)
		    node.appendchild(values(i).asxmlelement)
		  next
		  return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(XML As XMLNode)
		  me.constructor
		  dim i as integer
		  dim element as xmlnode
		  if xml <> nil then
		    for i = 0 to xml.childcount - 1
		      element = xml.child(i)
		      me.append decodetransportableitem(element)
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  return ubound(values) + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasString(s as string) As boolean
		  dim i as integer
		  for i = 0 to ubound(values)
		    if values(i).type = transportmanager.ktransportablestring then
		      if transportablestring(values(i)).value = s then
		        return true
		      end
		    end
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Item(Index As Integer) As TransportableItem
		  return values(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Item(Index As Integer, Assigns NewItem As TransportableItem)
		  values(index) = newitem
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(Index As Integer)
		  Values.Remove index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  return kTransportableArray
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Values(-1) As TransportableItem
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
	#tag EndViewBehavior
End Class
#tag EndClass
