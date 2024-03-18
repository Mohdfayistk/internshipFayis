import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/cart/Api.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartApi cartApi = CartApi();

  CartBloc() : super(CartInitial()) {
    on<FetchCart>((event, emit) async {
      emit(CartBlocLoading());
      try {
        await cartApi.getCart(event.varientId, event.quantity);
        emit(CartBlocLoaded());
      } catch (e) {
        print(e);
        emit(CartBlocError());
      }
    });
  }
}
