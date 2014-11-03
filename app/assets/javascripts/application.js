// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.dataTables.min

$(document).ready(function(){
    $('table.table').dataTable( {
        "language": {
            "processing": "Bitte warten...",
			"lengthMenu": "_MENU_ Einträge anzeigen",
			"zeroRecords": "Keine Einträge vorhanden.",
			"info": "_START_ bis _END_ von _TOTAL_",
			"infoEmpty": "0 bis 0 von 0 Einträgen",
			"infoFiltered": "",
			"infoPostFix": "",
			"search": "Suchen",
			"url": "",
			"paginate": {
				"first": "",
				"previous": "<",
				"next": ">",
				"last": ""
			}
        }
    } );
});