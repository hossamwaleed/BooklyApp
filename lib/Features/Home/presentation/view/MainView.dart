import 'package:bookly_app1/Features/Home/presentation/view/widgets/MAinViewBody.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: MainViewBody()),
    );
  }
}
