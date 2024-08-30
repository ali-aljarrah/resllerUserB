var date = new Date();
var currentMonth = date.getMonth();
var currentDate = date.getDate();
var currentYear = date.getFullYear();
var yesteday = new Date(new Date().setDate(new Date().getDate() - 1));
var minDate = new Date(currentYear, currentMonth - 1, currentDate + 1);
var maxDate = new Date(currentYear, currentMonth, currentDate - 1);

$('#date_from').daterangepicker({
    locale: {
        format: 'YYYY-MM-DD',
        separator: " to "
    },
    singleDatePicker: true,
    showDropdowns: true,
    autoApply: true,
    startDate: yesteday,
    minDate: minDate,
    maxDate: maxDate,
});

$('#date_to').daterangepicker({
    locale: {
        format: 'YYYY-MM-DD',
        separator: " to "
    },
    singleDatePicker: true,
    showDropdowns: true,
    autoApply: true,
    startDate: yesteday,
    minDate: minDate,
    maxDate: maxDate,
});

$("#rest_form_btn").click(function () {
    var date = new Date();
    var currentMonth = date.getMonth();
    var currentDate = date.getDate();
    var currentYear = date.getFullYear();

    $('#date_from').daterangepicker({
        locale: {
            format: 'YYYY-MM-DD',
            separator: " to "

        },
        singleDatePicker: true,
        showDropdowns: true,
        autoApply: true,
        startDate: new Date("9/19/2023"),
        minDate: new Date(currentYear, currentMonth - 1, currentDate),
        maxDate: new Date("9/19/2023"),
    });

    $('#date_to').daterangepicker({
        locale: {
            format: 'YYYY-MM-DD',
            separator: " to "
        },
        singleDatePicker: true,
        showDropdowns: true,
        startDate: new Date("9/19/2023"),
        autoApply: true,
        minDate: new Date(currentYear, currentMonth - 1, currentDate),
        maxDate: new Date("9/19/2023"),
    });
});

$('#export').click(function (e) {
    e.preventDefault();

    var date_from = $('#date_from').val();
    var date_to = $('#date_to').val();

    $(this).prop('disabled', true);

    if (date_from == '') {

        toastr.error("Please enter start date!");

        $(this).prop('disabled', false);

        return;
    }

    if (date_to == '') {

        toastr.error("Please enter finish date!");

        $(this).prop('disabled', false);

        return;
    }

    toastr.success("Request received, Download link will be showing in the section down once ready, Note that exporting will take some time depending on the data size.");

    $(this).prop('disabled', false);
});

function exportSentReport(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var date_from = document.getElementById("date_from");
    var date_to = document.getElementById("date_to");

    if (date_from == '') {
        toastr.error("Please enter start date!");

        el.disabled = false;
        return false;
    }

    if (date_to == '') {
        toastr.error("Please enter finish date!");

        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}

$(document).ready(function () {

    var reportdata = $('#sent-sms-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
          "<'row'<'col-sm-12'tr>>" +
          "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",

    });

});