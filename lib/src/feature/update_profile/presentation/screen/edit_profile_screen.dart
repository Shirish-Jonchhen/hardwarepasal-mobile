import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/helpers/string_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/widgets/app_textfield.dart';
import 'package:hardwarepasal/src/feature/profile_screen/presntation/cubit/user_details_cubit.dart';
import 'package:hardwarepasal/src/feature/update_profile/presentation/cubit/update_profile_cubit.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/snackbar_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../item_detail_screen/presentation/screen/item_detail_screen.dart';

class EditProfileScreenPage extends StatefulWidget {
  const EditProfileScreenPage({super.key});

  @override
  State<EditProfileScreenPage> createState() => _EditProfileScreenPageState();
}

class _EditProfileScreenPageState extends State<EditProfileScreenPage> {
  final TextEditingController _nameController = TextEditingController();
  String? errorTextFullName;
  bool isFullNameValid = false;
  bool validateFullName(String text) {
    if (text.isEmpty || text.split(" ").length < 2 || text.split(" ")[1].isEmpty) {
      setState(() {
        errorTextFullName = "Full Name is required";
        isFullNameValid = false;
      });
      return false;
    } else {
      setState(() {
        errorTextFullName = null;
        isFullNameValid = true;
      });
      return true;
    }
  }


  final TextEditingController _phoneController = TextEditingController();
  String? errorTextContact;
  bool isContactValid = false;

  bool validateContact(String text) {
    if ((text.isNotEmpty && text.length != 10) || text.contains(" ")) {
      setState(() {
        errorTextContact = "Contact is Invalid";
        isContactValid = false;
      });
      return false;
    } else {
      setState(() {
        errorTextContact = null;
        isContactValid = true;
      });
      return true;
    }
  }


  final TextEditingController _emailController = TextEditingController();


  final TextEditingController _addressController = TextEditingController();

  final ImagePicker _picker = ImagePicker();


  @override
  void initState() {
    context.read<UserDetailsCubit>().getUserDetails();
    super.initState();
  }

  String editedPhoto = '';

  void pickImage(){
    _picker
        .pickImage(source: ImageSource.gallery, imageQuality: 70)
        .then((img) {
      if (img != null) {
        setState(() {
          editedPhoto = img.path;
        });
      }
    }).catchError((error) {
      print(error);
      SnackBarHelper.showSnackBar(context: context, message: "Failed to load!",isError: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=> context.router.pop(),
          child: Padding(
            padding: EdgeInsets.only(left: 0.042 * scWidth),
            child: Image.asset(
              AssetsHelper.backBtn,
              color: AppColor.black,
            ),
          ),
        ),
        leadingWidth: 0.12 * scWidth,
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Texts(
              texts: 'Edit Profile',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            Image.asset(
              AssetsHelper.cartBtn,
              width: 0.064 * scWidth,
              color: AppColor.black,
            ),
            // SizedBox(
            //   width: 0.026 * scWidth,
            // ),
            // Image.asset(
            //   AssetsHelper.notificationBtn,
            //   width: 0.064 * scWidth,
            //   color: AppColor.black,
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<UserDetailsCubit, UserDetailsState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (data) {
                _nameController.text =
                    '${data.data!.first_name!} ${data.data!.last_name!}';
                _phoneController.text = data.data!.contact!;
                _emailController.text = data.data!.email!;
                _addressController.text = data.data!.address!;
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              error: (message) => Center(
                child: Texts(
                  texts: message,
                  textStyle: AppStyles.text16PxRegular.copyWith(
                    color: AppColor.errorColor
                  ),
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              noInternet: () => Center(
                child: Texts(
                  texts: 'No Internet',
                  textStyle: AppStyles.text16PxRegular.copyWith(
                    color: AppColor.errorColor,
                  ),
                ),
              ),
              initial: () => const SizedBox(),
              success: (data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: AppColor.lightGrey,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0.015 * scWidth),
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              texts:  '${data.data!.first_name!} ${data.data!.last_name!}',
                              textStyle: AppStyles.text16PxRegular.copyWith(
                                color: AppColor.textGreyColor,
                              ),
                            ),
                            Texts(
                              texts: data.data!.email!,
                              textStyle: AppStyles.text14PxRegular.copyWith(
                                color: AppColor.greyButtonText,
                              ),
                            ),
                          ],
                        ),
                        leading: Container(
                          width: 0.14 * scWidth,
                          height: 0.14 * scWidth,
                          decoration: BoxDecoration(
                            color: AppColor.lightGrey,
                            shape: BoxShape.circle,
                            image: (editedPhoto.isNotEmpty && editedPhoto != null)?
                            DecorationImage(
                              image: FileImage(File(editedPhoto)),
                              fit: BoxFit.cover,
                            ):
                            (data.data!.image != null && data.data!.image!.isNotEmpty)?
                            DecorationImage(
                              image: NetworkImage(
                                  '${StringHelper.userImageBastUrl}${data.data!.image!}'),
                              fit: BoxFit.cover,
                            ):
                            const DecorationImage(
                              image: AssetImage(AssetsHelper.profileIcon),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        trailing: InkWell(
                          onTap: pickImage,
                          child: Container(
                              width: 0.08 * scWidth,
                              height: 0.08 * scWidth,
                              decoration: BoxDecoration(
                                color: AppColor.appColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.edit_outlined,
                                color: AppColor.appColor,
                              )),
                        ),
                      ),
                    ),
                    const Divider(
                      color: AppColor.lightGrey,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 0.019 * scHeight, horizontal: 0.064 * scWidth),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(
                            label: 'Full Name',
                            hintText: 'Enter Full Name',
                            errorText: errorTextFullName,
                            onChanged: (value) => validateFullName(value),
                            controller: _nameController,

                          ),
                          SizedBox(height: 0.019 * scHeight),
                          CustomTextField(
                            label: 'Phone Number',
                            onChanged: (value) => validateContact(value),
                            errorText: errorTextContact,
                            hintText: 'Enter Phone Number',
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: 0.019 * scHeight),
                          CustomTextField(
                            label: 'Email',
                            hintText: 'Enter Email',
                            controller: _emailController,
                            enabled: false,
                          ),

                          SizedBox(height: 0.019 * scHeight),
                          CustomTextField(
                            label: 'Address',
                            hintText: 'Enter Address',
                            controller: _addressController,
                          ),
                          SizedBox(height: 0.019 * scHeight),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.24 * scHeight,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                      child: Column(
                        children: [
                          AppButton(
                              scWidth: scWidth,
                              scHeight: scHeight,
                              title: 'Update Profile',
                              onTap: () {
                                validateFullName(_nameController.text);
                                validateContact(_phoneController.text);

                                if (isFullNameValid && isContactValid) {
                                   context.read<UpdateProfileCubit>().updateProfile(
                                      firstName: _nameController.text.split(" ")[0],
                                      lastName: _nameController.text.split(" ").skip(1).join(" "),
                                      address: _addressController.text,
                                      contact: _phoneController.text,
                                      imageUrl: (editedPhoto.isNotEmpty && editedPhoto != null) ? editedPhoto : "${StringHelper.userImageBastUrl}${data.data!.image!}",
                                     context: context,
                                  );
                                }
                              }),
                          SizedBox(height: 0.014 * scHeight),
                          AppButton(
                            scWidth: scWidth,
                            scHeight: scHeight,
                            title: 'Cancel',
                            onTap: () => context.router.pop(),
                            hollow: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
