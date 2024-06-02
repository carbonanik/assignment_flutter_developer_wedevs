import 'package:assignment_flutter_developer_wedevs/pages/components/app_bottom_bar.dart';
import 'package:assignment_flutter_developer_wedevs/pages/components/app_floating_action_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: AppFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: AppBottomBar(),
    );
  }
}
