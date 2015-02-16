window.Sticky = ->
	$sticky = $ '.sticky'
	return if not $sticky.length
	offset  = $sticky.offset().top + $sticky.height()
	$document.scroll ->
		if ($(@).scrollTop() > offset)
			$sticky.addClass('sticky-fixed').animate(top:0)
		else
			$sticky.removeClass('sticky-fixed').clearQueue()

