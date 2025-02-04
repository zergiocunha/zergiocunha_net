import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  const CustomIconButton({
    super.key,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(
        Radius.circular(60),
      ),
      splashColor: AppColors.blue.withOpacity(0.3),
      highlightColor: AppColors.blue.withOpacity(0.3),
      child: Container(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              width: 2,
              color: AppColors.blue,
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            icon,
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
