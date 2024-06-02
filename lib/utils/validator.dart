class Validator {

  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required';
    }
    return null;
  }
}