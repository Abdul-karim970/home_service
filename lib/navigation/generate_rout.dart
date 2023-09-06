import 'package:flutter/cupertino.dart';
import 'package:home_service/pages/ErrorPage/error_page.dart';

import '../pages/AllServicePage/all_service_page.dart';
import '../pages/ServiceMasterPage/service_master_page.dart';

Route? onGenerateRout(RouteSettings settings) {
  if (settings.name == ServiceMasterPage.name) {
    return CupertinoPageRoute(builder: serviceMasterPageRoutBuilder);
  } else if (settings.name == AllServicesPage.name) {
    return CupertinoPageRoute(builder: allServicesPageBuilder);
  } else {
    return CupertinoPageRoute(builder: errorPageBuilder);
  }
}

Widget serviceMasterPageRoutBuilder(BuildContext context) {
  return const ServiceMasterPage();
}

Widget allServicesPageBuilder(BuildContext context) {
  return const AllServicesPage();
}

Widget errorPageBuilder(BuildContext context) {
  return const ErrorPage();
}
