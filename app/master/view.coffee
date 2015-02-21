window.readyStack = []

require 'common/sticky/view'

onReady = ->
	window.rootClasses = document.documentElement.className.split ' '
	window.IS_DESKTOP  = rootClasses.indexOf('is_desktop') > -1

	# Execute all onReady functions
	(fn.call(this) if typeof fn is 'function') for fn in window.readyStack

document.addEventListener 'DOMContentLoaded', onReady, false
