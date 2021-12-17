import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Coming soon",
        style: TextStyle(
          fontSize: Dimens.fontSize16,
          color: Colors.red,
        ),
      ),
    );
  }
}
