
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gimme_the_loot/imports.dart';
import 'package:meta/meta.dart';

part 'page_view_state.dart';

class PageViewCubit extends Cubit<PageViewState> {
  int currentPageIndex;
  PageViewCubit({required this.currentPageIndex}) : super(PageViewState(currentPageIndex: currentPageIndex,));

  changeCurrentPageIndex({required pageIndex}){
    emit(PageViewState(currentPageIndex: currentPageIndex));
  }
}
