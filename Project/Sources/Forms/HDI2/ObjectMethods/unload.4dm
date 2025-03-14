If (Form:C1466.context.trace)
	TRACE:C157
End if 

// Load an empty context -> The use of $4D is prohibited
ContextManager(False:C215)

// Updates the document
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*; "Web Area"; "showCurrent")