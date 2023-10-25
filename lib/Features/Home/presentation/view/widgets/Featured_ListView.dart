import 'package:bookly_app1/Features/Home/presentation/view/widgets/Feature_ListViewItem.dart';
import 'package:bookly_app1/Features/Home/presentation/view/widgets/customerrormsg.dart';
import 'package:bookly_app1/Features/Home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksLoading){
          return Center(child: CircularProgressIndicator(),);
        }else if (state is FeaturedBooksSuccess){
          return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: state.listbooks.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  FeaturedListViewItem(img: state.listbooks[index].volumeInfo.imageLinks.thumbnail,);
          }),
    );
        }else if (state is FeaturedBooksFailed){
          return customerrormsg(errmsg: state.msg);
        }else{
          return Text("");
        }
      },
    );
  }
}
