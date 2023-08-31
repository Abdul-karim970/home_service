import 'package:flutter/material.dart';

import 'package:home_service/constants/screen_size_const.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/first_page_currency_diaog.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/second_page_component.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/sheet_first_page_components.dart';

class BottomSheetFirstPage extends StatelessWidget {
  const BottomSheetFirstPage({super.key, required this.nextPageOnTap});
  final GestureTapCallback nextPageOnTap;
  static const description = 'Description';

  static const radius = 80.0;
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
              hintText: description,
            ),
            SizedBox(
              height: screenHeightFirstPage * 0.02,
            ),
            const PickedImageWidget(),
            SizedBox(
              height: screenHeightFirstPage * 0.02,
            ),
            GoToNextPageButton(onTap: nextPageOnTap),
            SizedBox(
              height: screenHeightFirstPage * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
