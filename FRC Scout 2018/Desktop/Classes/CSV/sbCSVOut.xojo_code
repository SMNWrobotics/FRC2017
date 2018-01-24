#tag Class
Protected Class sbCSVOut
	#tag Method, Flags = &h0
		Sub AddField(FldName As String)
		  dim st As String = FldName.Trim
		  
		  for lp as integer = 0 to Fields.Ubound
		    if st = Fields(lp) then
		      MsgBox "Fieldname already exists." + EndOfLine + EndOfLine + "This field will not be added."
		      exit sub
		    end if
		  next
		  
		  Fields.Append st
		  ReDim FieldValues(Fields.Ubound)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FieldValue(fldNum As Integer, assigns Value As Date)
		  if fldNum > Fields.Ubound then exit sub
		  
		  dim st As String
		  
		  if Value.Hour = 0 and Value.Minute = 0 and Value.Second = 0 then
		    st = Value.SQLDate
		  else
		    st = Value.SQLDateTime
		  end if
		  
		  FieldValues(fldNum) = st
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FieldValue(fldNum As Integer, assigns Value As Double)
		  if fldNum > Fields.Ubound then exit sub
		  
		  dim st As String = Str(Value, "-#0.00000")
		  FieldValues(fldNum) = st
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FieldValue(fldNum As Integer, assigns Value As Integer)
		  if fldNum > Fields.Ubound then exit sub
		  
		  dim st As String = Str(Value, "-#")
		  FieldValues(fldNum) = st
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FieldValue(fldNum As Integer, assigns Value As String)
		  if fldNum > Fields.Ubound then exit sub
		  
		  if Value.InStr(Delimiter) > 0 or Value.Instr("<cr>") > 0 or Value.Instr("<lf>") > 0 or Value.Instr("<crlf>") > 0 then
		    Value = Value.ReplaceAll("<cr>", EndOfLine)
		    Value = Value.ReplaceAll("<lf>", EndOfLine)
		    Value = Value.ReplaceAll("<crlf>", EndOfLine)
		    FieldValues(fldNum) = """" + Value + """"
		  else
		    FieldValues(fldNum) = Value
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Header() As String
		  dim ret As String = ""
		  
		  for lp as integer = 0 to Fields.Ubound-1
		    ret = ret + Fields(lp) + Delimiter
		  next
		  
		  ret = ret + Fields(Fields.Ubound)
		  
		  Return ret
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostRow()
		  dim ln As new sbCSVLine
		  ln.Delimiter = Delimiter
		  
		  dim st As String = ""
		  
		  for lp as Integer = 0 to FieldValues.Ubound-1
		    st = st + FieldValues(lp) + Delimiter
		  next
		  
		  st = st + FieldValues(FieldValues.Ubound)
		  ln.LineIn = st
		  csvLines.Append ln
		  
		  for lp as Integer = 0 to FieldValues.Ubound
		    FieldValues(lp) = ""
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  ReDim csvLines(-1)
		  ReDim Fields(-1)
		  ReDim FieldValues(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveToFile(fName As FolderItem)
		  dim t As TextOutputStream
		  t = TextOutputStream.Create(fName)
		  t.WriteLine(Header)
		  
		  for lp as Integer = 0 to csvLines.Ubound
		    t.WriteLine(csvLines(lp).CSVText)
		  next
		  
		  t.Close
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = How to use
		dim f As FolderItem = GetSaveText("csv", "SimTest")
		if f = nil then exit sub
		
		dim csv As new sbCSVOut
		' csv.Delimiter = "|"
		
		for lp as Integer = 0 to lb.ColumnCount-1
		csv.AddField(lb.Heading(lp))
		next
		
		for lp as integer = 0 to lb.ListCount-1
		for lp1 as integer = 0 to lb.ColumnCount-1
		csv.FieldValue(lp1) = lb.Cell(lp, lp1)
		next
		csv.PostRow
		next
		
		csv.SaveToFile(f)
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		csvLines() As sbCSVLine
	#tag EndProperty

	#tag Property, Flags = &h0
		Delimiter As String = ","
	#tag EndProperty

	#tag Property, Flags = &h0
		Fields() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FieldValues() As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Delimiter"
			Group="Behavior"
			InitialValue=","
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
