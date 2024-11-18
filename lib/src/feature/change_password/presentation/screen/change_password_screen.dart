import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/change_password/presentation/cubit/change_password_cubit.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_textfield.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../item_detail_screen/presentation/screen/item_detail_screen.dart';

class ChangePasswordScreenPage extends StatefulWidget {
  const ChangePasswordScreenPage({super.key});

  @override
  State<ChangePasswordScreenPage> createState() =>
      _ChangePasswordScreenPageState();
}

class _ChangePasswordScreenPageState extends State<ChangePasswordScreenPage> {
  //controllers
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  //error texts
  String? _oldPasswordError;
  String? _newPasswordError;
  String? _confirmPasswordError;

  //Obscure bools
  bool _oldPasswordObscure = true;
  bool _newPasswordObscure = true;
  bool _confirmPasswordObscure = true;

  //validations
  bool _validateOldPassword = false;
  bool _validateNewPassword = false;
  bool _validateConfirmPassword = false;

  //validation methods
  bool _validateOldPasswordMethod(String text) {
    if (text.isEmpty || text == null || text.length < 6) {
      setState(() {
        _oldPasswordError = 'Old Password is not valid';
        _validateOldPassword = false;
      });
      return false;
    } else {
      setState(() {
        _oldPasswordError = null;
        _validateOldPassword = true;
      });
      return true;
    }
  }

  bool _validateNewPasswordMethod(String text) {
    if (text.isEmpty || text == null || text.length < 6) {
      setState(() {
        _newPasswordError = 'New Password is not valid';
        _validateNewPassword = false;
        _validateConfirmPasswordMethod(_confirmPasswordController.text);
      });
      return false;
    } else {
      setState(() {
        _newPasswordError = null;
        _validateNewPassword = true;
        _validateConfirmPasswordMethod(_confirmPasswordController.text);
      });
      return true;
    }
  }

  bool _validateConfirmPasswordMethod(String text) {
    if (text != _newPasswordController.text ||
        text.isEmpty ||
        text == null ||
        text.length < 6) {
      setState(() {
        _confirmPasswordError = 'Confirm Password is not valid';
        _validateConfirmPassword = false;
      });
      return false;
    } else {
      setState(() {
        _confirmPasswordError = null;
        _validateConfirmPassword = true;
      });
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.router.pop(),
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
              texts: 'Change Password',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            Image.asset(
              AssetsHelper.cartBtn,
              width: 0.064 * scWidth,
              color: AppColor.black,
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            SizedBox(
              height: 0.019 * scHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 0.033 * scHeight, horizontal: 0.064 * scWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    label: 'Old Password',
                    hintText: 'Enter Old Password',
                    onChanged: (value) => _validateOldPasswordMethod(value),
                    onObscureText: () {
                      setState(() {
                        _oldPasswordObscure = !_oldPasswordObscure;
                      });
                    },
                    errorText: _oldPasswordError,
                    controller: _oldPasswordController,
                    obscureText: _oldPasswordObscure,
                  ),
                  SizedBox(height: 0.019 * scHeight),
                  CustomTextField(
                    label: 'New Password',
                    hintText: 'Enter New Password',
                    onChanged: (value) => _validateNewPasswordMethod(value),
                    onObscureText: () {
                      setState(() {
                        _newPasswordObscure = !_newPasswordObscure;
                      });
                    },
                    errorText: _newPasswordError,
                    controller: _newPasswordController,
                    obscureText: _newPasswordObscure,
                  ),
                  SizedBox(height: 0.019 * scHeight),
                  CustomTextField(
                    label: 'Confirm Password',
                    hintText: 'Re-Enter New Password',
                    onChanged: (value) => _validateConfirmPasswordMethod(value),
                    onObscureText: () {
                      setState(() {
                        _confirmPasswordObscure = !_confirmPasswordObscure;
                      });
                    },
                    errorText: _confirmPasswordError,
                    controller: _confirmPasswordController,
                    obscureText: _confirmPasswordObscure,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.35 * scHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
              child: Column(
                children: [
                  BlocListener<ChangePasswordCubit, ChangePasswordState>(
                    listener: (BuildContext context, ChangePasswordState state) {
                      state.maybeWhen(
                        orElse: () {},
                        success: (message) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Texts(
                                texts: message.message!,
                                textStyle: AppStyles.text14PxRegular,
                              ),
                              backgroundColor: AppColor.successColor,
                            ),
                          );
                          context.router.pop();
                        },
                        error: (message) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Texts(
                                texts: message,
                                textStyle: AppStyles.text14PxRegular,
                              ),
                              backgroundColor: AppColor.errorColor,
                            ),
                          );
                        },
                      );
                    },
                    child: BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
                      builder: (BuildContext context,
                              ChangePasswordState state) =>
                          state.maybeWhen(
                                  orElse: () => false, loading: () => true)
                              ? ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.greyButtonText,
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.019 * scHeight),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(0.012 * scHeight),
                              ),
                            ),
                            child: const Center(
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          )

                      : AppButton(
                          scWidth: scWidth,
                          scHeight: scHeight,
                          title: 'Save',
                          onTap: () {
                            context
                                .read<ChangePasswordCubit>()
                                .changePassword(
                                    oldPassword:
                                        _oldPasswordController.text,
                                    newPassword:
                                        _newPasswordController.text,
                                    confirmPassword:
                                        _confirmPasswordController.text);
                          },
                        ),
                    ),
                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
