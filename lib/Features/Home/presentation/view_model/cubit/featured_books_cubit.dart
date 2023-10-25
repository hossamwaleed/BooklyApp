import 'package:bloc/bloc.dart';
import 'package:bookly_app1/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app1/Features/Home/data/repos/HomeRepo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks()async{
    emit(FeaturedBooksLoading());
    var result =await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailed(failure.errmessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });

  }
}
