import 'package:admin/controllers/authController.dart';
import 'package:admin/core/extensions/extension.dart';
import 'package:admin/core/theme/themes.dart';
import 'package:admin/core/values/strings_manager.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isDarkMode = false;
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

    // dummyValues();
  }

  dummyValues() {
    setState(() {
      _emailController.text = "admin@mylocaldoc.com";
      _passwordController.text = "#123@Dev";
    });
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
            backgroundColor: AppTheme.scaffoldBackgroundColor,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          child: Row(
                            children: [
                              if (!isMobile)
                                const Expanded(flex: 1, child: SizedBox()),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    margin: const EdgeInsets.only(top: 50),
                                    decoration: BoxDecoration(
                                      color: AppTheme.isLightMode
                                          ? Colors.white
                                          : const Color(0xFF312D4B),
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: const [
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(58, 53, 65, 0.2),
                                          blurRadius: 1,
                                          offset: Offset(0, 2),
                                        ),
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(58, 53, 65, 0.14),
                                          blurRadius: 1,
                                          offset: Offset(0, 1),
                                        ),
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(58, 53, 65, 0.12),
                                          blurRadius: 3,
                                          offset: Offset(0, 1),
                                        ),
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(58, 53, 65, 0.1),
                                          blurRadius: 10,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 48.0),
                                          child:
                                              Image.asset(LocalImages.appLogo),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 40),
                                            child: Text(
                                              "Hi, Welcome to MyLocalDoc",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                            ),
                                          ),
                                        ),
                                        const VerticalSpace(20),
                                        CommonTextFieldView(
                                          controller: _emailController,
                                          errorText: _errorEmail,
                                          labelText: 'Email',
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          onChanged: (String txt) {},
                                          textCapitalization:
                                              TextCapitalization.none,
                                          validator: (String? val) {
                                            if (_emailController.text.isEmpty) {
                                              return AppStrings
                                                  .enterEmailAddress;
                                            } else if (_emailController
                                                .text.isEmail) {
                                              return null;
                                            }
                                            return 'Invalid Email';
                                          },
                                        ),
                                        const VerticalSpace(20),
                                        CommonTextFieldView(
                                          controller: _passwordController,
                                          errorText: _errorPassword,
                                          labelText: 'Password',
                                          keyboardType: TextInputType.text,
                                          onChanged: (String txt) {},
                                          toggleObscure: () {
                                            setState(
                                                () => isObscure = !isObscure);
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
                                            if (_allValidation()) {
                                              authCtrlr.loginUser(
                                                email: _emailController.text
                                                    .trim(),
                                                password: _passwordController
                                                    .text
                                                    .trim(),
                                              );
                                            }
                                          },
                                        ),
                                        const VerticalSpace(30),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (!isMobile)
                                const Expanded(flex: 1, child: SizedBox()),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 30,
                  child: LightDarkThemeSwitchButton(),
                ),
              ],
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
