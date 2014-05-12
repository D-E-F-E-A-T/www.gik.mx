module.exports = (request, response, next)->

	# when a static call is not found, it reaches here.
	if request.path.indexOf('/static') isnt -1 or request.path.indexOf('/favicon.ico') isnt -1
		return response.status(404).send('Not found')

	next()
