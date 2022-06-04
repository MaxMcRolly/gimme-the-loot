part of 'page_view_cubit.dart';

@immutable


class PageViewState extends Equatable {
  int currentPageIndex;
  PageViewState({required this.currentPageIndex});
  
  @override
  List<Object?> get props => [currentPageIndex];
  
}
