className = 'sticky'

onWaypoint = (direction)->
	name = "#{className}-fixed"
	# no matter what, always remove the class from the array
	classes   = @className.split ' '
	classes.splice(index, 1) if (index = classes.indexOf name) > -1
	# add the class when teh user scrolls down the element
	classes.push name if direction is 'down'
	@className = classes.join ' '

window.readyStack.push ->
	return console.error 'Waypoint library is not available' if not Waypoint

	for element in document.getElementsByClassName className
		waypoint = new Waypoint
			element: element
			handler: onWaypoint.bind element