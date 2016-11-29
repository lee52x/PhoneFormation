


$(document).ready(function() {
		$('a[id=all]').click(function(){ 		
			$('#all').css("font-weight", "bold");
			$('#all').css("color", "red");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_y24Egg').css("font-weight", "normal");
			$('#k_y24Egg').css("color", "black");
			$('li[id=limited]').show();
			$('li[id=all]').show();
			$('li[id=yTeen]').show();
			$('li[id=y24]').show();
			$('li[id=lteEgg]').show();
		});
		
		$('#k_limited').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "bold");
			$('#k_limited').css("color", "red");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			
			$('li[id=all]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=y24]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_all').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "bold");
			$('#k_all').css("color", "red");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=y24]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_yTeen').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "bold");
			$('#k_yTeen').css("color", "red");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=all]').hide();
			$('li[id=y24]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_y24').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "bold");
			$('#k_y24').css("color", "red");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=all]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_lteEgg').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "bold");
			$('#k_lteEgg').css("color", "red");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=all]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=y24]').hide();
		});
		
	});