
property _currentPeople:=ds:C1482.People.all().first()
property trace:=False:C215

Function next() : Object
	// Returns the next record
	If (This:C1470.trace)
		TRACE:C157
	End if 
	
	// Read next record
	This:C1470._currentPeople:=This:C1470._currentPeople.next() || This:C1470._currentPeople.first()
	
	return This:C1470.current()
	
Function previous() : Object
	// Returns the previous record
	If (This:C1470.trace)
		TRACE:C157
	End if 
	// Read previous record
	This:C1470._currentPeople:=This:C1470._currentPeople.previous() || This:C1470._currentPeople.last()
	
	return This:C1470.current()
	
	
Function current() : Object
	// Returns the current record
	return This:C1470._currentPeople.toObject()
	
Function setTrace($check : Boolean)
	// Updates the trace variable
	This:C1470.trace:=$check
	
	
	