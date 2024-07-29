import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/helpers/storage_helper.dart';
import '../../../auth/data/models/user_model.dart';
import '../../../profile_screen/presntation/cubit/user_details_cubit.dart';
import '../../data/model/update_user_model/update_user_model.dart';
import '../../domin/entity/params/update_profile_params.dart';
import '../../domin/entity/usecase/update_profile_usecase.dart';

part 'update_profile_cubit.freezed.dart';

part 'update_profile_state.dart';


@injectable
class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final UpdateProfileUsecase _updateProfileUsecase;
  final UserDetailsCubit _userDetailsCubit;

  UpdateProfileCubit(this._updateProfileUsecase, this. _userDetailsCubit)
      : super(UpdateProfileState.initial());

  void updateProfile({
    String? firstName,
    String? lastName,
    String? address,
    String? contact,
    String? imageUrl,
  }) async {
    print('ergfknerpjngeprijgnpreitnjeiprnjeirnjnjietnjietnj');
    emit(UpdateProfileState.loading());
    final response = await _updateProfileUsecase.call(
      UpdateProfileParams(
        firstName: firstName,
        lastName: lastName,
        address: address,
        contact: contact,
        imageUrl: imageUrl,
      ),
    );
    emit(response.fold(
      (l) => l.when(
        serverError: (message) => UpdateProfileState.error(message: message),
        noInternet: () => const UpdateProfileState.noInternet(),
      ),
      (r){
        FlutterSecureStorage storage = const FlutterSecureStorage();
        UserDetails user = r.data!.data!.userDetails!;
        UserDetails updatedUser;
        StorageHelper(storage).getUserData().then((value) {
          updatedUser = UserDetails(
            first_name: r.data!.data!.userDetails!.first_name,
            last_name: r.data!.data!.userDetails!.last_name,
            contact: r.data!.data!.userDetails!.contact,
            email: value.email,
            address: r.data!.data!.userDetails!.address,
            image: r.data!.data!.userDetails!.image,
            dob: r.data!.data!.userDetails!.dob,
            gender: r.data!.data!.userDetails!.gender,
            user_id: r.data!.data!.userDetails!.user_id,
          );
          StorageHelper(storage).saveUserData(model:updatedUser).then((value) {
            print("================================");
            print("================================");
            _userDetailsCubit.getUserDetails();
          });
        });
        return UpdateProfileState.success(data: r);
        },
    ));
  }
}
