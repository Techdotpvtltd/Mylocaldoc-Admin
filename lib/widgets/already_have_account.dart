import 'package:admin/exports/common_exports.dart';
import 'package:admin/features/signin/signin_screen.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignInScreen(),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            "Already have an Account? ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const HorizontalSpace(5),
          Text(
            "Login",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
