import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:admin/features/main/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Row(
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: context.read<MenuAppController>().controlMenu,
              ),
            if (!Responsive.isMobile(context))
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Admin",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Row(
                    children: [
                      Text(
                        "Welcome back",
                        style: theme.textTheme.displayLarge,
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
            // if (!Responsive.isMobile(context))
            //   Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
            // const SearchField(),
            // const HorizontalSpace(40),
            // const NotificationsIconWidget(
            //   notificationsCount: 2,
            // )
          ],
        );
      },
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
        color: secondaryColor,
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
