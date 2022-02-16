function formSubmit() {
  let usersList = JSON.parse(localStorage.getItem("user"));

  let name = document.getElementById("name").value;
  let email = document.getElementById("email").value;
  let dob = document.getElementById("dob").value;
  let address = document.getElementById("address").value;
  let occupation = document.getElementById("occupation").value;
  let male = document.getElementById("male").value;
  let female = document.getElementById("female").value;
  let password = document.getElementById("password").value;

  let gender;

  if (male) {
    gender = male;
  } else {
    gender = female;
  }

  let user = {
    name,
    email,
    dob,
    address,
    occupation,
    gender,
    password,
  };

  if (usersList == null) {
    usersList = [];
  }
  usersList.push(user);

  localStorage.setItem("user", JSON.stringify(usersList));
}
