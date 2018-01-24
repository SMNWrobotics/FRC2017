#tag Class
Protected Class sbMassageText
	#tag Method, Flags = &h21
		Private Sub Process()
		  if rawText.Trim = "" then exit sub
		  
		  ' Finding all double quotes
		  dim st As String = rawText
		  rawText = ""
		  dim p1 As Integer
		  dim leftpart, reppart, usepart As String
		  
		  while st.InStr(Chr(34)) > 0
		    p1 = st.InStr(Chr(34))
		    leftpart = st.Left(p1-1)
		    st = st.Mid(p1+1)
		    p1 = st.InStr(Chr(34))
		    usepart = st.Left(p1-1)
		    subText.Append usepart
		    reppart = "__txt__" + Str(subText.Ubound, "00000")
		    st = st.Mid(p1+1)
		    st = leftpart + reppart + st
		  wend
		  
		  correctedText = st
		  st = ""
		  
		  for lp as integer = 0 to subText.Ubound
		    subText(lp) = subText(lp).ReplaceAll(Chr(13), "<cr>")
		    subText(lp) = subText(lp).ReplaceAll(Chr(10), "<lf>")
		    subText(lp) = subText(lp).ReplaceAll("<cr><lf>", "<crlf>")
		    subText(lp) = Chr(34) + subText(lp) + Chr(34)
		    correctedText = correctedText.ReplaceAll("__txt__" + Str(lp, "00000"), subText(lp))
		  next
		  
		  if correctedText.InStr(Chr(13) + Chr(10)) > 0 then
		    CorrectedLines = correctedText.Split(EndOfLine.Windows)
		  elseif correctedText.InStr(Chr(10)) > 0 then
		    CorrectedLines = correctedText.Split(EndOfLine.UNIX)
		  else
		    CorrectedLines = correctedText.Split(EndOfLine.Macintosh)
		  end if
		  
		  for lp as integer = CorrectedLines.Ubound DownTo 0
		    if CorrectedLines(lp).Trim = "" then
		      CorrectedLines.Remove(lp)
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Reset()
		  intFile = nil
		  CorrectedText = ""
		  ReDim subText(-1)
		  ReDim CorrectedLines(-1)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Using sbMassageText
		This is to strip carriage returns and line feeds from a CSV input file.
		
		Set the InputFile property to the folderitem of the CSV file.
		
		Two properties will then be available:
		
		CorrectedLines
		This is an array of the lines in the CSV file.
		
		CorrectedText
		This is a single string of the whole file.
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		CorrectedLines() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CorrectedText As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  if not value.Exists then exit sub
			  
			  Reset
			  intFile = value
			  dim t As TextInputStream
			  t = TextInputStream.Open(value)
			  t.Encoding = Encodings.UTF8 // we expect here: UTF-8
			  rawText = t.ReadAll
			  t.Close
			  
			  Process
			  
			End Set
		#tag EndSetter
		InputFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private intFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private rawText As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private subText() As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CorrectedText"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
End Class
#tag EndClass
