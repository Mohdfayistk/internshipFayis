

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/removecart/Api.dart';

part 'remove_cart_event.dart';
part 'remove_cart_state.dart';

class RemoveCartBloc extends Bloc<RemoveCartEvent, RemoveCartState> {
  RemoveCartApi removeCartApi =RemoveCartApi();
  RemoveCartBloc() : super(RemoveCartInitial()) {
    on<FetchRemoveCart>((event, emit) async{
      emit(RemoveCartBlocLoading());
      try {
        await removeCartApi.getRemoveCart(event.id);
        emit(RemoveCartBlocLoaded());
      } catch (e) {
        print(e);
        emit(RemoveCartBlocError());
      }
    });
  }
}
