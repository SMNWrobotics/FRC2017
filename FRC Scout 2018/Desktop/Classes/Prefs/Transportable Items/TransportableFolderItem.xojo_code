#tag Class
Class TransportableFolderItem
Implements TransportableItem
	#tag Method, Flags = &h0
		Function AsXMLElement() As XMLElement
		  dim node as XmlElement
		  dim base64data as string
		  
		  base64data = EncodeBase64(value.getsaveinfo(nil,folderitem.saveinfoabsolutemode))
		  
		  node = TransportManager.NewXMLElement("file")
		  node.appendchild(TransportManager.NewXMLText(base64data))
		  return node
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(f as folderitem)
		  value = f
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(XML As XMLNode)
		  dim base64data as string
		  if xml.firstchild <> nil then
		    base64data = xml.firstchild.value
		    value = GetFolderItem(DecodeBase64(base64data))
		    if value = nil then
		      break
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Type() As Integer
		  return TransportManager.kTransportableFolderItem
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Value As FolderItem
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
