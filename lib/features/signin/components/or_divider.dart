import 'package:admin/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: theme.textTheme.titleSmall!
                .copyWith(color: appColors.blueGray300),
          ),
        ),
        buildDivider(),
      ],
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Colors.grey,
        height: 2.5,
      ),
    );
  }
}
