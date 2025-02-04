// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'app_text_button.dart';
import 'custom_alert_dialog.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? isWideScreen;
  const CustomAppBar({
    Key? key,
    this.isWideScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isWideScreen == true) {
      return AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Row(
            children: [
              AppTextButton(
                text: "Home",
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (_) {
                      return CustomAlertDialog(
                        contentText: "Under Development",
                        icon: Icons.construction,
                        iconButton: EvaIcons.checkmark,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(width: 20),
              AppTextButton(
                text: "About Me",
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (_) {
                      return CustomAlertDialog(
                        contentText: "Under Development",
                        icon: Icons.construction,
                        iconButton: EvaIcons.checkmark,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(width: 20),
              AppTextButton(
                text: "Work",
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (_) {
                      return CustomAlertDialog(
                        contentText: "Under Development",
                        icon: Icons.construction,
                        iconButton: EvaIcons.checkmark,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(width: 20),
              AppTextButton(
                text: "Contact",
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (_) {
                      return CustomAlertDialog(
                        contentText: "Under Development",
                        icon: Icons.construction,
                        iconButton: EvaIcons.checkmark,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
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
        backgroundColor: Colors.transparent,
        actions: [
          DropdownButton<String>(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                30,
              ),
            ),
            dropdownColor: AppColors.darkBlue,
            style: AppTextStyles.bodyText2Blue,
            underline: Container(),
            items: [
              DropdownMenuItem(
                value: "Home",
                child: TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    await showDialog(
                      context: context,
                      builder: (_) {
                        return CustomAlertDialog(
                          contentText: "Under Development",
                          icon: Icons.construction,
                          iconButton: EvaIcons.checkmark,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
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
                  onPressed: () async {
                    Navigator.pop(context);
                    await showDialog(
                      context: context,
                      builder: (_) {
                        return CustomAlertDialog(
                          contentText: "Under Development",
                          icon: Icons.construction,
                          iconButton: EvaIcons.checkmark,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
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
                  onPressed: () async {
                    Navigator.pop(context);
                    await showDialog(
                      context: context,
                      builder: (_) {
                        return CustomAlertDialog(
                          contentText: "Under Development",
                          icon: Icons.construction,
                          iconButton: EvaIcons.checkmark,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
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
                  onPressed: () async {
                    Navigator.pop(context);
                    await showDialog(
                      context: context,
                      builder: (_) {
                        return CustomAlertDialog(
                          contentText: "Under Development",
                          icon: Icons.construction,
                          iconButton: EvaIcons.checkmark,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
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
          const SizedBox(width: 10),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
