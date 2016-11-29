


$(document).ready(function() {
		$('#all').click(function(){ 		
			$('#all').css("font-weight", "bold");
			$('#all').css("color", "red");
			$('#l_data').css("font-weight", "normal");
			$('#l_data').css("color", "black");
			$('#l_special').css("font-weight", "normal");
			$('#l_special').css("color", "black");
			$('#l_netInside').css("font-weight", "normal");
			$('#l_netInside').css("color", "black");
			$('#l_lte').css("font-weight", "normal");
			$('#l_lte').css("color", "black");
			$('li[id=data]').show();
			$('li[id=special]').show();
			$('li[id=netInside]').show();
			$('li[id=lte]').show();
		});
		
		$('#l_data').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#l_data').css("font-weight", "bold");
			$('#l_data').css("color", "red");
			$('#l_special').css("font-weight", "normal");
			$('#l_special').css("color", "black");
			$('#l_netInside').css("font-weight", "normal");
			$('#l_netInside').css("color", "black");
			$('#l_lte').css("font-weight", "normal");
			$('#l_lte').css("color", "black");
			$('li').show();
			$('li[id=special]').hide();
			$('li[id=netInside]').hide();
			$('li[id=lte]').hide();
		});
		
		$('#l_special').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#l_data').css("font-weight", "normal");
			$('#l_data').css("color", "black");
			$('#l_special').css("font-weight", "bold");
			$('#l_special').css("color", "red");
			$('#l_netInside').css("font-weight", "normal");
			$('#l_netInside').css("color", "black");
			$('#l_lte').css("font-weight", "normal");
			$('#l_lte').css("color", "black");
			$('li').show();
			$('li[id=data]').hide();
			$('li[id=netInside]').hide();
			$('li[id=lte]').hide();
		});
		
		$('#l_netInside').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#l_data').css("font-weight", "normal");
			$('#l_data').css("color", "black");
			$('#l_special').css("font-weight", "normal");
			$('#l_special').css("color", "black");
			$('#l_netInside').css("font-weight", "bold");
			$('#l_netInside').css("color", "red");
			$('#l_lte').css("font-weight", "normal");
			$('#l_lte').css("color", "black");
			$('li').show();
			$('li[id=data]').hide();
			$('li[id=special]').hide();
			$('li[id=lte]').hide();
		});
		
		$('#l_lte').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#l_data').css("font-weight", "normal");
			$('#l_data').css("color", "black");
			$('#l_special').css("font-weight", "normal");
			$('#l_special').css("color", "black");
			$('#l_netInside').css("font-weight", "normal");
			$('#l_netInside').css("color", "black");
			$('#l_lte').css("font-weight", "bold");
			$('#l_lte').css("color", "red");
			$('li').show();
			$('li[id=data]').hide();
			$('li[id=special]').hide();
			$('li[id=netInside]').hide();
		});
		

		
	});