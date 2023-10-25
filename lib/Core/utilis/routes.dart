import 'package:bookly_app1/Features/Home/presentation/view/Book_DetailsView.dart';
import 'package:bookly_app1/Features/Home/presentation/view/MainView.dart';
import 'package:bookly_app1/Features/splash_view/presentation/view/Splash-view.dart';
import 'package:go_router/go_router.dart';

abstract class Approutes {
  static const khomeview = "/homeview";
  static const kbookdetailsview = "/bookdetailsview";
  static final route = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => Splash_View(),
    ),
    GoRoute(
      path: khomeview,
      builder: (context, state) => MainView(),
    ),
    GoRoute(
      path: "/bookdetailsview",
      builder: (context, state) => BookDetailsView(),
    ),
  ]);
}
