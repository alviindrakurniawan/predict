String? validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return "Phone is Required";
  } else if (!RegExp(r'^\+\d{1,3}\d{6,12}$').hasMatch(value)) {
    return "Enter The Phone Number in International Format";
  } else {
    return null;
  }
}

String? validateEmail(String? value) {
  if (value!.isEmpty) {
    return "Email is Required";
  } else if (!RegExp(r"^[a-zA-Z\d.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\d]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return "Enter The E-mail According to The Format";
  } else {
    return null;
  }
}
String? validatePassword(String? value) {
  if (value!.isEmpty) {
    return "Password is Required";
  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d).{8,}$')
      .hasMatch(value)) {
    return "At least 8 characters, 1 uppercase, 1 lowercase, 1 number";
  } else {
    return null;
  }
}


String? validateConfirmPassword(String? value, String? password) {
  if (value!.isEmpty) {
    return "Confirmation Passwords is Required";
  } else if (value != password) {
    return "Different from Password";
  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d).{8,}$')
      .hasMatch(value)) {
    return "At least 8 characters, 1 uppercase, 1 lowercase, 1 number";
  } else {
    return null;
  }
}

String? validateUserName(String? value) {
  if (value!.isEmpty) {
    return "Username is Required";
  // } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
  //   return "Fill the name with a combination of lowercase and uppercase letters";
  } else {
    return null;
  }
}

String? validateEmailEmpty(String? value) {
  if (value!.isEmpty) {
    return "Please Input Your Email";
  } else {
    return null;
  }
}
