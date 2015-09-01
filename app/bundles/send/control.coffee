module.exports = (request, response, next) ->


NodeMailer = require 'nodemailer'

module.exports = (request, response)->

mailer = NodeMailer.createTransport 'SMTP',
	service: 'Gmail'
	auth   :
		user: 'mariela@gik.mx'
		pass: '@Tixcocob59'

module.exports = (request, response)->

	message =
		from    : "#{request.param('asunto')}"
		replyTo : "#{request.param('asunto')} <#{request.param('email')}>"
		to      : "etor@gik.mx"
		cc 		: 'mariela@gik.mx'
		subject : "web@gik.mx"
		text    : request.param('texto')


	mailer.sendMail message, (error, message)->
		if error
				console.log(error)

		else
			console.log ('Message sent')
			response.render foo:'send'



