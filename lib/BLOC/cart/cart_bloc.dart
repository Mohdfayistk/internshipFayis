import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/cart/Api.dart';
import '../../Repository/ModelClass/CartModel.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  late CartModel cartModel;
  CartApi cartApi = CartApi();
  CartBloc() : super(CartInitial()) {
    on<FetchCart>((event, emit) async{
      emit(CartBlocLoading());
      try {
        cartModel = await cartApi.getCart(event.varientId,event.quantity);
        emit(CartBlocLoaded());
      } catch (e) {
        print(e);
        emit(CartBlocError());
      }
    });
  }
}
