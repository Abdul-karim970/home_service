import 'package:flutter/material.dart';
import 'package:home_service/constants/app_color_constants.dart';
import 'package:home_service/constants/screen_size_const.dart';
import 'package:home_service/modules/service_providers/pages_composit_widgets/all_service_composit_widget/second_page.dart';

import 'sheet_first_page.dart';

// Add service show bottom sheet button

class AddServiceButton extends StatefulWidget {
  const AddServiceButton({
    super.key,
  });

  @override
  State<AddServiceButton> createState() => _AddServiceButtonState();
}

class _AddServiceButtonState extends State<AddServiceButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            enableDrag: false,
            showDragHandle: true,
            isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (context) {
              return BottomSheet(
                  backgroundColor: primaryColor,
                  enableDrag: true,
                  animationController: animationController,
                  onClosing: () {},
                  builder: addServiceBottomSheetBuilder);
            },
          );
        },
        icon: const Icon(Icons.add_box_outlined));
  }
}

// BottomSheet builder
Widget addServiceBottomSheetBuilder(BuildContext context) {
  return const AddServiceBottomSheet();
}

// BottomSheet
class AddServiceBottomSheet extends StatefulWidget {
  const AddServiceBottomSheet({super.key});

  @override
  State<AddServiceBottomSheet> createState() => _AddServiceBottomSheet();
}

class _AddServiceBottomSheet extends State<AddServiceBottomSheet>
    with SingleTickerProviderStateMixin {
  late PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    double progress = controller.hasClients ? (controller.page ?? 0) : 0;
    return SizedBox(
        width: screenWidth,
        height: screenHeight * 0.55 + progress * screenHeight * 0.1,
        child: Scaffold(
          body: PageView(
            controller: controller,
            children: [
              BottomSheetFirstPage(nextPageOnTap: nextPageClickListener),
              const BottomSheetSecondPage()
            ],
          ),
        ));
  }

  void nextPageClickListener() {
    controller.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }
}
