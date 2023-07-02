import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePageController extends GetxController {
  Rx<MaterialColor> color1 = Colors.red.obs;
  Rx<MaterialColor> color2 = Colors.blue.obs;
  Rx<MaterialColor> color3 = Colors.green.obs;
  Rx<MaterialColor> color4 = Colors.orange.obs;
  Rx<MaterialColor> color5 = Colors.orange.obs;
  Rx<MaterialColor> color6 = Colors.orange.obs;
  Rx<MaterialColor> color7 = Colors.orange.obs;
  Rx<MaterialColor> color8 = Colors.orange.obs;
  Rx<MaterialColor> color9 = Colors.orange.obs;
  Rx<MaterialColor> color10 = Colors.orange.obs;
  Rx<MaterialColor> color11 = Colors.orange.obs;
  Rx<MaterialColor> color12 = Colors.orange.obs;
  Rx<MaterialColor> color13 = Colors.orange.obs;
  Rx<MaterialColor> color14 = Colors.orange.obs;
  Rx<MaterialColor> color15 = Colors.orange.obs;
  Rx<MaterialColor> color16 = Colors.orange.obs;

  Timer? myTimer;

  List<Rx<MaterialColor>> listOfColors = [
    Colors.amber.obs,
    Colors.red.obs,
    Colors.teal.obs,
    Colors.yellow.obs,
    Colors.pink.obs,
    Colors.purple.obs,
    Colors.green.obs,
    Colors.grey.obs,
    Colors.lime.obs,
    Colors.cyan.obs,
    Colors.blue.obs,
    Colors.brown.obs,
  ];
  Random random = Random();
  void startTimer() {
    myTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      color1 = listOfColors[random.nextInt(12)];
      color2 = listOfColors[random.nextInt(12)];
      color3 = listOfColors[random.nextInt(12)];
      color4 = listOfColors[random.nextInt(12)];
      color6 = listOfColors[random.nextInt(12)];
      color7 = listOfColors[random.nextInt(12)];
      color8 = listOfColors[random.nextInt(12)];
      color9 = listOfColors[random.nextInt(12)];
      color10 = listOfColors[random.nextInt(12)];
      color11 = listOfColors[random.nextInt(12)];
      color12 = listOfColors[random.nextInt(12)];
      color13 = listOfColors[random.nextInt(12)];
      color14 = listOfColors[random.nextInt(12)];
      color15 = listOfColors[random.nextInt(12)];
      color16 = listOfColors[random.nextInt(12)];

      // setState(() {});
    });
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    print("abed");
    return Scaffold(
      appBar: AppBar(title: const Text("Omar"), actions: [
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            controller.startTimer();
          },
        ),
      ]),
      body: Row(
        children: [
          myColumn(controller.color1, controller.color2, controller.color3, controller.color4),
          myColumn(controller.color5, controller.color6, controller.color7, controller.color8),
          myColumn(controller.color9, controller.color10, controller.color11, controller.color12),
          myColumn(controller.color13, controller.color14, controller.color15, controller.color16)
        ],
      ),
    );
  }

  Widget myColumn(
      Rx<MaterialColor> color1, Rx<MaterialColor> color2, Rx<MaterialColor> color3, Rx<MaterialColor> color4) {
    return Expanded(
      child: Column(
        children: [
          cell(color1),
          cell(color2),
          cell(color3),
          cell(color4),
        ],
      ),
    );
  }

  Widget cell(Rx<MaterialColor> color) {
    return Expanded(
      child: Obx(
        () => Container(
          color: color.value,
        ),
      ),
    );
  }
}
