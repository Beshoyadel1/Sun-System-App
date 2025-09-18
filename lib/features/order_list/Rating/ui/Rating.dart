import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/order_list/Rating/logic/rating_cubit.dart';
import 'package:sun_system_app/features/order_list/Rating/logic/rating_state.dart';
import 'package:sun_system_app/features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';

class RatingDialogWidget extends StatelessWidget {
  RatingDialogWidget({super.key});

  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = RatingCubit();

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.scaffoldColor,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: MultiBlocBuilder(
            cubit: cubit,
            commentController: _commentController,
          ),
        ),
      ),
    );
  }
}


class MultiBlocBuilder extends StatelessWidget {
  final RatingCubit cubit;
  final TextEditingController commentController;
  const MultiBlocBuilder({
    super.key,
    required this.cubit,
    required this.commentController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        TextInAppWidget(
          text: AppLanguageKeys.rateService,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),

        BlocBuilder<RatingCubit, RatingState>(
          bloc: cubit,
          buildWhen: (prev, curr) => prev.rating != curr.rating,
          builder: (context, state) {
            return RatingBar.builder(
              initialRating: state.rating,
              minRating: 1,
              allowHalfRating: false,
              itemCount: 5,
              itemSize: 40,
              unratedColor: AppColors.greyColor.withOpacity(0.5),
              itemBuilder: (_, __) =>
              const Icon(Icons.star, color: AppColors.orangeColor),
              onRatingUpdate: cubit.updateRating,
            );
          },
        ),

        FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.writeComment,
          maxLines: 5,
          isRegular: true,
          textFormController: commentController,
        //  onChanged: cubit.updateComment,
        ),

        const SizedBox(height: 10),
        ButtonWidget(
          text: AppLanguageKeys.addYourComment,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.orangeColor,
          textSize: 15,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          widthContainer: 300,
          borderRadius: 30,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
