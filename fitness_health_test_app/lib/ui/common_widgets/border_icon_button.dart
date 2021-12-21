import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class BorderIconButton extends StatelessWidget {
  const BorderIconButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.padding = const EdgeInsets.all(Dimens.dimen8),
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Dimens.elevation2,
      color: Colors.grey[50],
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.radius10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(Dimens.radius10),
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
