import 'package:flutter/material.dart';
import 'package:flutter_web_admin/helpers/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        text: "Drivers",
      ),
    );
  }
}