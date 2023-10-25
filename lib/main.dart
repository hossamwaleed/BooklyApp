import 'package:bookly_app1/Core/utilis/ServiceLocator.dart';
import 'package:bookly_app1/Core/utilis/routes.dart';
import 'package:bookly_app1/Features/Home/data/repos/HomeRepoImpl.dart';
import 'package:bookly_app1/Features/Home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly_app1/Features/splash_view/presentation/view/Splash-view.dart';
import 'package:bookly_app1/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create:(context)=> FeaturedBooksCubit(instance.get<HomeRepoImpl>())..fetchFeatureBooks() )
    ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimarycolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: Approutes.route,
      ),
    );
  }
}
