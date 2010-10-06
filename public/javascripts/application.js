// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// This function opens a colorbox window
$(document).ready(function() {
	//hide inline content
	$("a.inline").each(function(i){
		loc = $(this).attr('href');
		w = $(this).attr('width');
		$(this).colorbox({
			inline: 'true',
			href: loc,
			width: w,
			onOpen: function( ){
				loc = $(this).attr('href');
				$(loc).toggleClass('hidden');
			},
		});
	});
$(".hidden").hide( );	
});
