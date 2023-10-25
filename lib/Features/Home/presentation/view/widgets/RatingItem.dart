import 'package:bookly_app1/Core/utilis/Styles.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          "19.99E",
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
        Text(
          "4.8",
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const Opacity(
            opacity: .5,
            child: Text(
              "(4628)",
              style: Styles.textstyle14,
            ))
      ],
    );
  }
}
