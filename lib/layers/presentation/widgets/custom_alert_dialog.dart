import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'custom_icon_button.dart';

class CustomAlertDialog extends StatelessWidget {
  final String contentText;
  final VoidCallback? onTap;
  final IconData? icon;
  final IconData? iconButton;

  const CustomAlertDialog({
    super.key,
    required this.contentText,
    this.onTap,
    this.icon,
    this.iconButton,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkBlue,
      icon: Icon(
        icon,
        color: AppColors.blue,
        size: 70,
      ),
      content: Text(
        contentText,
        style: AppTextStyles.bodyText2Blue,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      contentTextStyle: AppTextStyles.bodyText1,
      actions: [
        CustomIconButton(
          icon: iconButton,
          onTap: onTap,
        )
      ],
    );
  }
}
