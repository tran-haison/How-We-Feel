import 'package:fitness_health_test_app/generated/l10n.dart';
import 'package:fitness_health_test_app/ui/common_widgets/error_message_container.dart';
import 'package:fitness_health_test_app/ui/pages/main/home/home_page.dart';
import 'package:fitness_health_test_app/ui/pages/main/profile/profile_page.dart';
import 'package:fitness_health_test_app/ui/pages/main/report/report_page.dart';
import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:fitness_health_test_app/values/fonts.dart';
import 'package:fitness_health_test_app/view_models/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late MainViewModel _viewModel;

  @override
  void initState() {
    _viewModel = MainViewModel();
    _viewModel.setMainPageItem(0);
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<MainViewModel>(
      create: (context) => _viewModel,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: Dimens.elevation0_5,
          backgroundColor: Colors.white,
          title: Text(S.of(context).app_name),
          titleTextStyle: const TextStyle(
            fontFamily: Fonts.poppins,
            fontSize: Dimens.fontSize20,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              onPressed: () {
                // TODO: open settings
              },
              icon: const Icon(Icons.settings_rounded),
            ),
          ],
        ),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return StreamBuilder<int>(
      stream: _viewModel.mainPageItemStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final pageItemIndex = snapshot.data;
          if (pageItemIndex == null) {
            return ErrorMessageContainer(text: S.of(context).error_general);
          }
          return _buildPageItem(pageItemIndex);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildPageItem(int pageItemIndex) {
    switch (pageItemIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const ReportPage();
      case 2:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }

  Widget _buildBottomNavigationBar() {
    return StreamBuilder<int>(
      stream: _viewModel.mainPageItemStream,
      builder: (context, snapshot) {
        final pageItemIndex = snapshot.data;
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          currentIndex: pageItemIndex ?? 0,
          onTap: _viewModel.onPageItemSelected,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_rounded),
              label: S.of(context).main_bottom_nav_bar_home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.view_list_rounded),
              label: S.of(context).main_bottom_nav_bar_report,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.manage_accounts_rounded),
              label: S.of(context).main_bottom_nav_bar_profile,
            ),
          ],
        );
      },
    );
  }
}
