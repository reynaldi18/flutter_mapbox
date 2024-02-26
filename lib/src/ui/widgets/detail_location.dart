import 'package:flutter/material.dart';

import '../../helpers/ui_helpers.dart';
import '../../model/feature.dart';
import '../common/app_strings.dart';
import '../common/app_styles.dart';

class DetailLocation extends StatelessWidget {
  final Feature data;
  final Color setColor;

  const DetailLocation({
    super.key,
    required this.data,
    required this.setColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(16.0),
            Text(
              AppStrings.labelInformation,
              style: blackSemiBoldTextStyle.copyWith(fontSize: 18.0),
            ),
            verticalSpace(24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.labelName, style: blackRegularTextStyle),
                Text(data.properties?.name ?? '',
                    style: blackSemiBoldTextStyle),
              ],
            ),
            verticalSpace(8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.labelStatus, style: blackRegularTextStyle),
                Text(
                  data.properties?.status ?? '',
                  style: blackSemiBoldTextStyle.copyWith(
                    color:
                    setColor,
                  ),
                ),
              ],
            ),
            verticalSpace(8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.labelNumber, style: blackRegularTextStyle),
                Text(data.properties?.number ?? '',
                    style: blackSemiBoldTextStyle),
              ],
            ),
            verticalSpace(32.0),
          ],
        ),
      ),
    );
  }
}
