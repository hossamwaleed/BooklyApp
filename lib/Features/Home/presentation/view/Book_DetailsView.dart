import 'package:bookly_app1/Core/utilis/Styles.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/BookDetailsBody.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/Custoimage.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/CustomAppBarDetailsView.dart';
import 'package:bookly_app1/Features/Home/presentation/view/widgets/RatingItem.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BookDetailsBody());
  }
}
