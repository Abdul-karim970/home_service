import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/sheet_first_page_components.dart';

import '../../../../all_bloc/currency_value_bloc/currency_bloc.dart';
import '../../../../constants./app_color_constants.dart';
import '../../../../constants/corner_radius.dart';
import '../../../../constants/screen_size_const.dart';

class EmployeeCredentials extends StatelessWidget {
  const EmployeeCredentials({super.key});
  static const name = 'Employee name';

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth * 0.03,
        ),
        const NameTextField(
          hintText: name,
        ),
        SizedBox(
          width: screenWidth * 0.03,
        ),
        const CurrencyPicker(),
        SizedBox(
          width: screenWidth * 0.03,
        ),
      ],
    );
  }
}

// Currency picker button

class CurrencyPicker extends StatelessWidget {
  const CurrencyPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCurrencyPicker(
          context: context,
          showFlag: true,
          showCurrencyName: true,
          showCurrencyCode: true,
          onSelect: (Currency currency) {
            context
                .read<CurrencyBloc>()
                .add(UpdateCurrencyEvent(value: currency.code));
          },
        );
      },
      child: Container(
        width: screenWidth * 0.3,
        height: screenHeight * 0.075,
        decoration: BoxDecoration(
            color: primaryVariantColor,
            borderRadius: BorderRadius.circular(textFieldCornerRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<CurrencyBloc, CurrencyState>(
              builder: (context, state) {
                return Text(
                  state.value,
                  style: const TextStyle(fontSize: 16),
                );
              },
            ),
            const Icon(Icons.arrow_drop_down_circle_outlined)
          ],
        ),
      ),
    );
  }
}
