import 'package:flutter/material.dart';
import 'package:home_service/constants/app_color_constants.dart';

import '../pages_composit_widgets/all_service_composit_widget/bottom_sheet.dart';

class AllServicesPage extends StatefulWidget {
  const AllServicesPage({super.key});
  static const name = '/allServices';
  static const title = 'Your Service';

  @override
  State<AllServicesPage> createState() => _AllServicesPageState();
}

class _AllServicesPageState extends State<AllServicesPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(AllServicesPage.title),
        actions: const [
          AddServiceButton(),
        ],
      ),
      body: const Align(
        alignment: Alignment.topCenter,
        child: Text('No Data yet!'),
      ),
    );
  }
}
