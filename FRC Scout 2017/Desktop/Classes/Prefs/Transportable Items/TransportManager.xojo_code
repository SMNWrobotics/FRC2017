#tag Module
Module TransportManager
	#tag Method, Flags = &h0
		Function AsString(Extends Item As TransportableItem) As String
		  return Item.AsXMLElement.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DecodeTransportableItem(XML As XMLNode) As TransportableItem
		  dim o as transportableitem
		  dim node as xmlnode
		  if xml <> nil then
		    if xml.name = "#document" then
		      node = xml.firstchild
		    else
		      node = xml
		    end
		    if node.name = "TransportableItem" then
		      node = node.firstchild
		    end
		    select case node.name
		    case "string"
		      o = new transportablestring(node)
		    case "integer"
		      o = new transportableinteger(node)
		    case "double"
		      o = new transportabledouble(node)
		    case "boolean"
		      o = new transportableboolean(node)
		    case "color"
		      o = new transportablecolor(node)
		    case "array"
		      o = new transportablearray(node)
		    case "dictionary"
		      o = new transportabledictionary(node)
		    case "file"
		      o = new transportablefolderitem(node)
		    end
		    return o
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EOL() As String
		  #if TargetWin32
		    return EndOfLine.Windows
		  #elseif TargetMacOS
		    return EndOfLine.Macintosh
		  #else
		    return EndOfLine.UNIX
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NewXMLElement(TagName As String) As XMLElement
		  if myXMLDoc = nil then
		    myXMLDoc = new xmldocument
		  end
		  return myxmldoc.createelement(TagName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NewXMLText(Text As String) As XMLTextNode
		  if myXMLDoc = nil then
		    myXMLDoc = new xmldocument
		  end
		  return myxmldoc.createtextnode(text)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save(Extends Item As TransportableItem) As String
		  dim Document As XMLDocument
		  dim Node as XMLNode
		  dim Root As XMLElement
		  Document = new XMLDocument
		  Root = Document.CreateElement("TransportableItem")
		  Node = Document.ImportNode(Item.AsXMLElement,true)
		  Root.AppendChild(Node)
		  Document.AppendChild(Root)
		  return Document.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Serialize(Item As TransportableItem) As String
		  return item.asstring
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transport(Extends Sock As TCPSocket, Item As TransportableItem)
		  Sock.Write Item.Save
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transport(Extends TheItem As TransportableItem, ViaSocket As TCPSocket)
		  ViaSocket.Transport TheItem
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private myXMLDoc As XMLDocument
	#tag EndProperty


	#tag Constant, Name = kTransportableArray, Type = Integer, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableBoolean, Type = Integer, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableColor, Type = Integer, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableDictionary, Type = Integer, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableDouble, Type = Integer, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableFolderItem, Type = Integer, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableInteger, Type = Integer, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransportableString, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


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
