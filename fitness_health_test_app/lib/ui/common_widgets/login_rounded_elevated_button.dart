import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoginRoundedElevatedButton extends StatelessWidget {
  const LoginRoundedElevatedButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  final String text;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(Dimens.buttonHeight40),
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dimen10,
          horizontal: 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dimen10),
        ),
      ),
      onPressed: onClick,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: Dimens.fontSize16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
