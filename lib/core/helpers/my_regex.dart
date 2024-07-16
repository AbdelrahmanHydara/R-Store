class MyRegex {

  static bool isEmailValid(String email) =>
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);

  static bool isPasswordValid(String password) =>
      RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,25}$").hasMatch(password);

  static bool isPhoneNumberValid(String phoneNumber) =>
      RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);

  static bool hasLowerCase(String password) => RegExp(r'^(?=.*[a-z])').hasMatch(password);

  static bool hasUpperCase(String password) => RegExp(r'^(?=.*[A-Z])').hasMatch(password);

  static bool hasNumber(String password) => RegExp(r'^(?=.*?[0-9])').hasMatch(password);

  static bool hasSpecialCharacter(String password) => RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);

  static bool hasMinLength(String password) => RegExp(r'^(?=.{8,})').hasMatch(password);
}