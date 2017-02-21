#tag Module
Protected Module Data
	#tag Method, Flags = &h0
		Sub CloseDB()
		  if gDB <> nil then
		    gDB.close
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateDB(db as SQLiteDatabase, f as FolderItem) As boolean
		  db.DatabaseFile = f
		  
		  if db.CreateDatabaseFile = false then
		    return false
		  end
		  
		  db.SQLExecute(kScript)
		  
		  if db.error then
		    msgbox "Couldn't create database.  Error: " + db.ErrorMessage
		    return false
		  end
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JoinSQL(extends ars() as string) As String
		  Return join(ars, " ")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenDB(f as FolderItem) As Boolean
		  dim db as new SQLiteDatabase
		  
		  if f.exists = false then
		    
		    //Need to create it
		    
		    if createDB(db, f) = false then
		      return false
		    end
		  end
		  
		  db.DatabaseFile = f
		  
		  
		  if db.Connect = false Then 
		    return false
		  end
		  
		  
		  //Connection succeeded
		  
		  gDB = db
		  
		  //Important to tell ActiveRecord what the connection is!
		  BKS_ActiveRecord.Connect(  gdb )
		  
		  //Make any db updates here before registering
		  
		  //Register the tables with ActiveRecord
		  Register( gdb )
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Register(db as SQLiteDatabase)
		  BKS_ActiveRecord.Table( db, "t_event", GetTypeInfo( t_event ) )
		  BKS_ActiveRecord.Table( db, "t_matches", GetTypeInfo( t_matches ) )
		  BKS_ActiveRecord.Table( db, "t_team", GetTypeInfo( t_team ) )
		  BKS_ActiveRecord.Table( db, "TR_DriveTrainType", GetTypeInfo( TR_DriveTrainType ) )
		  BKS_ActiveRecord.Table( db, "T_Design", GetTypeInfo( T_Design ) )
		  BKS_ActiveRecord.Table( db, "T_DesignVariables", GetTypeInfo( T_DesignVariables ) )
		  BKS_ActiveRecord.Table( db, "T_Game", GetTypeInfo( T_Game ) )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLizeText(Extends sText as string) As String
		  dim sReturn as string
		  
		  ' Change all single apostrophes to double apostrophes.
		  sReturn = ReplaceAll(sText, "'", "''")
		  
		  ' Return the new string with apostrophe's around it already
		  Return "'" + sReturn + "'"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQL_like(Extends sText as string) As String
		  dim sReturn as string
		  
		  sText = "%" + sText + "%"
		  
		  ' Change all single apostrophes to double apostrophes.
		  sReturn = ReplaceAll(sText, "'", "''")
		  
		  ' Return the new string with apostrophe's around it already
		  Return "'" + sReturn + "'"
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		gDB As SQLiteDatabase
	#tag EndProperty


	#tag Constant, Name = kMaxReturn, Type = Double, Dynamic = False, Default = \"50", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kScript, Type = String, Dynamic = False, Default = \"\n\nCREATE TABLE \"TR_DriveTrainType\" (\n\"DriveTrainType_ID\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"Name\" TEXT\n);\nINSERT INTO \"TR_DriveTrainType\" VALUES (1\x2C \'Tank Drive w/ Wheels\');\nINSERT INTO \"TR_DriveTrainType\" VALUES (2\x2C \'Tank Drive w/ Treads\');\nINSERT INTO \"TR_DriveTrainType\" VALUES (3\x2C \'Mecanum\');\nINSERT INTO \"TR_DriveTrainType\" VALUES (4\x2C \'Other\');\nINSERT INTO \"TR_DriveTrainType\" VALUES (5\x2C \'Swerve Drive\');\nINSERT INTO \"TR_DriveTrainType\" VALUES (6\x2C \'Omni Wheels\');\n\n\nCREATE TABLE \"T_Design\" (\n\"Design_ID\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"Variable\" TEXT\x2C\n\"Value\" TEXT\x2C\n\"team_number\" INTEGER\n);\n\n\nCREATE TABLE \"T_DesignVariables\" (\n\"DriveTrainVariables_ID\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"VariableName\" TEXT\x2C\n\"DataType\" TEXT\x2C\n\"List\" TEXT\x2C\n\"ForeignTable\" TEXT\x2C\n\"ForeignField\" TEXT\x2C\n\"Indx\" INTEGER\n);\nINSERT INTO \"T_DesignVariables\" VALUES (2\x2C \'Drive Train\'\x2C \'Popup\'\x2C NULL\x2C \'TR_DriveTrainType\'\x2C \'Name\'\x2C 1);\nINSERT INTO \"T_DesignVariables\" VALUES (3\x2C \'Can play defense\'\x2C \'Checkbox\'\x2C NULL\x2C NULL\x2C NULL\x2C 2);\nINSERT INTO \"T_DesignVariables\" VALUES (4\x2C \'Low Goal Shooter\'\x2C \'Checkbox\'\x2C NULL\x2C NULL\x2C NULL\x2C 3);\nINSERT INTO \"T_DesignVariables\" VALUES (5\x2C \'High Goal Shooter\'\x2C \'Checkbox\'\x2C NULL\x2C NULL\x2C NULL\x2C 4);\nINSERT INTO \"T_DesignVariables\" VALUES (6\x2C \'Carry Capacity\'\x2C \'Numbers\'\x2C NULL\x2C NULL\x2C NULL\x2C 5);\nINSERT INTO \"T_DesignVariables\" VALUES (7\x2C \'Ball Feed\'\x2C \'Popup\'\x2C \'Not Applicable;Hopper Feed Only;Ground Feed Only;Both Hopper and Ground\'\x2C NULL\x2C NULL\x2C 6);\nINSERT INTO \"T_DesignVariables\" VALUES (8\x2C \'Gear Capabilities\'\x2C \'Checkbox\'\x2C NULL\x2C NULL\x2C NULL\x2C 7);\nINSERT INTO \"T_DesignVariables\" VALUES (9\x2C \'Can Climb\'\x2C \'Checkbox\'\x2C NULL\x2C NULL\x2C NULL\x2C 8);\nINSERT INTO \"T_DesignVariables\" VALUES (10\x2C \'Does Vision Processing\'\x2C \'Checkbox\'\x2C NULL\x2C NULL\x2C NULL\x2C 9);\nINSERT INTO \"T_DesignVariables\" VALUES (12\x2C \'Notes\'\x2C \'TextArea\'\x2C NULL\x2C NULL\x2C NULL\x2C 10);\nINSERT INTO \"T_DesignVariables\" VALUES (13\x2C \'Robot Picture\'\x2C \'Image\'\x2C NULL\x2C NULL\x2C NULL\x2C 11);\nINSERT INTO \"T_DesignVariables\" VALUES (14\x2C \'Scout Name\'\x2C \'Text\'\x2C NULL\x2C NULL\x2C NULL\x2C 12);\nINSERT INTO \"T_DesignVariables\" VALUES (15\x2C \'Scout Team\'\x2C \'Popup\'\x2C NULL\x2C \'t_team\'\x2C \'team_number\'\x2C 13);\n\n\nCREATE TABLE \"T_Game\" (\n\"Game_ID\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"Variable\" TEXT\x2C\n\"Value\" TEXT\x2C\n\"MatchKey\" TEXT\x2C\n\"TeamNumber\" TEXT\x2C\n\"ScoutName\" TEXT\x2C\n\"ScoutTeamNumber\" TEXT\n);\n\n\nCREATE TABLE \"t_event\" (\n\"event_ID\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"key\" TEXT\x2C\n\"website\" TEXT\x2C\n\"end_date\" Date\x2C\n\"Name\" TEXT\x2C\n\"Short_Name\" TEXT\x2C\n\"Location\" TEXT\x2C\n\"Year\" INTEGER\x2C\n\"Start_Date\" date\x2C\n\"Event_Type_String\" TEXT\n);\n\n\nCREATE TABLE \"t_matches\" (\n\"matches_ID\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"match_number\" INTEGER\x2C\n\"time_string\" TEXT\x2C\n\"set_number\" INTEGER\x2C\n\"key\" TEXT\x2C\n\"Blue_Team_1\" TEXT\x2C\n\"Blue_Team_2\" TEXT\x2C\n\"blue_team_3\" TEXT\x2C\n\"Red_Team_1\" TEXT\x2C\n\"Red_Team_2\" TEXT\x2C\n\"Red_Team_3\" TEXt\x2C\n\"BlueScore\" INTEGER\x2C\n\"RedScore\" INTEGER\x2C\n\"event_key\" TEXT\x2C\n\"event_id\" INTEGER\x2C\n\"comp_level\" TEXT\n);\n\nCREATE TABLE \"t_team\" (\n\"team_id\" INTEGER PRIMARY KEY AUTOINCREMENT\x2C\n\"Name\" TEXT\x2C\n\"Locality\" TEXT\x2C\n\"Rookie_Year\" INTEGER\x2C\n\"Region\" TEXT\x2C\n\"Team_Number\" TEXT\x2C\n\"Key\" TEXT\x2C\n\"NickName\" TEXT\x2C\n\"event_id\" INTEGER\n);\n", Scope = Public
	#tag EndConstant


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