import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.isPassword,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final Icon icon;
  final bool isPassword;
  final ValueChanged<String> onChanged;

  @override
  _LoginTextFormFieldState createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

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
        child: _buildTextFormField(),
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      onChanged: widget.onChanged,
      textAlignVertical: TextAlignVertical.center,
      style: const TextStyle(
        color: Colors.black87,
        fontSize: Dimens.fontSize14,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        icon: widget.icon,
        suffixIcon: widget.isPassword
            ? IconButton(
                splashColor: Colors.transparent,
                icon: Icon(_passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off
                ),
                onPressed: () => setState(() {
                  _passwordVisible = !_passwordVisible;
                }),
              )
            : Visibility(visible: false, child: Container()),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: Dimens.fontSize14,
          fontWeight: FontWeight.normal,
        ),
        border: InputBorder.none,
      ),
      obscureText: widget.isPassword ? !_passwordVisible : widget.isPassword,
      autocorrect: !widget.isPassword,
      enableSuggestions: !widget.isPassword,
    );
  }
}
