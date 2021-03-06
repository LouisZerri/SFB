$(document).ready(function(){

	$('#categoryFilter').focus().keyup(function(event){

		var e = $(this);
		var val = e.val();

		if(event.keyCode == 13)
		{

		}
		if(val == '')
		{
			$('#filtre_adherent tr').show();
			$('#filtre_adherent td span').removeClass('highlighted');
			return true;
		}

		var regexp = '\\b(.*)';
		for(i in val)
		{
			regexp += '('+val[i]+')(.*)';
		}
		regexp += '\\b';

		$("#filtre_adherent td span").each(function(){
			var span = $(this);
			var string = '';
			resultat = span.text().match(new RegExp(regexp, 'i'));
			if(resultat)
			{
				for(i in resultat)
				{
					if(i % 2 != 0 && i > 0)
					{
						string += resultat[i];

					}
					else if(i > 0)
					{
						string += '<span class="highlighted">'+resultat[i]+'</span>';
					}
				}

				span.parent().parent().show();
			}
			else
			{
				string = span.text();
				span.parent().parent().hide();
			}
			span.html(string);
		})
	})
})