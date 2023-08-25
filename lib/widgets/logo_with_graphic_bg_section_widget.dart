import 'package:admin/core/values/local_images.dart';
import 'package:flutter/material.dart';

class LogoWithGraphicBgSectionWidget extends StatelessWidget {
  const LogoWithGraphicBgSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(LocalImages.loginBG),
          fit: BoxFit.fill,
        ),
      ),
      child: Image.asset(LocalImages.vybeLogo),
    );
  }
}
