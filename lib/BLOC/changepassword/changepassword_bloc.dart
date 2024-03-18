import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/changepassword/Api.dart';
import '../../Repository/ModelClass/ChangePassword.dart';

part 'changepassword_event.dart';

part 'changepassword_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  late ChangePassword changepasswordModel;
  ChangePasswordApi loginApi = ChangePasswordApi();

  ChangePasswordBloc() : super(ChangePasswordInitial()) {
    on<FetchChangePassword>((event, emit) async {
      emit(ChangePasswordLoading());
      try {
        changepasswordModel =
            await loginApi.getChangePassword(event.oldPass, event.newPass);
        emit(ChangePasswordLoaded());
      } catch (e) {
        print(e);
        emit(ChangePasswordError());
      }
    });
  }
}
