import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/login/Api.dart';
import '../../Repository/ModelClass/Login.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late Login loginModel;
  LoginApi loginApi = LoginApi();

  LoginBloc() : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async {
      emit(LoginBlocLoading());
      try {
        loginModel = await loginApi.getLogin(event.email, event.password);
        emit(LoginBlocLoaded());
      } catch (e) {
        print(e);
        emit(LoginBlocError());
      }
    });
  }
}
