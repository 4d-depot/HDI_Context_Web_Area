If (Form:C1466.context.trace)
	TRACE:C157
End if 

// Load ContextPeople class 
ContextManager(True:C214)

// Updates the document
WA EXECUTE JAVASCRIPT FUNCTION:C1043(*; "Web Area"; "showCurrent")