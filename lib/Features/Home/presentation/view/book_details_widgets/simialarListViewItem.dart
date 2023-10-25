import 'package:bookly_app1/Features/Home/presentation/view/widgets/Feature_ListViewItem.dart';
import 'package:flutter/material.dart';

class SimialarListView extends StatelessWidget {
  const SimialarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  FeaturedListViewItem(img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn1Vjtsf16QdSkRsvVetXwLbZObIBGVU4JhN8Vl4_VqA&s",);
          }),
    );
  }
}
