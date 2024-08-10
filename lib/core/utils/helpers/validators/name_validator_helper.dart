abstract class NameValidatorHelper {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field required.';
    }
    return null;
  }
}
