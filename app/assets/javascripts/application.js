// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require ckeditor-jquery
//= require bootstrap
//= require_tree .


$(function () {


    // Course show

    // add material link
    $('#course .materials .add').click(function(){
        $('.links', this).slideToggle(200)
    })

    // tooltip
    $('#course .materials li > a').tooltip()
//    $().tooltip

    var $datePickerStart = $('.ui-datepicker-start'),
        $datePickerEnd = $('.ui-datepicker-end')

    $datePickerStart.datepicker({
        altField: $datePickerStart.next('.date-input'),
        altFormat: "yy-mm-dd",
        onSelect: function( selectedDate ) {
            $datePickerStart.datepicker( "option", "minDate", selectedDate );
            $datePickerEnd.datepicker( "option", "minDate", selectedDate );
        }
    });
    $datePickerEnd.datepicker({
        altField: $datePickerEnd.next('.date-input'),
        altFormat: "yy-mm-dd",
        onSelect: function( selectedDate ) {
            $datePickerEnd.datepicker( "option", "maxDate", selectedDate );
            $datePickerStart.datepicker( "option", "maxDate", selectedDate );
        }
    });


    // Range datapicker

    var $datePicker = $('.ui-datepicker-range')

    var currentDate = $('#date-input').val()
    $datePicker.datepicker({
//        dateField: $datePicker.next('#date-input'),
        altField: $datePicker.next('#date-input'),
        altFormat: "yy-mm-dd",
        dateFormat: "yy-mm-dd",
        minDate: $datePicker.data('minDate'),
        maxDate: $datePicker.data('maxDate')
    }).datepicker('setDate', currentDate)
})
