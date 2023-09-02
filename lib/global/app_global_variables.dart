import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/string_extensions_for_forms.dart';

bool imagePicked = false;
String? serviceFormValidator(String? value) {
  if (value!.isNotNullNotEmpty()) {
    return 'Required*';
  } else if (!(value.isValidName())) {
    return 'Enter valid name';
  } else {
    return null;
  }
}
