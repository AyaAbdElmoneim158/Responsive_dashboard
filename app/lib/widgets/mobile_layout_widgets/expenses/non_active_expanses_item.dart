import 'package:flutter/material.dart';
import '../../../models/all_Expanses_items_model.dart';
import '../../../utils/app_styles.dart';
import 'all_expanses_item_header.dart';

class NonActiveAllExpensesItem extends StatelessWidget {
  const NonActiveAllExpensesItem({super.key, required this.expansesItemsModel});
  final AllExpansesItemsModel expansesItemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            isActive: false,
            image: expansesItemsModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expansesItemsModel.title,
              style: AppStyles.semiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expansesItemsModel.date,
              style: AppStyles.regular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expansesItemsModel.price,
              style: AppStyles.semiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
