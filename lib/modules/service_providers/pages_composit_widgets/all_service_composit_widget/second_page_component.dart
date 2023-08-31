import 'package:flutter/material.dart';
import '../../../../constants./app_color_constants.dart';
import '../../../../constants/corner_radius.dart';
import '../../../../constants/screen_size_const.dart';

final double _screenWidthFirstPage = screenWidth;
final double _screenHeightFirstPage = screenHeight;

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _screenWidthFirstPage * 0.9,
      child: TextFormField(
        maxLines: 10,
        cursorColor: secondaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          hintText: hintText,
          filled: true,
          fillColor: primaryVariantColor,
        ),
      ),
    );
  }
}

class ServicePriceTextField extends StatelessWidget {
  const ServicePriceTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _screenWidthFirstPage * 0.8,
      child: TextFormField(
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
          hintText: hintText,
          filled: true,
          fillColor: primaryVariantColor,
        ),
      ),
    );
  }
}
