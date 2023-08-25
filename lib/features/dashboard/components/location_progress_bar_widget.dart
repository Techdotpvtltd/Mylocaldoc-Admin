import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';

class LocationProgressBarWidget extends StatelessWidget {
  const LocationProgressBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Location 1",
            style: AppStyle.text10PoppinsMediumWhite,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              minHeight: 14,
              value: 0.35,
              backgroundColor: const Color(0xFF5C5C5C),
              valueColor:
                  AlwaysStoppedAnimation<Color>(appColors.deepPurple500),
            ),
          ),
        ],
      ),
    );
  }
}
