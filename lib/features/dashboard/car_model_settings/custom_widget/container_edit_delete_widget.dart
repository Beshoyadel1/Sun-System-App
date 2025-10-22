import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';

class ContainerEditDeleteWidget extends StatelessWidget {
  final bool? isDelete;
  final VoidCallback? onPressed;
  final double? size;

  const ContainerEditDeleteWidget({
    super.key,
    this.isDelete = false,
    this.onPressed,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final double iconSize = size ?? 20;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: iconSize + 8,
        height: iconSize + 8,
        decoration: BoxDecoration(
          color: isDelete! ? AppColors.redColor : AppColors.darkBlueColor,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Icon(
          isDelete! ? Icons.delete : Icons.edit,
          color: AppColors.whiteColor,
          size: iconSize,
        ),
      ),
    );
  }
}
