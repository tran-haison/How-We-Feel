import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class ErrorMessageContainer extends StatelessWidget {
  const ErrorMessageContainer({
    Key? key,
    required this.text,
    this.image = "",
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          Text(
            text,
            style: const TextStyle(
              fontSize: Dimens.fontSize16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
