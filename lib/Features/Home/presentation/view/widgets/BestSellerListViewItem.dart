import 'package:bookly_app1/Core/utilis/Styles.dart';
import 'package:bookly_app1/Core/utilis/assets.dart';
import 'package:bookly_app1/Core/utilis/routes.dart';
import 'package:bookly_app1/Features/Home/presentation/view/widgets/RatingItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approutes.kbookdetailsview);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.testimage),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 200,
                          child: const Text(
                            "Harry Potter and The Gobblet of of Fire",
                            style: Styles.textstyle18,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      const Text(
                        "J.K 14",
                        style: Styles.textstyle14,
                      ),
                      const RatingItem()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
