import 'my_regex.dart';

class MyValidation {
  static String? validateEmptyText(String value,String filedName) {
    if(value .isEmpty) {
      return "Please enter a $filedName";
    }
    return null;
  }

  static String? validateEmail(String value) {
    if(value .isEmpty || !MyRegex.isEmailValid(value)) {
      return "Please enter a valid Email";
    }
    return null;
  }

  static String? validatePassword(String value) {
    if(value .isEmpty || !MyRegex.isPasswordValid(value)) {
      return "Please enter a valid Password";
    }
    return null;
  }

  static String? validatePhone(String value) {
    if(value .isEmpty || !MyRegex.isPhoneNumberValid(value)) {
      return "Please enter a valid Phone";
    }
    return null;
  }
}