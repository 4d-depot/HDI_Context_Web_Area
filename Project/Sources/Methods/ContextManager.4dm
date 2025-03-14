//%attributes = {}
#DECLARE($loadContext : Boolean)
// Context loading
// if $loadContext=true -> load form.context (PeopleContext class)
// if $loadContext=false -> load empty object -> ban the use of $4d

If ($loadContext)
	
	// Load the PeopleContext object in the context of the web area
	// Allows the functions of the PeopleContext class to be used with $4d
	WA SET CONTEXT:C1848(*; "Web Area"; Form:C1466.context)
	
Else 
	
	// Load an empty object to ban the use of $4d
	WA SET CONTEXT:C1848(*; "Web Area"; {})
	
End if 

// Buttons management
OBJECT SET ENABLED:C1123(*; "load"; Not:C34($loadCOntext))
OBJECT SET ENABLED:C1123(*; "unload"; $loadCOntext)
