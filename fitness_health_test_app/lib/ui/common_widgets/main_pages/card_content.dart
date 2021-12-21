import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.title,
    required this.content,
    required this.iconData,
  }) : super(key: key);

  final String title;
  final String content;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.radius10),
        color: Colors.grey[50],
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dimen15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(iconData),
                const SizedBox(width: Dimens.dimen10),
                _builtTextTitle(),
              ],
            ),
            const SizedBox(height: Dimens.dimen10),
            _buildTextContent(),
          ],
        ),
      ),
    );
  }

  Widget _builtTextTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontSize: Dimens.fontSize16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildTextContent() {
    return Text(
      content,
      style: const TextStyle(
        fontSize: Dimens.fontSize12,
        color: Colors.grey,
      ),
    );
  }
}
