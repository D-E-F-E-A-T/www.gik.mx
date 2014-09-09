module.exports = (request, response, next) ->

	response.set('Content-Type', 'application/JSON')
	response.end(JSON.stringify("OK"))
