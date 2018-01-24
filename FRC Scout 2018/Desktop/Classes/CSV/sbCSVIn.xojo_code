#tag Class
Protected Class sbCSVIn
	#tag Method, Flags = &h0
		Function CellAsBoolean(row As Integer, column As Integer) As boolean
		  dim ret As boolean
		  
		  if RowColOK(row, column) then
		    Dim s As String = csvLines(row).Field(column)
		    Select Case s
		    Case "TRUE", "T", "1"
		      ret = True
		    Case Else
		      ret = False
		    end
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CellAsDate(row As Integer, column As Integer) As Date
		  dim ret As new Date
		  ret.TotalSeconds = 0
		  
		  if RowColOK(row, column) then
		    ret.SQLDateTime = csvLines(row).Field(column)
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CellAsDouble(row As Integer, column As Integer) As Double
		  dim ret As Double = 0.0
		  
		  if RowColOK(row, column) then
		    ret = Val(csvLines(row).Field(column))
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CellAsInteger(row As Integer, column As Integer) As Integer
		  dim ret As Integer = 0
		  
		  if RowColOK(row, column) then
		    ret = Val(csvLines(row).Field(column))
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CellAsString(row As Integer, column As Integer) As String
		  dim ret As String = ""
		  
		  if RowColOK(row, column) then
		    ret = csvLines(row).Field(column)
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetDelimiter(txt As String)
		  dim tab as string = encodings.ASCII.Chr(9)
		  dim cComma as integer = CountFields(txt, ",")
		  dim cTab   as integer = CountFields(txt, tab)
		  dim cSemi  as integer = CountFields(txt, ";")
		  dim cPipe  as integer = CountFields(txt, "|")
		  
		  dim s(-1) as String
		  dim st As String
		  
		  st = Str(cComma) + tab + "Comma"
		  s.Append st
		  st = Str(cTab) + tab + "Tab"
		  s.Append st
		  st = Str(cSemi) + tab + "Semi"
		  s.Append st
		  st = Str(cPipe) + tab + "Pipe"
		  s.Append st
		  
		  s.Sort
		  
		  st = s(s.Ubound)
		  s = st.Split(tab)
		  
		  select case s(1)
		  case "Comma"
		    Delimiter = ","
		  case "Tab"
		    Delimiter = tab
		  case "Semi"
		    Delimiter = ";"
		  case "Pipe"
		    Delimiter = "|"
		  end Select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HeaderExists() As Boolean
		  dim ret As Boolean
		  
		  if Header.Ubound = -1 then
		    ret = False
		  else
		    ret = True
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineAsArray(row As Integer) As String()
		  dim ret(-1) As String
		  
		  if RowColOK(row, 0) then
		    for lp as integer = 0 to csvLines(row).NumberColumns-1
		      dim st As String = csvLines(row).Field(lp)
		      ret.Append st
		    next
		  end if
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberLines() As Integer
		  Return csvLines.Ubound + 1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessFile()
		  ' New Code
		  dim spoint As Integer = 0
		  dim mt As new sbMassageText
		  mt.InputFile = mInFile
		  if mt.CorrectedLines.Ubound = -1 then exit sub
		  
		  if HasHeading then
		    dim s As String = mt.CorrectedLines(0)
		    if s.Trim <> "" then
		      ProcessHeading(s.Trim)
		    end if
		    spoint = 1
		  end if
		  
		  if mt.CorrectedLines.Ubound <= 0 then exit sub
		  dim ln As sbCSVLine
		  
		  for lp as Integer = spoint to mt.CorrectedLines.Ubound
		    dim s As String = mt.CorrectedLines(lp)
		    if s.Trim <> "" then
		      if Delimiter = "" then
		        GetDelimiter(s.Trim)
		      end if
		      ln = new sbCSVLine
		      ln.Delimiter = Delimiter
		      ln.LineIn = s.Trim
		      if MaxColumnCount < ln.NumberColumns then
		        MaxColumnCount = ln.NumberColumns
		      end if
		      csvLines.Append ln
		    end if
		  next
		  
		  ' Old Code
		  ' dim t As TextInputStream
		  ' t = TextInputStream.Open(mInFile)
		  ' t.Encoding = Encodings.UTF8 // we expect here: UTF-8
		  ' 
		  ' if HasHeading then
		  ' dim s As String = ""
		  ' while s.Trim = ""
		  ' if not t.EOF then
		  ' s = t.ReadLine
		  ' else
		  ' exit While
		  ' end if
		  ' wend
		  ' if s.Trim <> "" then
		  ' ProcessHeading(s.Trim)
		  ' end if
		  ' if t.EOF then
		  ' t.Close
		  ' exit sub
		  ' end if
		  ' end if
		  ' 
		  ' dim ln As sbCSVLine
		  ' 
		  ' while not t.EOF
		  ' dim s As String = t.ReadLine
		  ' if s.Trim <> "" then
		  ' if Delimiter = "" then
		  ' GetDelimiter(s.Trim)
		  ' end if
		  ' ln = new sbCSVLine
		  ' ln.Delimiter = Delimiter
		  ' ln.LineIn = s.Trim
		  ' if MaxColumnCount < ln.NumberColumns then
		  ' MaxColumnCount = ln.NumberColumns
		  ' end if
		  ' csvLines.Append ln
		  ' end if
		  ' wend
		  ' 
		  ' t.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessHeading(txtLine As String)
		  if Delimiter = "" then
		    GetDelimiter(txtLine)
		  end if
		  
		  Header = SplitCommaSeparatedValuesMBS(txtLine, Delimiter)
		  
		  for lp as integer = 0 to Header.Ubound
		    Header(lp) = Header(lp).ConvertEncoding(Encodings.UTF8)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  ReDim Header(-1)
		  ReDim csvLines(-1)
		  MaxColumnCount = -1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowColOK(row As Integer, column As Integer) As Boolean
		  dim ret As Boolean = False
		  
		  if row <= csvLines.Ubound and row > -1 then
		    if column > -1 and column < MaxColumnCount then
		      if column < csvLines(row).NumberColumns then
		        ret = True
		      end if
		    end if
		  end if
		  
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Sort(column As Integer)
		  if not RowColOK(0, column) then exit sub
		  
		  dim s(-1) As String
		  
		  for lp as integer = 0 to csvLines.Ubound
		    dim st As String = CellAsString(lp, column)
		    s.Append st
		  next
		  
		  s.SortWith(csvLines)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = How to use
		This uses MBS software so ensure you have registered before compiling.
		
		Calling sbCSVIn:
		
		dim f As FolderItem = GetOpenText("csv")
		if f = nil then exit sub
		
		dim csv As new sbCSVIn
		
		' Set whether the CSV file has a heading line.
		csv.HasHeading = True
		
		' If you know the delimiter set here. The default is ",".
		' If the delimiter is unknown then set it to null (""). It will check for tab, comma, semi-colon and pipe.
		
		csv.Delimiter = "" 
		
		' The folderitem to the CSV file on disk.
		csv.InFile = f
		
		' You can sort the file by the column number. Column numbers are zero based.
		csv.Sort(4)
		csv.Sort(0)
		
		' Populating a listbox.
		lb.DeleteAllRows
		lb.ColumnCount = csv.MaxColumnCount
		lb.ColumnAlignment(2) = Listbox.AlignRight
		lb.ColumnAlignment(3) = Listbox.AlignCenter
		lb.ColumnAlignment(4) = Listbox.AlignCenter
		
		if csv.HasHeading then
		lb.HasHeading = True
		for lp as integer = 0 to csv.Header.Ubound
		lb.Heading(lp) = csv.Header(lp)
		next
		else
		lb.HasHeading = False
		end if
		
		for lp as integer = 0 to csv.NumberLines-1
		' lb.AddRow csv.LineAsArray(lp)
		lb.AddRow
		lb.Cell(lb.LastIndex, 0) = csv.CellAsString(lp, 0)
		lb.Cell(lb.LastIndex, 1) = csv.CellAsString(lp, 1)
		lb.Cell(lb.LastIndex, 2) = Format(csv.CellAsDouble(lp, 2), "#,##0.00\ ;(#,##0.00);\ ")
		lb.Cell(lb.LastIndex, 3) = csv.CellAsString(lp, 3)
		lb.Cell(lb.LastIndex, 4) = csv.CellAsDate(lp, 4).FormattedDate("dd mmm yyyy")
		next
		
		lb.AutoColumnResize
		
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private csvLines() As sbCSVLine
	#tag EndProperty

	#tag Property, Flags = &h0
		Delimiter As String = ","
	#tag EndProperty

	#tag Property, Flags = &h0
		HasHeading As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Header() As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mInFile
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInFile = value
			  Reset
			  ProcessFile
			  
			End Set
		#tag EndSetter
		InFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		MaxColumnCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInFile As FolderItem
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
			Name="HasHeading"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="MaxColumnCount"
			Group="Behavior"
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
