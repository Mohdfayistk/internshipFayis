part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class FetchSignup extends SignupEvent {
  final String email;
  final String username;
  final String password;

  FetchSignup(
      {required this.username, required this.password, required this.email});
}
