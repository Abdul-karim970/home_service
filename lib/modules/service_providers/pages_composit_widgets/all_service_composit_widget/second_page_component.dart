import 'package:flutter/material.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/string_extensions_for_forms.dart';
import '../../../../constants./app_color_constants.dart';
import '../../../../constants/corner_radius.dart';
import '../../../../constants/screen_size_const.dart';
import '../../../../global/app_global_variables.dart';

final double _screenWidthFirstPage = screenWidth;
final double _screenHeightFirstPage = screenHeight;

class BookingPriceTextField extends StatefulWidget {
  const BookingPriceTextField({super.key, required this.hintText});
  final String hintText;

  @override
  State<BookingPriceTextField> createState() => _BookingPriceTextFieldState();
}

class _BookingPriceTextFieldState extends State<BookingPriceTextField> {
  late TextEditingController employeeBookingPriceController;

  @override
  void initState() {
    super.initState();
    employeeBookingPriceController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _screenWidthFirstPage * 0.6,
      height: _screenHeightFirstPage * 0.11,
      child: TextFormField(
        validator: serviceFormValidator,
        controller: employeeBookingPriceController,
        keyboardType: TextInputType.number,
        maxLines: 1,
        cursorColor: secondaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldCornerRadius),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldCornerRadius),
              borderSide: const BorderSide(color: Colors.transparent)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldCornerRadius),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldCornerRadius),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error)),
          hintText: widget.hintText,
          filled: true,
          fillColor: primaryVariantColor,
        ),
      ),
    );
  }
}

class DescriptionTextField extends StatefulWidget {
  const DescriptionTextField({super.key, required this.hintText});
  final String hintText;

  @override
  State<DescriptionTextField> createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  late TextEditingController employeeDescriptionController;
  final double _screenWidthFirstPage = screenWidth;
  final double _screenHeightFirstPage = screenHeight;

  @override
  void initState() {
    super.initState();
    employeeDescriptionController = TextEditingController();
  }

  @override
  void dispose() {
    employeeDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _screenWidthFirstPage * 0.9,
      height: _screenHeightFirstPage * 0.4,
      child: TextFormField(
        validator: serviceFormValidator,
        controller: employeeDescriptionController,
        maxLines: 12,
        cursorColor: secondaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error)),
          hintText: widget.hintText,
          filled: true,
          fillColor: primaryVariantColor,
        ),
      ),
    );
  }
}

// Submit service info button

class SubmitServiceButton extends StatelessWidget {
  const SubmitServiceButton({super.key, required this.onTap});
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          width: _screenWidthFirstPage * 0.7,
          height: _screenHeightFirstPage * 0.06,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(buttonCornerRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Next',
                style: TextStyle(color: primaryColor, fontSize: 20),
              ),
              SizedBox(
                width: _screenWidthFirstPage * 0.02,
              ),
              const Icon(
                Icons.arrow_forward,
                color: primaryColor,
              )
            ],
          )),
    );
  }
}
