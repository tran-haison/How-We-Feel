import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/services/data/models/fitness_test.dart';
import 'package:fitness_health_test_app/ui/common_widgets/text_heading.dart';
import 'package:fitness_health_test_app/ui/pages/main/home/test/home_test_page.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/view_models/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late MainViewModel _viewModel;

  @override
  void initState() {
    _viewModel = Provider.of<MainViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dimen10,
          horizontal: Dimens.dimen15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextHeading(text: S.of(context).main_home_fitness_test),
            const SizedBox(height: Dimens.dimen10),
            _buildListViewFitnessTest(),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewFitnessTest() {
    return FutureBuilder<List<FitnessTest>>(
      future: _viewModel.getFitnessTestList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final fitnessTestList = snapshot.data;
          if (fitnessTestList != null && fitnessTestList.isNotEmpty) {
            return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: fitnessTestList.length,
              itemBuilder: (_, index) {
                return _buildItemFitnessTest(fitnessTestList[index]);
              },
              separatorBuilder: (_, __) => const SizedBox(height: Dimens.dimen10),
            );
          }
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildItemFitnessTest(FitnessTest fitnessTest) {
    return Card(
      color: Colors.grey[100],
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.radius5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(Dimens.radius5),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => HomeTestPage(fitnessTest: fitnessTest),
          ));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.dimen10,
            horizontal: Dimens.dimen15,
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.fitness_center_rounded,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 35,
                  child: VerticalDivider(
                    color: Colors.grey,
                    width: Dimens.dimen20,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        fitnessTest.name,
                        style: const TextStyle(
                          fontSize: Dimens.fontSize14,
                          fontWeight: FontWeight.w500,
                          height: Dimens.lineHeight1_2,
                        ),
                      ),
                      Text(
                        fitnessTest.goal,
                        style: const TextStyle(
                          fontSize: Dimens.fontSize12,
                          color: Colors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: Dimens.dimen10),
                const Icon(
                  Icons.arrow_right_alt_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
