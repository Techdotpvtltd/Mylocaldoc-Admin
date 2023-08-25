import 'package:admin/controllers/authController.dart';
import 'package:admin/core/extentions/extension.dart';
import 'package:admin/core/values/strings_manager.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:admin/features/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool rememberMe = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode node = FocusNode();

  String _errorEmail = '';
  late TextEditingController _emailController;
  String _errorPassword = '';
  late TextEditingController _passwordController;

  bool isRememberMe = false;
  bool isObscure = true;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
    //dummyValues();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return GetBuilder<AuthController>(
        init: AuthController(),
        initState: (_) {},
        builder: (AuthController authCtrlr) {
          return Scaffold(
            backgroundColor: appColors.black900,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        if (!isMobile)
                          const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 48.0),
                                child: Image.asset(LocalImages.appLogo),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Text(
                                    "Hi, Welcome to MyLocalDoc",
                                    style: theme.textTheme.displayMedium,
                                  ),
                                ),
                              ),
                              const VerticalSpace(20),
                              Text(
                                "Email address",
                                style: theme.textTheme.bodyLarge,
                              ),

                              //
                              CommonTextFieldView(
                                controller: authCtrlr.email,
                                errorText: _errorEmail,
                                labelText: 'Email',
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (String txt) {},
                                textCapitalization: TextCapitalization.none,
                                validator: (String? val) {
                                  if (authCtrlr.email.text.isEmpty) {
                                    return AppStrings.enterEmailAddress;
                                  } else if (authCtrlr.email.text.isEmail) {
                                    return null;
                                  }
                                  return 'Invalid Email';
                                },
                              ),
                              const VerticalSpace(20),
                              Text(
                                "Password",
                                style: theme.textTheme.bodyLarge,
                              ),
                              CommonTextFieldView(
                                controller: authCtrlr.password,
                                errorText: _errorPassword,
                                labelText: 'Password',
                                keyboardType: TextInputType.text,
                                onChanged: (String txt) {},
                                toggleObscure: () {
                                  setState(() => isObscure = !isObscure);
                                },
                                isObscureText: isObscure,
                                validator: (String? val) {
                                  if (val == null || val.isEmpty) {
                                    return AppStrings.enterPassword;
                                  } else if (val.isValidPassword) {
                                    return null;
                                  }
                                  return AppStrings.passwordValidator;
                                },
                              ),
                              const VerticalSpace(20),

                              ThemeButtonLarge(
                                title: 'Sign In',
                                onTap: () async {
                                  authCtrlr.loginUser();
                                },
                              ),
                              const VerticalSpace(30),
                            ],
                          ),
                        ),
                        if (!isMobile)
                          const Expanded(flex: 1, child: SizedBox()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  bool _allValidation() {
    bool isValid = true;
    if (_emailController.text.trim().isEmpty) {
      _errorEmail = StringValues.email_cannot_empty;
      isValid = false;
    } else if (!Validator.validateEmail(_emailController.text.trim())) {
      _errorEmail = StringValues.enter_valid_email;
      isValid = false;
    } else {
      _errorEmail = '';
    }

    if (_passwordController.text.trim().isEmpty) {
      _errorPassword = StringValues.password_cannot_empty;
      isValid = false;
    } else if (_passwordController.text.trim().length < 8) {
      _errorPassword = StringValues.valid_password_login_min_8;
      isValid = false;
    } else {
      _errorPassword = '';
    }
    setState(() {});
    return isValid;
  }
}
