import 'dart:math';

import 'package:admin/core/helpers/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartSample1 extends StatefulWidget {
  ScatterChartSample1({super.key});

  final blue1 = ChartsColors.contentColorBlue.withOpacity(0.5);
  final blue2 = ChartsColors.contentColorBlue;

  @override
  State<StatefulWidget> createState() => ScatterChartSample1State();
}

class ScatterChartSample1State extends State<ScatterChartSample1> {
  final maxX = 50.0;
  final maxY = 50.0;
  final radius = 8.0;

  bool showFlutter = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showFlutter = !showFlutter;
        });
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: ScatterChart(
          ScatterChartData(
            scatterSpots: showFlutter ? flutterLogoData() : randomData(),
            minX: 0,
            maxX: maxX,
            minY: 0,
            maxY: maxY,
            borderData: FlBorderData(
              show: false,
            ),
            gridData: const FlGridData(
              show: false,
            ),
            titlesData: const FlTitlesData(
              show: false,
            ),
            scatterTouchData: ScatterTouchData(
              enabled: false,
            ),
          ),
          swapAnimationDuration: const Duration(milliseconds: 600),
          swapAnimationCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  List<ScatterSpot> flutterLogoData() {
    return [
      /// section 1
      ScatterSpot(20, 14.5, color: widget.blue1, radius: radius),
      ScatterSpot(22, 16.5, color: widget.blue1, radius: radius),
      ScatterSpot(24, 18.5, color: widget.blue1, radius: radius),

      ScatterSpot(22, 12.5, color: widget.blue1, radius: radius),
      ScatterSpot(24, 14.5, color: widget.blue1, radius: radius),
      ScatterSpot(26, 16.5, color: widget.blue1, radius: radius),

      ScatterSpot(24, 10.5, color: widget.blue1, radius: radius),
      ScatterSpot(26, 12.5, color: widget.blue1, radius: radius),
      ScatterSpot(28, 14.5, color: widget.blue1, radius: radius),

      ScatterSpot(26, 8.5, color: widget.blue1, radius: radius),
      ScatterSpot(28, 10.5, color: widget.blue1, radius: radius),
      ScatterSpot(30, 12.5, color: widget.blue1, radius: radius),

      ScatterSpot(28, 6.5, color: widget.blue1, radius: radius),
      ScatterSpot(30, 8.5, color: widget.blue1, radius: radius),
      ScatterSpot(32, 10.5, color: widget.blue1, radius: radius),

      ScatterSpot(30, 4.5, color: widget.blue1, radius: radius),
      ScatterSpot(32, 6.5, color: widget.blue1, radius: radius),
      ScatterSpot(34, 8.5, color: widget.blue1, radius: radius),

      ScatterSpot(34, 4.5, color: widget.blue1, radius: radius),
      ScatterSpot(36, 6.5, color: widget.blue1, radius: radius),

      ScatterSpot(38, 4.5, color: widget.blue1, radius: radius),

      /// section 2
      ScatterSpot(20, 14.5, color: widget.blue2, radius: radius),
      ScatterSpot(22, 12.5, color: widget.blue2, radius: radius),
      ScatterSpot(24, 10.5, color: widget.blue2, radius: radius),

      ScatterSpot(22, 16.5, color: widget.blue2, radius: radius),
      ScatterSpot(24, 14.5, color: widget.blue2, radius: radius),
      ScatterSpot(26, 12.5, color: widget.blue2, radius: radius),

      ScatterSpot(24, 18.5, color: widget.blue2, radius: radius),
      ScatterSpot(26, 16.5, color: widget.blue2, radius: radius),
      ScatterSpot(28, 14.5, color: widget.blue2, radius: radius),

      ScatterSpot(26, 20.5, color: widget.blue2, radius: radius),
      ScatterSpot(28, 18.5, color: widget.blue2, radius: radius),
      ScatterSpot(30, 16.5, color: widget.blue2, radius: radius),

      ScatterSpot(28, 22.5, color: widget.blue2, radius: radius),
      ScatterSpot(30, 20.5, color: widget.blue2, radius: radius),
      ScatterSpot(32, 18.5, color: widget.blue2, radius: radius),

      ScatterSpot(30, 24.5, color: widget.blue2, radius: radius),
      ScatterSpot(32, 22.5, color: widget.blue2, radius: radius),
      ScatterSpot(34, 20.5, color: widget.blue2, radius: radius),

      ScatterSpot(34, 24.5, color: widget.blue2, radius: radius),
      ScatterSpot(36, 22.5, color: widget.blue2, radius: radius),

      ScatterSpot(38, 24.5, color: widget.blue2, radius: radius),

      /// section 3
      ScatterSpot(10, 25, color: widget.blue2, radius: radius),
      ScatterSpot(12, 23, color: widget.blue2, radius: radius),
      ScatterSpot(14, 21, color: widget.blue2, radius: radius),

      ScatterSpot(12, 27, color: widget.blue2, radius: radius),
      ScatterSpot(14, 25, color: widget.blue2, radius: radius),
      ScatterSpot(16, 23, color: widget.blue2, radius: radius),

      ScatterSpot(14, 29, color: widget.blue2, radius: radius),
      ScatterSpot(16, 27, color: widget.blue2, radius: radius),
      ScatterSpot(18, 25, color: widget.blue2, radius: radius),

      ScatterSpot(16, 31, color: widget.blue2, radius: radius),
      ScatterSpot(18, 29, color: widget.blue2, radius: radius),
      ScatterSpot(20, 27, color: widget.blue2, radius: radius),

      ScatterSpot(18, 33, color: widget.blue2, radius: radius),
      ScatterSpot(20, 31, color: widget.blue2, radius: radius),
      ScatterSpot(22, 29, color: widget.blue2, radius: radius),

      ScatterSpot(20, 35, color: widget.blue2, radius: radius),
      ScatterSpot(22, 33, color: widget.blue2, radius: radius),
      ScatterSpot(24, 31, color: widget.blue2, radius: radius),

      ScatterSpot(22, 37, color: widget.blue2, radius: radius),
      ScatterSpot(24, 35, color: widget.blue2, radius: radius),
      ScatterSpot(26, 33, color: widget.blue2, radius: radius),

      ScatterSpot(24, 39, color: widget.blue2, radius: radius),
      ScatterSpot(26, 37, color: widget.blue2, radius: radius),
      ScatterSpot(28, 35, color: widget.blue2, radius: radius),

      ScatterSpot(26, 41, color: widget.blue2, radius: radius),
      ScatterSpot(28, 39, color: widget.blue2, radius: radius),
      ScatterSpot(30, 37, color: widget.blue2, radius: radius),

      ScatterSpot(28, 43, color: widget.blue2, radius: radius),
      ScatterSpot(30, 41, color: widget.blue2, radius: radius),
      ScatterSpot(32, 39, color: widget.blue2, radius: radius),

      ScatterSpot(30, 45, color: widget.blue2, radius: radius),
      ScatterSpot(32, 43, color: widget.blue2, radius: radius),
      ScatterSpot(34, 41, color: widget.blue2, radius: radius),

      ScatterSpot(34, 45, color: widget.blue2, radius: radius),
      ScatterSpot(36, 43, color: widget.blue2, radius: radius),

      ScatterSpot(38, 45, color: widget.blue2, radius: radius),
    ];
  }

  List<ScatterSpot> randomData() {
    const blue1Count = 21;
    const blue2Count = 57;
    return List.generate(blue1Count + blue2Count, (i) {
      Color color;
      if (i < blue1Count) {
        color = widget.blue1;
      } else {
        color = widget.blue2;
      }

      return ScatterSpot(
        (Random().nextDouble() * (maxX - 8)) + 4,
        (Random().nextDouble() * (maxY - 8)) + 4,
        color: color,
        radius: (Random().nextDouble() * 16) + 4,
      );
    });
  }
}
