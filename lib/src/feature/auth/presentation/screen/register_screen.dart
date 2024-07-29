import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/helpers/snackbar_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_textfield.dart';
import '../../../../core/widgets/app_texts.dart';
import '../cubit/register/register_cubit.dart';

class RegisterScreenPage extends StatefulWidget {
  const RegisterScreenPage({super.key});

  @override
  State<RegisterScreenPage> createState() => _RegisterScreenPageState();
}

class _RegisterScreenPageState extends State<RegisterScreenPage> {
  //for full name
  final TextEditingController _fullNameController = TextEditingController();
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

  //for email
  final TextEditingController _emailController = TextEditingController();
  String? errorTextEmail;
  bool isEmailValid = false;

  bool validateEmail(String text) {
    if (text.isEmpty ||
        !text.contains("@") ||
        !text.endsWith(".com") ||
        text.contains(" ")) {
      setState(() {
        errorTextEmail = "Email is Invalid";
        isEmailValid = false;
      });
      return false;
    } else {
      setState(() {
        errorTextEmail = null;
        isEmailValid = true;
      });
      return true;
    }
  }

  //for Contact
  final TextEditingController _contactController = TextEditingController();
  String? errorTextContact;
  bool isContactValid = false;

  bool validateContact(String text) {
    if (text.isEmpty || text.length != 10 || text.contains(" ")) {
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

  //for password
  final TextEditingController _passwordController = TextEditingController();
  String? errorTextPassword;
  bool isPasswordValid = false;

  bool isPasswordVisible = false;

  bool validatePassword(String text) {
    if (text.isEmpty || text.length < 6) {
      setState(() {
        errorTextPassword = "Password is Invalid";
        isPasswordValid = false;
        validateConfirmPassword(_confirmPasswordController.text);
      });

      return false;
    } else {
      setState(() {
        errorTextPassword = null;
        isPasswordValid = true;
      });
      validateConfirmPassword(_confirmPasswordController.text);

      return true;
    }
  }

  //for confirm password
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String? errorTextConfirmPassword;
  bool isConfirmPasswordValid = false;

  bool isConfirmPasswordVisible = false;

  bool validateConfirmPassword(String text) {
    if (text != _passwordController.text) {
      setState(() {
        errorTextConfirmPassword = "Password doesn't match";
        isConfirmPasswordValid = false;
      });
      return false;
    } else {
      setState(() {
        errorTextConfirmPassword = null;
        isConfirmPasswordValid = true;
      });
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: AppColor.whiteColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: AppColor.black),
          ),
        ),
        body: BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => Container(),
              success: (response, message) {
                SnackBarHelper.showSnackBar(
                    message: response, context: context);
                context.router.replace(const LoginScreenRoute());
              },
              error: (error) => SnackBarHelper.showSnackBar(
                  message: error, context: context, isError: true),
              loading: () {
                const Center(child: CircularProgressIndicator());
              },
              noInternet: () {
                SnackBarHelper.showSnackBar(
                    message: "No Internet Access",
                    context: context,
                    isError: true);
              },
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.064 * scWidth),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 0.029 * scHeight,
                  ),

                  Texts(
                    texts: "Sign Up",
                    textStyle: AppStyles.text24PxSemiBold,
                  ),
                  SizedBox(
                    height: 0.029 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Full Name',
                    hintText: 'Full Name',
                    errorText: errorTextFullName,
                    controller: _fullNameController,
                    onChanged: (value) {
                      validateFullName(value);
                    },
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Email',
                    hintText: 'Email',
                    errorText: errorTextEmail,
                    controller: _emailController,
                    onChanged: (value) {
                      validateEmail(value);
                    },
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Contact',
                    hintText: 'Contact',
                    errorText: errorTextContact,
                    controller: _contactController,
                    onChanged: (value) {
                      validateContact(value);
                    },
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Password',
                    hintText: 'Password',
                    errorText: errorTextPassword,
                    controller: _passwordController,
                    onChanged: (value) {
                      validatePassword(value);
                    },
                    obscureText: !isPasswordVisible,
                    onObscureText: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Confirm Password',
                    hintText: 'Confirm Password',
                    errorText: errorTextConfirmPassword,
                    controller: _confirmPasswordController,
                    onChanged: (value) {
                      validateConfirmPassword(value);
                    },
                    obscureText: !isConfirmPasswordVisible,
                    onObscureText: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                  ),

                  SizedBox(
                    height: 0.064 * scHeight,
                  ),
                  // CustomButton(width: double.infinity, horizontal:double.infinity, title: "Login", onPressed: (){}),
                  SizedBox(
                    width: double.infinity,
                    child: BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (BuildContext context, RegisterState state) =>
                      (state.maybeWhen(orElse: ()=> false, loading: ()=> true))?
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.greyButtonText,
                          padding:
                          EdgeInsets.symmetric(vertical: 0.019 * scHeight),
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
                          :
                          ElevatedButton(
                        onPressed: () {
                          List<String> nameList =
                              _fullNameController.text.split(" ");
                          String firstName = nameList[0];
                          nameList.removeAt(0);
                          String lastName = nameList.join(" ");
                          print(firstName);
                          print(lastName);
                          if (validateFullName(_fullNameController.text) &&
                              validateEmail(_emailController.text) &&
                              validateContact(_contactController.text) &&
                              validatePassword(_passwordController.text) &&
                              validateConfirmPassword(
                                  _confirmPasswordController.text)) {
                            context.read<RegisterCubit>().register(
                                firstName: firstName,
                                lastName: lastName,
                                contact: _confirmPasswordController.text,
                                email: _emailController.text,
                                password: _passwordController.text,
                                confirmPassword:
                                    _confirmPasswordController.text);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.appColor,
                          padding:
                              EdgeInsets.symmetric(vertical: 0.019 * scHeight),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0.012 * scHeight),
                          ),
                        ),
                        child: Texts(
                          texts: "Sign Up",
                          textStyle: AppStyles.text18PxMedium.copyWith(
                            color: AppColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.039 * scHeight,
                  ),

                  Center(
                    child: Texts(
                      texts: "OR",
                      textStyle: AppStyles.text18PxMedium
                          .copyWith(color: AppColor.textGrey),
                    ),
                  ),
                  SizedBox(
                    height: 0.039 * scHeight,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.whiteColor,
                          padding:
                              EdgeInsets.symmetric(vertical: 0.019 * scHeight),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0.012 * scHeight),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsHelper.googleIcon,
                              height: 0.08 * scWidth,
                            ),
                            SizedBox(
                              width: 0.042 * scWidth,
                            ),
                            Texts(
                              texts: "Login with Google",
                              textStyle: AppStyles.text18PxRegular
                                  .copyWith(color: AppColor.black),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.whiteColor,
                          padding:
                              EdgeInsets.symmetric(vertical: 0.019 * scHeight),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0.012 * scHeight),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsHelper.facebookIcon,
                              height: 0.08 * scWidth,
                            ),
                            SizedBox(
                              width: 0.042 * scWidth,
                            ),
                            Texts(
                                texts: "Login with Facebook",
                                textStyle: AppStyles.text18PxRegular
                                    .copyWith(color: AppColor.black)),
                          ],
                        )),
                  ),

                  SizedBox(
                    height: 0.039 * scHeight,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account?",
                          style: AppStyles.text18PxRegular
                              .copyWith(color: AppColor.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Login",
                              style: AppStyles.text18PxRegular
                                  .copyWith(color: AppColor.appColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
