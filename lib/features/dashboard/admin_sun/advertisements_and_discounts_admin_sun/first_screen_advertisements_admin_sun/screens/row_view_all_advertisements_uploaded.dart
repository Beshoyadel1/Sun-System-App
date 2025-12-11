import 'package:flutter/cupertino.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/dashboard/admin_sun/advertisements_and_discounts_admin_sun/add_advertisements_admin_sun/add_advertisements_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/advertisements_and_discounts_admin_sun/custom_widget/design_container_advertisements_uploaded_widget.dart';

class RowViewAllAdvertisementsUploaded extends StatelessWidget {
  const RowViewAllAdvertisementsUploaded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DesignContainerAdvertisementsUploadedWidget(
        onPressedEdit: () {
          Navigator.of(context).push(
            NavigateToPageWidget(AddAdvertisementsAdminSun()),
          );
        }
        ),
        DesignContainerAdvertisementsUploadedWidget(
            onPressedEdit: () {
              Navigator.of(context).push(
                NavigateToPageWidget(AddAdvertisementsAdminSun()),
              );
            }
        ),
      ],
    );
  }
}
