$(document).ready(function() {
// AJAX call below for creating a menu
	// $("#create_menu").on("click", function(e){
	// 	e.preventDefault()
	// 	var menu_name = $("#menu_name").val()
	// 	$.ajax({
	// 		url: "/menu_create",
	// 		type: "post",
	// 		data: menu_name
	// 	}).done(function(menu_html){
	// 		$("#menu_list").append(menu_html)
	// 	})
	// })

	$("#create_menu").on("click", function(){
		var menu_name = $("#menu_name").val()
		$("#menu_list").append("<a>* "+menu_name+"</a>")
	})

});
