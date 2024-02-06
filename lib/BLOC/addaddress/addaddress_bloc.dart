import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/addaddress/Api.dart';


part 'addaddress_event.dart';

part 'addaddress_state.dart';

class AddaddressBloc extends Bloc<AddaddressEvent, AddaddressState> {

  AddaddressApi addaddressApi = AddaddressApi();

  AddaddressBloc() : super(AddaddressInitial()) {
    on<FetchAddaddress>((event, emit) async {
      emit(AddaddressBlocLoading());
      try {
         await addaddressApi.getAddaddress(event.fullname,
            event.phonenumber, event.pincode,  event.state, event.city,event.address,event.housenumber,event.road,event.addresstype);
        emit(AddaddressBlocLoaded());
      } catch (e) {
        print(e);
        emit(AddaddressBlocError());
      }
    });
  }
}
