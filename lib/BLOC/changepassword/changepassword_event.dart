part of 'changepassword_bloc.dart';

@immutable
abstract class ChangePasswordEvent {}
class FetchChangePassword extends ChangePasswordEvent {
  final String oldPass;

  final String newPass;


  FetchChangePassword(
      { required this.oldPass, required this.newPass,});
}
