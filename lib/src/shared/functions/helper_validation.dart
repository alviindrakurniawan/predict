

String? validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return "Phone number is Diisi"; // "Number is required"
  } else if (!RegExp(r'^\+\d{1,3}\d{6,12}$').hasMatch(value)) {
    return "Enter The Phone Number in International Format";
  } else {
    return null;
  }
}

String? validateEmail(String? value) {
  if (value!.isEmpty) {
    return "Email Wajib Diisi";
  } else if (!RegExp(
      r"^[a-zA-Z\d.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\d]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return "Enter The E-mail According to The Format";
  } else {
    return null;
  }
}


String? validatePassword(String? value) {
  if (value!.isEmpty) {
    return "Passwords Wajib Diisi";
  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d).{8,}$')
      .hasMatch(value)) {
    return "Minimum 8 Characters, 1 Capital Letter, 1 Lowercase Letter, 1 Number";
  } else {
    return null;
  }
}
