import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/brand/Api.dart';
import '../../Repository/ModelClass/Brand.dart';

part 'brand_event.dart';

part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  late List<Brand> brandModel;
  BrandApi brandApi = BrandApi();

  BrandBloc() : super(BrandInitial()) {
    on<FetchBrand>((event, emit) async {
      emit(BrandBlocLoading());
      try {
        brandModel = await brandApi.getBrand();
        emit(BrandBlocLoaded());
      } catch (e) {
        print(e);
        emit(BrandBlocError());
      }
    });
  }
}
