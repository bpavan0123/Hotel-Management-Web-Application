function myFunction() {
    var x = document.getElementById("pwd");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
  function validation()
  {
  var username = document.getElementById("uname");
var name_error = document.getElementById('name_error');
console.log(username.value);


  }