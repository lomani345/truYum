function validate() {
    var foodname = document.forms["food"]["title"].value;
    var price = document.forms["food"]["price"].value;
    var dateofLaunch = document.forms["food"]["dateoflaunch"].value;
    var category = document.forms["food"]["category"].value;
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
    if (dateofLaunch == "") {
        alert("Date Launch is required");
        return false;
    }
    if (category == "") {
        alert("Select one Category");
        return false;
    }
}
