// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'app_text_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? isWideScreen;
  const CustomAppBar({
    Key? key,
    this.isWideScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWideScreen == true) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: AppBar(
          backgroundColor: AppColors.pastelDarkBlue,
          actions: [
            Row(
              children: [
                AppTextButton(
                  text: "Home",
                  onPressed: () {
                    print("Home");
                  },
                ),
                const SizedBox(width: 20),
                AppTextButton(
                  text: "About Me",
                  onPressed: () {
                    print("About Me");
                  },
                ),
                const SizedBox(width: 20),
                AppTextButton(
                  text: "Work",
                  onPressed: () {
                    print("Work");
                  },
                ),
                const SizedBox(width: 20),
                AppTextButton(
                  text: "Contact",
                  onPressed: () {
                    print("Contact");
                  },
                ),
              ],
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.business_center_outlined,
                  color: AppColors.blue,
                ),
                color: AppColors.blue,
                onPressed: () {
                  print("Menu");
                },
              ),
              const SizedBox(width: 10),
              Text(
                "Sergio Cunha",
                style: AppTextStyles.headline2,
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(right: 40.0),
        child: AppBar(
          backgroundColor: AppColors.pastelDarkBlue,
          actions: const [
            Icon(
              color: AppColors.white,
              Icons.menu,
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.business_center_outlined,
                color: AppColors.blue,
              ),
              const SizedBox(width: 10),
              Text(
                "Sergio Cunha",
                style: AppTextStyles.headline2,
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
