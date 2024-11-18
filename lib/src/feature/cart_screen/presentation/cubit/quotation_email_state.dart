part of 'quotation_email_cubit.dart';



@freezed
class QuotationEmailState with _$QuotationEmailState{
  const factory QuotationEmailState.initial() = _Initial;
  const factory QuotationEmailState.loading() = _Loading;
  const factory QuotationEmailState.error({required String message}) = _Error;
  const factory QuotationEmailState.noInternet() = _NoInternet;
  const factory QuotationEmailState.success({required QuotationModel couponSuccess}) = _Success;
}