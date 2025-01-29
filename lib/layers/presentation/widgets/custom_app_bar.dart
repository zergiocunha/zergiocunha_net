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
      return SliverAppBar(
        floating: true,
        snap: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
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
      );
    } else {
      return SliverAppBar(
        floating: true,
        snap: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          DropdownButton<String>(
            dropdownColor: AppColors.pastelDarkBlue,
            style: AppTextStyles.bodyText2Blue,
            underline: Container(),
            items: [
              DropdownMenuItem(
                value: "Home",
                child: TextButton(
                  onPressed: () {
                    print("Home");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Home",
                    style: AppTextStyles.bodyText2Blue,
                  ),
                ),
              ),
              DropdownMenuItem(
                value: "About Me",
                child: TextButton(
                  onPressed: () {
                    print("About Me");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "About Me",
                    style: AppTextStyles.bodyText2Blue,
                  ),
                ),
              ),
              DropdownMenuItem(
                value: "Work",
                child: TextButton(
                  onPressed: () {
                    print("Work");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Work",
                    style: AppTextStyles.bodyText2Blue,
                  ),
                ),
              ),
              DropdownMenuItem(
                value: "Contact",
                child: TextButton(
                  onPressed: () {
                    print("Contact");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Contact",
                    style: AppTextStyles.bodyText2Blue,
                  ),
                ),
              ),
            ],
            icon: const Icon(
              Icons.menu,
              color: AppColors.white,
            ),
            onChanged: (String? newValue) {
              print("Menu");
            },
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
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
