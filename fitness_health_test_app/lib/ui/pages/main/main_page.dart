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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<MainViewModel>(
      create: (context) => _viewModel,
      child: Scaffold(
        body: Container(
          child: Text("Henlo"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list_rounded),
              label: "Report",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Settings",
            ),
          ],
          selectedItemColor: Colors.blue,
          currentIndex: 0,
        ),
      ),
    );
  }
}
