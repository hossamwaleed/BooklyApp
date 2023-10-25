import 'package:bookly_app1/Features/Home/presentation/view/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        });
  }
}
