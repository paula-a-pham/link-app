abstract class PasswordValidatorHelper {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field required.';
    } else if (value.length < 6) {
      return 'Password must be at least 6 digits.';
    }
    return null;
  }
}
