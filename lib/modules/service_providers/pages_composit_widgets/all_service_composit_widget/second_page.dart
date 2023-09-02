import 'package:flutter/cupertino.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/second_page_component.dart';
import '../../../../constants/screen_size_const.dart';
import 'second_page_employee_crediential.dart';

class BottomSheetSecondPage extends StatelessWidget {
  const BottomSheetSecondPage({super.key, required this.submitServiceInfo});
  static const description = 'Description';
  final GestureTapCallback submitServiceInfo;

  @override
  Widget build(BuildContext context) {
    final double screenHeightFirstPage = screenHeight;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(
              height: screenHeightFirstPage * 0.03,
            ),
            const EmployeeCredentials(),
            const DescriptionTextField(
              hintText: description,
            ),
            SizedBox(
              height: screenHeightFirstPage * 0.03,
            ),
            SubmitServiceButton(
              onTap: submitServiceInfo,
            ),
            SizedBox(
              height: screenHeightFirstPage * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
