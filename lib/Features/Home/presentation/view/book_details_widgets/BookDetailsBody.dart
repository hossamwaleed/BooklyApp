import 'package:bookly_app1/Core/utilis/Styles.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/Custoimage.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/CustomAppBarDetailsView.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/CustomButton.dart';
import 'package:bookly_app1/Features/Home/presentation/view/book_details_widgets/simialarListViewItem.dart';
import 'package:bookly_app1/Features/Home/presentation/view/widgets/RatingItem.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Custom_AppBarBookDetails(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * .15),
                        child: CustomImage(),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "The Jungle Book",
                        style: Styles.textstyle18,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "RodYard Kipling",
                        style: Styles.textstyle16.copyWith(
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic),
                      ),
                      const RatingItem(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: CustomButton(
                            text: "19.99",
                            textcolor: Colors.black,
                            backgroundColor: Colors.white,
                            borderradius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          )),
                          Expanded(
                              child: CustomButton(
                            text: "19.199",
                            textcolor: Colors.white,
                            backgroundColor: Color(0xffEF8262),
                            borderradius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          )),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: SizedBox(height: 170, child: SimialarListView()),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
