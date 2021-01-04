fixNav = () ->
	bannerHeight = $('section.banner').height()

	if $(window).scrollTop() > bannerHeight - 100
		unless $('header.main-header').hasClass('fixed')
			$('header.main-header').addClass('fixed')
	else
		$('header.main-header').removeClass('fixed')

$(document).ready () ->

	$(window).scroll fixNav

	$('.slider-1').bxSlider
		mode: 'vertical'
		controls: false
		autoPlay: true
		stopOnHover: true

	$('.features-items').owlCarousel
		items: 4
		responsive: true
		autoHeight: true
		mouseDrag: false
		touchDrag: false
		itemsCustom: [
			[ 0, 1 ]
			[ 641, 2 ]
			[ 1025, 3 ]
		]

	$('.team-items').owlCarousel
		items: 4
		responsive: true
		autoHeight: true
		mouseDrag: false
		touchDrag: false
		autoPlay: true
		stopOnHover: true
		itemsCustom: [
			[ 0, 1 ]
			[ 641, 2 ]
			[ 1025, 4 ]
		]

	$('button.toggle-nav').on 'click', () ->
		$('nav.main-nav').toggle(100)

	$('nav.main-nav a').bind 'click', (e) ->
		anchor = $ this
		elem = $ anchor.attr('href')

		unless elem.length
			return

		$ 'html, body'
			.stop()
			.animate({
				scrollTop: elem.offset().top
			}, 200)

		$('nav.main-nav a').removeClass 'active'
		$(this).addClass 'active'

		do e.preventDefault

	do $('#works-container').mixItUp

