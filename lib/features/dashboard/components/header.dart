import 'package:admin/controllers/authController.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final AuthController authController = Get.find<AuthController>();
  final MenuAppController menuController = Get.find<MenuAppController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: menuController.controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            // color: Colors.amber,
            // width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi Admin",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: LightDarkThemeSwitchButton(),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            authController.logout(); // Call the logout function
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.logout, color: Colors.white),
                              SizedBox(width: 8),
                              Text('Logout',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Image.asset("assets/icons/hand-icon.png"),
                  ],
                ),
                // Text(
                //   state.title,
                //   style: theme.textTheme.headlineSmall!
                //       .copyWith(color: appColors.blueGray300),
                // ),
              ],
            ),
          ),
        // if (!Responsive.isMobile(context))
        //   Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        // const SearchField(),
        // const HorizontalSpace(40),
        // const NotificationsIconWidget(
        //   notificationsCount: 2,
        // )
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Angelina Jolie"),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  String _errorSearchInput = '';
  late TextEditingController _searchController;

  bool isRememberMe = false;
  bool isObscure = true;

  @override
  void initState() {
    _searchController = TextEditingController();

    super.initState();
    //dummyValues();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchTextField(
      controller: _searchController,
      errorText: _errorSearchInput,
      labelText: 'Search',
      keyboardType: TextInputType.text,
      onChanged: (String txt) {},
    );
  }

  bool _allValidation() {
    bool isValid = true;

    // First Name Validation
    if (_searchController.text.trim().isEmpty) {
      _errorSearchInput = StringValues.full_name_cannot_empty;
      isValid = false;
    } else {
      _errorSearchInput = '';
    }

    setState(() {});
    return isValid;
  }
}
