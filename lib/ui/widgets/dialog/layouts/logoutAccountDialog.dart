import 'package:e_demand/cubits/updateFCMCubit.dart';
import 'package:flutter/material.dart';

import '../../../../app/generalImports.dart';

class LogoutAccountDialog extends StatelessWidget {
  const LogoutAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialogLayout(
      icon: CustomContainer(
          height: 70,
          width: 70,
          padding: const EdgeInsets.all(10),
          color: Theme.of(context).colorScheme.secondaryColor,
          borderRadius: borderRadiusOf50,
          child: Image.asset("assets/images/logout_mark.png")),
      title: "confirmLogout",
      description: "areYouSureYouWantToLogout",
      //
      cancelButtonName: "cancel",
      cancelButtonBackgroundColor: Theme.of(context).colorScheme.secondaryColor,
      cancelButtonPressed: () {
        Navigator.of(context).pop();
      },
      //
      confirmButtonName: "logout",
      confirmButtonBackgroundColor: AppColors.redColor,
      confirmButtonPressed: () async {
        try {
          //
          //update fcm id
          try {
            await UserRepository().updateFCM(
              fcmId: "",
              platform: Platform.isAndroid ? "android" : "ios",
            );
          } catch (_) {}
          final response = await UiUtils.clearUserData();

          if (response) {
            Future.delayed(Duration.zero, () async {
              //
              context.read<AuthenticationCubit>().checkStatus();
              context.read<UserDetailsCubit>().clearCubit();
              context.read<CartCubit>().clearCartCubit();
              context.read<BookmarkCubit>().clearBookMarkCubit();

              Navigator.pop(context, true);
              AppQuickActions.createAppQuickActions();
            });
          } else {
            UiUtils.showMessage(
              context,
              'somethingWentWrong'.translate(context: context),
              MessageType.error,
            );
          }
        } catch (_) {}
      },
    );
  }
}
