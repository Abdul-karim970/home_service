import 'package:flutter/cupertino.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/second_page_component.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/sheet_first_page_components.dart';

import '../../../../constants/screen_size_const.dart';
import 'first_page_currency_diaog.dart';

class BottomSheetSecondPage extends StatelessWidget {
  const BottomSheetSecondPage({super.key});
  static const price = 'Offer (Rs)';

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
            const ServicePriceTextField(
              hintText: price,
            ),
            SizedBox(
              height: screenHeightFirstPage * 0.02,
            ),
            const EmployeeCredentials(),
            SizedBox(
              height: screenHeightFirstPage * 0.02,
            ),
            GoToNextPageButton(
              onTap: () {},
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
