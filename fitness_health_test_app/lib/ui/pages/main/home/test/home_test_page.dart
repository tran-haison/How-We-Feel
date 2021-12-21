import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';
import 'package:fitness_health_test_app/ui/common_widgets/border_icon_button.dart';
import 'package:fitness_health_test_app/ui/common_widgets/main_pages/card_content.dart';
import 'package:fitness_health_test_app/values/constants.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class HomeTestPage extends StatelessWidget {
  const HomeTestPage({
    Key? key,
    required this.fitnessTest,
  }) : super(key: key);

  final FitnessTest fitnessTest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildToolbar(context),
              const Divider(),
              _buildMainContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildToolbar(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 250,
          child: Image.asset(
            Constants.imagePath + fitnessTest.image,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: Dimens.dimen15,
          left: Dimens.dimen15,
          right: Dimens.dimen15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BorderIconButton(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.keyboard_backspace_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildTextName(),
          _buildTextGoal(context),
          const SizedBox(height: Dimens.dimen10),
          CardContent(
            title: S.of(context).fitness_test_description,
            content: fitnessTest.description,
            iconData: Icons.description,
          ),
          const SizedBox(height: Dimens.dimen15),
          CardContent(
            title: S.of(context).fitness_test_disease_analysis,
            content: fitnessTest.disease_analysis,
            iconData: Icons.coronavirus,
          ),
          const SizedBox(height: Dimens.dimen10),
        ],
      ),
    );
  }

  Widget _buildTextName() {
    return Text(
      fitnessTest.name,
      style: TextStyle(
        color: Colors.blue[700],
        fontSize: Dimens.fontSize22,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildTextGoal(BuildContext context) {
    return Text(
      S.of(context).fitness_test_goal + ": " + fitnessTest.goal,
      style: const TextStyle(
        fontSize: Dimens.fontSize14,
        color: Colors.grey,
      ),
    );
  }
}
