part of 'category_bloc.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryBlocLoading extends CategoryState {}

class CategoryBlocLoaded extends CategoryState {}

class CategoryBlocError extends CategoryState {}
