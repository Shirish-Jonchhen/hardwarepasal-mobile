import 'package:equatable/equatable.dart';

class UpdateProfileParams extends Equatable{
  final String? firstName;
  final String? lastName;
  final String? address;
  final String? contact;
  final String? imageUrl;

  const UpdateProfileParams({this.firstName, this.lastName, this.address, this.contact, this.imageUrl});

  @override
  List<Object?> get props => [firstName, lastName, address, contact, imageUrl];
}