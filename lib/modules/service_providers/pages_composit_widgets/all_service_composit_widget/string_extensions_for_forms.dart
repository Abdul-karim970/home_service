extension FormValueCheck on String? {
  bool isNotNullNotEmpty() {
    String value = this ?? '';
    return value.trim().isNotEmpty;
  }

  // Name Validator

  bool isValidName() {
    if (isNotNullNotEmpty()) {
      String value = this!;
      return value.codeUnits.every((element) =>
          element >= 65 && element <= 90 ||
          element >= 97 && element <= 122 ||
          value.codeUnits.any((element) => element == 32));
    } else {
      return false;
    }
  }
}
