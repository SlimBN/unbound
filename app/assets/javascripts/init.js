;(function($){
	$(document).ready(function() {



		$('#articles-index article').each(function()
		{
			$(this).freetile({
				animate: true,
				elementDelay: 10
			});
		});
	});
})(jQuery)
				
