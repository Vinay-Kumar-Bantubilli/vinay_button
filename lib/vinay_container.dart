import 'package:flutter/material.dart';
import 'package:vinay_container/src/my_container.dart';
import 'package:vinay_container/src/pages/my_button_page.dart';

import 'vinay_container_platform_interface.dart';

class VinayContainer {
  Future<String?> getPlatformVersion() {
    return VinayContainerPlatform.instance.getPlatformVersion();
  }

  Widget getMyContainer({
    required double width,
    required double height,
    required String label,
    required Color color,
  }) {
    return MyContainer(width: width, height: height, label: label, color: color);
  }

  Widget myButton({
    required String label,
    required Color color,
    Widget? targetPage,  // Add targetPage as an optional parameter
  }) {
    return Builder(
      builder: (BuildContext context) {
        return ElevatedButton(
          onPressed: () {
            // Navigate to targetPage if provided, else navigate to NextPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetPage ?? MyButtonPage()),
            );
          },
          child: Text(label),
          style: ElevatedButton.styleFrom(primary: color),
        );
      },
    );
  }
}
