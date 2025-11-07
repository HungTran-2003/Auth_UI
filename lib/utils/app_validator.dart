class AppValidator {
  AppValidator._();

  static String? validateEmpty(String? input){
    if(input == null || input.isEmpty){
      return "Field is required";
    }
    return null;
  }

  static String? validatePassword(String? input) {
    if (input == null) return null;
    RegExp regex = RegExp(r'^[a-zA-Z0-9]{8,12}$');
    bool isValid = regex.hasMatch(input);
    if (!isValid) {
      return "8-12 characters.\nIncluding letters, numbers";
    }
    return null;
  }

  static String? validateConfirmPassword(
      String? password, String? confirmPassword) {
    if (password != confirmPassword) {
      return "Confirm password is not match";
    }
    return null;
  }

  static String? validateEmail(String? input) {
    if (input == null) return null;
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    bool isValid = regex.hasMatch(input);
    if (!isValid) {
      return "Invalid email format";
    }
    return null;
  }
}