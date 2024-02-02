import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/category/Api.dart';
import '../../Repository/ModelClass/Category.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  late List<Category> categoryModel;
  CategoryApi categoryApi = CategoryApi();
  CategoryBloc() : super(CategoryInitial()) {
    on<FetchCategory>((event, emit) async{
      emit(CategoryBlocLoading());
      try {
        categoryModel = await categoryApi.getCategory();
        emit(CategoryBlocLoaded());
      } catch (e) {
        print(e);
        emit(CategoryBlocError());
    }});
  }
}
