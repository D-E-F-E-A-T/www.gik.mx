module.exports = (request, response, next) ->


NodeMailer = require 'nodemailer'

module.exports = (request, response)->

mailer = NodeMailer.createTransport 'SMTP',
	service: 'Gmail'
	auth   :
		user: 'leo@gik.mx'
		pass: 'daleya03'

module.exports = (request, response)->

	message =
		from    : "#{request.param('asunto')}"
		replyTo : "#{request.param('asunto')} <#{request.param('email')}>"
		to      : "leo@gik.mx"
		#cc 		: 'mariela@gik.mx, di@gik.mx'
		subject : "web@gik.mx" ##request.param('asunto')
		text    : request.param('texto')


	mailer.sendMail message, (error, message)->
		if error
				console.log(error)

		else
			console.log ('Message sent')
			response.render foo:'send'




	# smtpTransport.sendMail mailOptions, (error, response) ->

	# if error
	# 	return console.log(error)

	# else
	# 	console.log ('Message sent')

	# smtpTransport.close()