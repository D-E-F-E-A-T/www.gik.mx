module.exports = (request, response, next) ->
	response.render foo:'home'

# NodeMailer = require 'nodemailer'

# mailer = NodeMailer.createTransport 'SMTP',
# 	service: 'Gmail'
# 	auth   :
# 		user: 'leo@gik.mx'
# 		pass: 'daleya03'

# module.exports = (request, response, next)->

# 	message =
# 		from    : "gikmx <contacto@gik.mx>"
# 		to      : "leo@gik.mx"
# 		subject : "hola"
# 		text    : "hdshfdshfjdks"


# 	mailer.sendMail message, (error, message, next)->
# 		if error
# 			console.log(error)

# 		else
# 			console.log ('Message sent')



	# smtpTransport.sendMail mailOptions, (error, response) ->

	# if error
	# 	return console.log(error)

	# else
	# 	console.log ('Message sent')

