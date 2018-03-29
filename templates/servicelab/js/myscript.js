jQuery(document).ready(function($) {

   function menu(){
      $('.navbar .parent').addClass('dropdown');
      $('.navbar .parent > a').addClass('dropdown-toggle');
      $('.navbar .parent > a').attr('href', '#');
      $('.navbar .parent > a').attr('data-toggle', 'dropdown');
      $('.navbar .parent > a').append(' ', '<span class="caret"></span>');
      $('.navbar .parent > ul').addClass('dropdown-menu');
   }
   menu();

//dbl redirect event
   $('.navbar .parent >a').dblclick(function(){
		window.location.href='index.php?option=com_content&view=article&id=6';
		return false;
	});
});

