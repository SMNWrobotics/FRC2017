#tag Class
Class TransportableDictionary
Implements TransportableItem
	#tag Method, Flags = &h0
		Function AsXMLElement() As XmlElement
		  dim i as integer
		  dim node,itemnode,element,keynode as XmlElement
		  dim keytext as xmltextnode
		  dim o as variant
		  node = TransportManager.NewXMLElement("dictionary")
		  for i = 0 to me.count - 1
		    o = me.value(me.key(i))
		    if o <> nil then
		      element = me.value(me.key(i)).asxmlelement
		      itemnode = transportmanager.newxmlelement("item")
		      keynode = transportmanager.newxmlelement("key")
		      keytext = transportmanager.newxmltext(me.key(i))
		      
		      keynode.appendchild keytext
		      itemnode.appendchild keynode
		      itemnode.appendchild element
		      node.appendchild itemnode
		    end
		  next
		  return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  pdict = new dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(XML As XMLNode)
		  me.constructor
		  dim item,keynode,stringnode,subitem as xmlnode
		  dim i,j as integer
		  for i = 0 to xml.childcount - 1
		    item = xml.child(i)
		    keynode = nil
		    stringnode = nil
		    for j = 0 to item.childcount - 1
		      subitem = item.child(j)
		      select case subitem.name
		      case "key"
		        keynode = subitem
		      else
		        stringnode = subitem
		      end
		    next
		    me.value(keynode.firstchild.value) = DecodeTransportableItem(stringnode)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  return pDict.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasKey(KeyValue As String) As Boolean
		  return pdict.haskey(keyvalue)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Key(Index As Integer) As String
		  return pDict.Key(Index).StringValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  return TransportManager.kTransportableDictionary
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Value(KeyValue As String) As TransportableItem
		  if pdict.haskey(keyvalue) then
		    return transportableitem(pdict.value(keyvalue))
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Value(KeyValue As String, Assigns Item As TransportableItem)
		  pdict.value(keyvalue) = item
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private pDict As Dictionary
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
