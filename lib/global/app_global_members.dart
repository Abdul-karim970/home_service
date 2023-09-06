import 'package:home_service/pages/AllServicePage/all_service_composit_widget/all_service_composit_widget/string_extensions_for_forms.dart';

// is picked image for employee
bool imagePicked = false;

// Employee name validator
String? employeeNameFormValidator(String? value) {
  if (value!.isNullOrEmpty()) {
    return 'Required*';
  } else if (!(value.isValidName())) {
    return 'Enter valid name';
  } else {
    return null;
  }
}
