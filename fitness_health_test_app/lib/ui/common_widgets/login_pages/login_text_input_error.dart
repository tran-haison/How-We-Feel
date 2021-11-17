import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoginTextInputError extends StatelessWidget {
  const LoginTextInputError({
    Key? key,
    required this.streamInput,
    required this.errorText,
  }) : super(key: key);

  final Stream<bool> streamInput;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: streamInput,
      builder: (context, snapshot) {
        final isTextValid = snapshot.data;
        if (isTextValid != null) {
          if (!isTextValid) {
            return Column(
              children: [
                const SizedBox(height: Dimens.dimen5),
                Text(
                  errorText,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: Dimens.fontSize12,
                  ),
                ),
              ],
            );
          }
        }
        return const SizedBox(height: 0, width: 0);
      },
    );
  }
}
