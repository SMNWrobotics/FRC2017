#tag Module
Protected Module BKS_FolderItemExtends
	#tag Method, Flags = &h0
		Function Data(extends f as FolderItem) As String
		  dim tis as TextInputStream = TextInputStream.Open(f)
		  if tis=nil then
		    break
		    return ""
		  end if
		  dim sData as string = tis.ReadAll
		  
		  return sData
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RaiseExceptionOnError(extends f as FolderItem)
		  dim rc as integer = f.LastErrorCode
		  
		  if rc = FolderItem.NoError then
		    return
		  end if
		  
		  dim ex as new RuntimeException
		  
		  select case rc
		  case FolderItem.DestDoesNotExistError
		    ex.Message = "Destination does not exist"
		  case FolderItem.FileNotFound
		    ex.Message = "File not found"
		  case FolderItem.AccessDenied, -5000
		    ex.Message = "Access denied"
		  case FolderItem.NotEnoughMemory
		    ex.Message = "Not enough memory to complete operation"
		  case FolderItem.FileInUse
		    ex.Message = "File in use"
		  case FolderItem.InvalidName
		    ex.Message = "Invalid file name"
		  end select
		  
		  raise ex
		End Sub
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
