import 'package:bookly_app1/Core/utilis/assets.dart';
import 'package:bookly_app1/Core/utilis/routes.dart';
import 'package:bookly_app1/Features/Home/presentation/view/MainView.dart';
import 'package:bookly_app1/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class Splash_view_body extends StatefulWidget {
  const Splash_view_body({super.key});

  @override
  State<Splash_view_body> createState() => _Splash_view_bodyState();
}

class _Splash_view_bodyState extends State<Splash_view_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    slidingAnimation();
    gotoMainView();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SlideTransition(
      position: slidinganimation,
      child: Image.asset(AssetsData.logo),
    ));
  }

  void slidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void gotoMainView() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(Approutes.khomeview);
    });
  }
}
