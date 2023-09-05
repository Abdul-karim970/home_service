import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/string_extensions_for_forms.dart';

int noOfServicePosted = 0;
bool imagePicked = false;

String? employeeNameFormValidator(String? value) {
  if (value!.isNullOrEmpty()) {
    return 'Required*';
  } else if (!(value.isValidName())) {
    return 'Enter valid name';
  } else {
    return null;
  }
}
