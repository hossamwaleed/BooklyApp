import 'package:bookly_app1/Core/utilis/Styles.dart';
import 'package:bookly_app1/Features/Home/presentation/view/widgets/BestSellerListView.dart';

import 'package:bookly_app1/Features/Home/presentation/view/widgets/BestSellerListViewItem.dart';
import 'package:bookly_app1/Features/Home/presentation/view/widgets/Custom_App_Bar.dart';

import 'package:bookly_app1/Features/Home/presentation/view/widgets/Featured_ListView.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_AppBar(),
              FeaturedListView(),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 12),
                child: Text(
                  "Best Seller",
                  style: Styles.textstyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
