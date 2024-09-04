$(document).ready(function () {
    var reportdata = $('#blocker-sender-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
    });
});

// Delete user event
function confirmDelete(SenderFilterID) {
    Swal.fire({
        title: 'Are you sure you want to delete this filter?',
        text: "You won't be able to revert this!",
        icon: 'error',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Delete'
    }).then((result) => {
        if (result.isConfirmed) {
            // Trigger postback with userID as the argument
            __doPostBack('DeleteFilter', SenderFilterID);
        }
    });
}


