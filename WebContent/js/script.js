function validateMenuItemForm() {
    var foodname = document.forms["menuItemForm"]["name"].value;
    var price = document.forms["menuItemForm"]["price"].value;
    var dateOfLaunch = document.forms["menuItemForm"]["dateoflaunch"].value;
    var category = document.forms["menuItemForm"]["category"].value;
    var nameregexp = (/^.*[0-9].*$/);

    if (foodname == "") {
        alert("Title is required");
        return false;
    }
    if (foodname.length < 2 || foodname.length > 65) {
        alert("Title should have 2 to 65 characters");
        return false;
    }
    if (price == "") {
        alert("Price is requird");
        return false;
    }
    if (!price.match(nameregexp)) {
        alert("Price has to be a number");
        return false;
    }
    if (dateOfLaunch == "") {
        alert("Date Launch is required");
        return false;
    }
    if (category == "") {
        alert("Select one Category");
        return false;
    }
}
