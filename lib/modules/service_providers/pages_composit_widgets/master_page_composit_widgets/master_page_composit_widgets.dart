import 'package:flutter/material.dart';
import 'package:home_service/Modules/service_providers/pages/all_service_page.dart';
import 'package:home_service/constants/app_color_constants.dart';
import 'package:home_service/constants/corner_radius.dart';
import 'package:home_service/constants/screen_size_const.dart';

// Master page services

class ServiceMasterPageInfoWidgets extends StatelessWidget {
  const ServiceMasterPageInfoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AllServicesPage.name);
          },
          child: const ServiceMasterPageInfoWidget(
              serviceImage: 'assets/images/add_service.jpg',
              serviceTitle: 'Your services'),
        ),
        const ServiceMasterPageInfoWidget(
            serviceImage: 'assets/images/service_status.jpg',
            serviceTitle: 'Service status'),
      ],
    );
  }
}

// Master page service info Widget

class ServiceMasterPageInfoWidget extends StatelessWidget {
  const ServiceMasterPageInfoWidget(
      {super.key, required this.serviceImage, required this.serviceTitle});
  final String serviceImage;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final serviceWidgetWidth = screenWidth * 0.4;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: serviceWidgetWidth,
          height: screenHeight * 0.25,
          decoration: BoxDecoration(
              color: primaryVariantColor,
              boxShadow: const [
                BoxShadow(
                    color: shadowColor, blurRadius: 5, offset: Offset(3, 3))
              ],
              borderRadius: BorderRadius.circular(cardCornerRadius),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(serviceImage))),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width: serviceWidgetWidth,
          height: screenHeight * 0.1,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black54,
                  Colors.black38,
                  Color.fromARGB(10, 0, 0, 0),
                ]),
            borderRadius: BorderRadius.circular(cardCornerRadius),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                serviceTitle,
                style: const TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              )
            ],
          ),
        ),
      ],
    );
  }
}
