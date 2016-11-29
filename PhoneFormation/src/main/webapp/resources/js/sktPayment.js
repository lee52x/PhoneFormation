

$(document).ready(function() {
		$('#all').click(function(){ 		
			$('#all').css("font-weight", "bold");
			$('#all').css("color", "red");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yt').css("font-weight", "normal");
			$('#b_yt').css("color", "black");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li[id=signiture]').show();
			$('li[id=band_yt]').show();
			$('li[id=band_data]').show();
			$('li[id=everyone_unlimited]').show();
			$('li[id=t_together]').show();
		});
		
		$('#t_si').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "bold");
			$('#t_si').css("color", "red");
			$('#band_yt').css("font-weight", "normal");
			$('#band_yt').css("color", "black");
			$('#band_data').css("font-weight", "normal");
			$('#band_data').css("color", "black");
			$('#everyone_unlimited').css("font-weight", "normal");
			$('#everyone_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=band_yt]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#b_yt').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yt').css("font-weight", "bold");
			$('#b_yt').css("color", "red");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#b_data').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yt').css("font-weight", "normal");
			$('#b_yt').css("color", "black");
			$('#b_data').css("font-weight", "bold");
			$('#b_data').css("color", "red");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yt]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#e_unlimited').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yt').css("font-weight", "normal");
			$('#b_yt').css("color", "black");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "bold");
			$('#e_unlimited').css("color", "red");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yt]').hide();
			$('li[id=band_data]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#t_together').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yt').css("font-weight", "normal");
			$('#b_yt').css("color", "black");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "bold");
			$('#t_together').css("color", "red");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yt]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
		});
		
	});