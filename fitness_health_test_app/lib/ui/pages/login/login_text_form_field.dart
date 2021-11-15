import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.icon,
    required this.isPassword,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final Icon icon;
  final bool isPassword;

  @override
  _LoginTextFormFieldState createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.radius10),
        color: Colors.grey[100],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dimen5,
          horizontal: Dimens.dimen15,
        ),
        child: TextFormField(
          controller: widget.controller,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: Dimens.fontSize14,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            icon: widget.icon,
            suffixIcon: widget.isPassword
                ? const Icon(Icons.visibility)
                : Visibility(visible: false, child: Container(),),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: Dimens.fontSize14,
              fontWeight: FontWeight.normal,
            ),
            border: InputBorder.none,
          ),
          obscureText: widget.isPassword,
          autocorrect: !widget.isPassword,
          enableSuggestions: !widget.isPassword,
        ),
      ),
    );
  }
}
