import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

Future<dynamic> showAlertDialog(BuildContext context, Widget dialog) {
  return showDialog(
    context: context,
    builder: (context) => dialog,
  );
}

class BaseAlertDialog extends StatelessWidget {
  const BaseAlertDialog({
    Key? key,
    required this.context,
    required this.title,
    required this.content,
    required this.defaultActionText,
    this.cancelActionText,
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final String content;
  final String defaultActionText;
  final String? cancelActionText;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: _buildDialogChild(),
    );
  }

  Widget _buildDialogChild() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.dimen10,
        horizontal: Dimens.dimen15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(Dimens.radius5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildTextTitle(),
          const SizedBox(height: Dimens.dimen5),
          _buildTextContent(),
          const SizedBox(height: Dimens.dimen15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (cancelActionText != null)
                Expanded(
                  flex: 1,
                  child: _buildCancelActionButton(),
                ),
              if (cancelActionText != null)
                const SizedBox(width: Dimens.dimen15),
              Expanded(
                flex: 1,
                child: _buildDefaultActionButton(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontSize: Dimens.fontSize18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

  Widget _buildTextContent() {
    return Text(
      content,
      style: const TextStyle(
        fontSize: Dimens.fontSize14,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
    );
  }

  Widget _buildCancelActionButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[100],
        minimumSize: const Size.fromHeight(Dimens.buttonHeight30),
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dimen8,
          horizontal: 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dimen5),
        ),
      ),
      onPressed: () => Navigator.of(context).pop(false),
      child: Text(
        cancelActionText!,
        style: const TextStyle(
          fontSize: Dimens.fontSize14,
          fontWeight: FontWeight.normal,
          color: Colors.lightBlue,
        ),
      ),
    );
  }

  Widget _buildDefaultActionButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        minimumSize: const Size.fromHeight(Dimens.buttonHeight30),
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dimen8,
          horizontal: 0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dimen5),
        ),
      ),
      onPressed: () => Navigator.of(context).pop(true),
      child: Text(
        defaultActionText,
        style: const TextStyle(
          fontSize: Dimens.fontSize14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
