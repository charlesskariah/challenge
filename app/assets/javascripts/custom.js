
	$("#tab1").on("click",function() {
		$("#tab1").addClass("active");
	  $("#tab1").siblings().removeClass("active");
	})
	$("#tab2").on("click",function() {
		$("#tab2").parent().addClass("active");
	  $("#tab2").parent().siblings().removeClass("active");
	})
	$("#tab3").on("click",function() {
		$("#tab3").addClass("active");
	  $("#tab3").siblings().removeClass("active");
	})
	$("#tab4").on("click",function() {
		$("#tab4").addClass("active");
	  $("#tab4").siblings().removeClass("active");
	})
