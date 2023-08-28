import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/stats_card_grid.dart';
import 'package:flutter/material.dart';

class DashBoardWidgets extends StatelessWidget {
  const DashBoardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const StatsCardGrid(),
                  const SizedBox(height: defaultPadding),
                  // if mobile add a padding
                  if (Responsive.isMobile(context))
                    const SizedBox(height: defaultPadding),
                ],
              ),
            ),
            if (!Responsive.isMobile(context))
              const SizedBox(width: defaultPadding),
          ],
        ),
      ],
    );
  }
}
