window.addEvent('domready', function(){
	var list = $$('.menu li a span');
	list.each(function(element) {
				
		var fx = new Fx.Styles(element, {duration:700, wait:false, transition: Fx.Transitions.Elastic.easeOut});	
		element.addEvent('mouseenter', function(){
			fx.start({
				'padding-left': 10,
			});
		});	
		element.addEvent('mouseleave', function(){
			fx.start({
				'padding-left': 4,
			});
		});
	});
});