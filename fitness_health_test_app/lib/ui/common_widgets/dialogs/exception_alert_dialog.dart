import 'package:flutter/material.dart';

import 'base_alert_dialog.dart';

class ExceptionAlertDialog extends BaseAlertDialog {
  const ExceptionAlertDialog({
    Key? key,
    required BuildContext context,
    required String exception,
  }) : super(
          key: key,
          context: context,
          title: "ERROR",
          content: exception,
          defaultActionText: "OK",
        );
}
