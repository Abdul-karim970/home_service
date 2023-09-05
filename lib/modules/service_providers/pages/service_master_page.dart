import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:home_service/constants/app_color_constants.dart';
import 'package:home_service/constants/screen_size_const.dart';
import '../../../constants/instances.dart';
import '../pages_composit_widgets/master_page_composit_widgets/master_page_composit_widgets.dart';

final double _screenHeightFirstPage = screenHeight;

class ServiceMasterPage extends StatefulWidget {
  const ServiceMasterPage({
    super.key,
  });

  static const name = '/servicesProvider';
  static const title = 'Service Provider';

  @override
  State<ServiceMasterPage> createState() => _ServiceMasterPageState();
}

class _ServiceMasterPageState extends State<ServiceMasterPage> {
  @override
  void initState() {
    super.initState();
    fireStoreInstance = FirebaseFirestore.instance;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenSize = MediaQuery.sizeOf(context);
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(ServiceMasterPage.title),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: _screenHeightFirstPage * 0.07,
            ),
            const ServiceMasterPageInfoWidgets()
          ],
        ),
      ),
    );
  }
}
