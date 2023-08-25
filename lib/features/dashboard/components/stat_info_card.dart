import 'package:admin/core/models/stats_info_model.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/widgets/rounded_bg_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatInfoCard extends StatelessWidget {
  const StatInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final StatsInfoModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedBgIconWidget(
                iconColor: info.iconColor!,
                iconPath: info.svgSrc!,
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         SvgPicture.asset(
              //           (info.isIncremented!)
              //               ? LocalImages.imgArrowUp
              //               : LocalImages.imgArrowDown,
              //           colorFilter: ColorFilter.mode(
              //             info.iconColor ?? Colors.black,
              //             BlendMode.srcIn,
              //           ),
              //         ),
              //         const SizedBox(width: 5),
              //         Text(
              //           "${info.percentage!}%",
              //           style: theme.textTheme.labelMedium!.copyWith(
              //             color: info.iconColor,
              //             fontFamily: 'Lato',
              //             fontWeight: FontWeight.w700,
              //             fontSize: 14,
              //           ),
              //         )
              //       ],
              //     ),
              //     Text(
              //       info.statsSpan!,
              //       style: theme.textTheme.labelLarge!.copyWith(
              //         color: appColors.blueGray300,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
          Text(
            info.title!,
            style: theme.textTheme.displaySmall!.copyWith(
              fontSize: 32,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            info.value!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyle.text14LatoBoldBlueGrey,
          ),
        ],
      ),
    );
  }
}
