# Set here variables that you want to be available on every view
# please note that if you modify these variables in runtime they will change for everyone.
locals = {}

locals.rootClasses = ['no-js']
locals.rootClasses.push 'dev-mode' if not ﬁ.conf.live

locals.$HREF_MEDIA = "http://storage.googleapis.com/gik-app/media/"


module.exports = locals
