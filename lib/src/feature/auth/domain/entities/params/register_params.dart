import 'package:equatable/equatable.dart';

class RegisterParams extends Equatable {
  final String firstName;
  final String lastName;
  final String contact;
  final String email;
  final String password;
  final String confirmPassword;

  const RegisterParams({
    required this.firstName,
    required this.lastName,
    required this.contact,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        contact,
        email,
        password,
        confirmPassword,];
}