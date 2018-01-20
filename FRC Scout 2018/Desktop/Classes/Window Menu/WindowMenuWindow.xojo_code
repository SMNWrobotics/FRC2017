#tag Class
Protected Class WindowMenuWindow
Inherits Window
	#tag Event
		Sub EnableMenuItems()
		  WindowMinimize.Enabled = true
		  WindowZoom.Enabled = self.MaximizeButton
		  EnableMenuItems
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // Add to Window Menu
		  WindowMenuManager.Add self
		  
		  // Event
		  Open
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowMinimize() As Boolean Handles WindowMinimize.Action
			WindowMenuManager.Minimize self
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowZoom() As Boolean Handles WindowZoom.Action
			WindowMenuManager.Zoom self
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Function GetClassName() As String
		  if msName = "" then
		    Dim t as Introspection.TypeInfo
		    t=Introspection.GetType(self)
		    msName = t.name
		  end
		  
		  return msName
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event EnableMenuItems()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Modified(bIsModified as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h21
		Private isModifiedWin32 As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		IsZoomed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSname As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OldHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OldLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OldTop As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OldWidth As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetClassName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BKS_Debug.Assert false, "Illegal operation"
			End Set
		#tag EndSetter
		sName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private xAssociatedFileWin32 As FolderItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CloseButton"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Composite"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Frame"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Document"
				"1 - Movable Modal"
				"2 - Modal Dialog"
				"3 - Floating Window"
				"4 - Plain Box"
				"5 - Shadowed Box"
				"6 - Rounded Window"
				"7 - Global Floating Window"
				"8 - Sheet Window"
				"9 - Metal Window"
				"11 - Modeless Dialog"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreen"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenButton"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackColor"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="300"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImplicitInstance"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Interfaces"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsZoomed"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LiveResize"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MacProcID"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxHeight"
			Visible=true
			Group="Position"
			InitialValue="32000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximizeButton"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxWidth"
			Visible=true
			Group="Position"
			InitialValue="32000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuBar"
			Visible=true
			Group="Appearance"
			Type="MenuBar"
			EditorType="MenuBar"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuBarVisible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinHeight"
			Visible=true
			Group="Position"
			InitialValue="64"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimizeButton"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinWidth"
			Visible=true
			Group="Position"
			InitialValue="64"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OldHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OldLeft"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OldTop"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OldWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Placement"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Parent Window"
				"2 - Main Screen"
				"3 - Parent Window Screen"
				"4 - Stagger"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resizeable"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="300"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
