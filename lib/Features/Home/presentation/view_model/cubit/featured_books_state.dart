part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksFailed extends FeaturedBooksState {
  final String msg;


  FeaturedBooksFailed(this.msg);}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel>listbooks;
  FeaturedBooksSuccess(this.listbooks);
}
