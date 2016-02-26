NodeMailer = require 'nodemailer'

try
	Creds = require "#{__dirname}/creds.json"
catch e
	throw new ﬁ.error 'Please, create a credentials file.'

mailer = NodeMailer.createTransport 'SMTP',
	service: 'Gmail'
	auth   :
		user: Creds.user
		pass: Creds.pass

module.exports = (request, response)->

	message =
		from    : "#{request.param('asunto')}"
		replyTo : "#{request.param('asunto')} <#{request.param('email')}>"
		to      : "etor@gik.mx"
		cc 		: 'mariela@gik.mx'
		subject : "Contacto desde sitio web"
		text    : request.param('texto')


	mailer.sendMail message, (error, message)->
		if error
				console.log(error)

		else
			console.log ('Message sent')
			response.render foo:'send'



