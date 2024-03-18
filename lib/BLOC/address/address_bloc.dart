import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../Repository/API/address/Api.dart';
import '../../Repository/ModelClass/Address.dart';

part 'address_event.dart';

part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  late List<Address> addressModel;
  AddressApi addressApi = AddressApi();

  AddressBloc() : super(AddressInitial()) {
    on<FetchAddress>((event, emit) async {
      emit(AddressBlocLoading());
      try {
        addressModel = await addressApi.getAddress();
        emit(AddressBlocLoaded());
      } catch (e) {
        print(e);
        emit(AddressBlocError());
      }
    });
  }
}
