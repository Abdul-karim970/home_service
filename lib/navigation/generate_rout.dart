import 'package:flutter/cupertino.dart';
import 'package:home_service/Modules/service_providers/pages/all_service_page.dart';
import 'package:home_service/Modules/service_providers/pages/service_master_page.dart';

Route? onGenerateRout(RouteSettings settings) {
  if (settings.name == ServiceMasterPage.name) {
    return CupertinoPageRoute(builder: serviceMasterPageRoutBuilder);
  } else if (settings.name == AllServicesPage.name) {
    return CupertinoPageRoute(builder: allServicesPageBuilder);
  }
}

Widget serviceMasterPageRoutBuilder(BuildContext context) {
  return const ServiceMasterPage();
}

Widget allServicesPageBuilder(BuildContext context) {
  return const AllServicesPage();
}
