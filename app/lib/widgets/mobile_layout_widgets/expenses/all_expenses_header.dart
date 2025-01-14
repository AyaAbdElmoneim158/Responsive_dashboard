import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.semiBold20(context),
        ),
        const RangeOptions()
      ],
    );
  }
}
