import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/getcart/Api.dart';
import '../../Repository/ModelClass/GetCartModel.dart';

part 'get_cart_event.dart';
part 'get_cart_state.dart';

class GetCartBloc extends Bloc<GetCartEvent, GetCartState> {
  late GetCartModel getCartModel;
  GetCartApi getCartApi = GetCartApi();
  GetCartBloc() : super(GetCartInitial()) {
    on<FetchGetCart>((event, emit) async{
      emit(GetCartBlocLoading());
      try {
        getCartModel = await getCartApi.getGetCart();
        emit(GetCartBlocLoaded());
      } catch (e) {
        print(e);
        emit(GetCartBlocError());
    }});

  }
}
