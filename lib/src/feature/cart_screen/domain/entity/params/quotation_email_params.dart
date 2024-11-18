import 'package:equatable/equatable.dart';

class QuotationEmailParams extends Equatable{
  final String email;


  const QuotationEmailParams({
    required this.email,
  });

  @override
  List<Object?> get props => [email];
}