import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoadingAlertDialog extends StatelessWidget {
  const LoadingAlertDialog({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Dimens.radius5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.dimen20,
            horizontal: Dimens.dimen25,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(width: Dimens.dimen20),
              Expanded(
                child: Text(
                  S.of(context).please_wait_for_a_sec,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: Dimens.fontSize14,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
