import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/helpers/responsive.dart';
import 'package:flutter/material.dart';
import 'package:admin/models/stats_info_model.dart';
import 'package:get/get.dart';
import '../../../core/config/constants.dart';
import 'feature_info_card.dart';

class StatsCardGrid extends StatelessWidget {
  const StatsCardGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: InfoCardGridView(
            crossAxisCount: size.width < 650 ? 2 : 4,
            childAspectRatio: size.width < 650 ? 1.3 : 1,
          ),
          tablet: const InfoCardGridView(),
          desktop: InfoCardGridView(
            childAspectRatio: size.width < 1400 ? 1.1 : 1.5,
          ),
        ),
      ],
    );
  }
}

class InfoCardGridView extends StatelessWidget {
  const InfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dashboardPanelsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Get.find<NavigationController>()
              .updatePanelView(dashboardPanelsList[index].panelView);
        },
        child: FeatureInfoCard(
          info: dashboardPanelsList[index],
        ),
      ),
    );
  }
}
