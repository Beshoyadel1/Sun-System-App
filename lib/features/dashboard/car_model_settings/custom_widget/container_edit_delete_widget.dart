import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';


class ContainerEditDeleteWidget extends StatelessWidget {
  final bool? isDelete;
  final void Function()? onPressed;
  const ContainerEditDeleteWidget({super.key,this.isDelete=false,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:isDelete!? AppColors.darkBlueColor:AppColors.redColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed:onPressed,
          icon: Icon(
            isDelete!?
            Icons.edit:
            Icons.delete,
            color: AppColors.whiteColor,
            size: 20,
          )
      ),
    );
  }
}
