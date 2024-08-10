import 'package:email_validator/email_validator.dart';

abstract class EmailValidatorHelper {
  static String? validateEmailAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field required.';
    } else if (!EmailValidator.validate(value)) {
      return 'Invalid email address.';
    }
    return null;
  }
}
