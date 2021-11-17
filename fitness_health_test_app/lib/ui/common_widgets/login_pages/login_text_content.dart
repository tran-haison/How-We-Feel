import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoginTextContent extends StatelessWidget {
  const LoginTextContent({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: Dimens.fontSize14,
      ),
    );
  }
}
