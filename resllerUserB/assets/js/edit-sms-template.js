function editTemplate(id) {
    var el = document.getElementById(id);
    el.disabled = true;

    var temp_name = document.getElementById("temp_name").value;
    var temp_msg = document.getElementById("temp_msg").value;

    if (temp_name.trim() == '') {
        toastr.error("Please enter template name");
        el.disabled = false;
        return false;
    }

    if (temp_msg.trim() == '') {
        toastr.error("Please enter template message body");
        el.disabled = false;
        return false;
    }

    el.disabled = false;
    __doPostBack(id, '');
}
