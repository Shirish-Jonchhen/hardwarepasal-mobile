import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/helpers/snackbar_helper.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_textfield.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/widgets/app_texts.dart';
import '../cubit/login/login_cubit.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  //for email text field
  final TextEditingController _emailController = TextEditingController();
  String? emailErrorText;
  bool emailError = false;

  bool validateEmail(String text) {
    if (text.isEmpty ||
        !text.endsWith(".com") ||
        !text.contains("@") ||
        text.contains(" ")) {
      setState(() {
        emailError = true;
        emailErrorText = "Invalid Email";
      });
      return false;
    } else {
      setState(() {
        emailError = false;
        emailErrorText = null;
      });
      return true;
    }
  }

  //for password text field
  final TextEditingController _passwordController = TextEditingController();
  String? passwordErrorText;
  bool passwordError = false;

  bool validatePassword(String text) {
    if (text.isEmpty || text.length < 6) {
      setState(() {
        passwordError = true;
        passwordErrorText = "Password must be more than 6 characters";
      });
      return false;
    } else {
      setState(() {
        passwordError = false;
        passwordErrorText = null;
      });
      return true;
    }
  }

  bool isPasswordVisible = false;

  bool rememberMe = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (BuildContext context) => getIt<LoginCubit>(),
      child: Scaffold(
        backgroundColor: AppColor.scaffoldBg,
        body: BlocListener<LoginCubit, LoginState>(
          listener: (BuildContext context, LoginState state) {
            state.maybeWhen(
              orElse: () => Container(),
              success: (message, userModel) {
                SnackBarHelper.showSnackBar(
                  message: message,
                  context: context,
                  // isError: false,
                );

                context.router.replace(const BottomNavigationRoute());
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (String message) {
                SnackBarHelper.showSnackBar(
                  message: message,
                  context: context,
                  isError: true,
                );
              },
              noInternet: () {
                SnackBarHelper.showSnackBar(
                  message: "No Internet Connection",
                  context: context,
                  isError: true,
                );
              },
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.064 * scWidth),
            child: SingleChildScrollView(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text("data"),
                  SizedBox(
                    height: 0.059 * scHeight,
                    width: double.infinity,
                  ),
                  Center(
                    child: Image.asset(
                      AssetsHelper.logo,
                      height: 0.062 * scHeight,
                    ),
                  ),
                  SizedBox(
                    height: 0.059 * scHeight,
                    width: double.infinity,
                  ),
                  Texts(
                    texts: "Login",
                    textStyle: AppStyles.text24PxSemiBold,
                  ),
                  SizedBox(
                    height: 0.029 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Email',
                    controller: _emailController,
                    hintText: 'Enter Email',
                    onChanged: (value) {
                      validateEmail(value);
                    },
                    errorText: emailErrorText,
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  CustomTextField(
                    label: 'Password',
                    controller: _passwordController,
                    hintText: 'Enter Password',
                    obscureText: !isPasswordVisible,
                    onObscureText: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    onChanged: (value) {
                      validatePassword(value);
                    },
                    errorText: passwordErrorText,
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 0.008 * scWidth,
                        ),
                        Texts(
                          texts: "Remember Me",
                          textStyle: AppStyles.text14PxRegular,
                        ),
                        const Spacer(),
                        Texts(
                          texts: "Forgot Password?",
                          textStyle: AppStyles.text14PxRegular
                              .copyWith(color: AppColor.appColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.029 * scHeight,
                  ),

                  // CustomButton(width: double.infinity, horizontal:double.infinity, title: "Login", onPressed: (){}),

                  SizedBox(
                    width: double.infinity,
                    child: BlocBuilder<LoginCubit, LoginState>(
                      builder: (BuildContext context, LoginState state) =>
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
                          if (validateEmail(_emailController.text) &&
                              validatePassword(_passwordController.text)) {
                            context.read<LoginCubit>().login(
                                email: _emailController.text,
                                password: _passwordController.text);
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
                          texts: "Login",
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
                          borderRadius: BorderRadius.circular(0.012 * scHeight),
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
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 0.039 * scHeight,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () =>
                          context.router.push(const RegisterScreenRoute()),
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: AppStyles.text18PxRegular
                              .copyWith(color: AppColor.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Sign Up",
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
