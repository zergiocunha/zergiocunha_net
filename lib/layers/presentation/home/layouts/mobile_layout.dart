import 'package:flutter/material.dart';
import 'package:zergiocunha_net/layers/presentation/home/widgets/social_media_buttons_row.dart';

import '../../app_text_styles.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/glowing_avatar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
    required this.isWideScreen,
  });

  final bool isWideScreen;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          CustomAppBar(
            isWideScreen: isWideScreen,
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            const GlowingAvatar(
              radius: 200,
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Software Developer",
                  style: AppTextStyles.bodyText2,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Hello, I`m\n",
                    style: AppTextStyles.bodyText1,
                    children: [
                      TextSpan(
                        text: "Sergio Cunha",
                        style: AppTextStyles.bodyText1blue,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,
                  softWrap: true,
                  text: TextSpan(
                    style: AppTextStyles.bodyText2,
                    children: [
                      TextSpan(
                        style: AppTextStyles.bodyText2,
                        text:
                            "A back-end Software Developer based in São Paulo, Brazil. \nI am now exploring the world of frontend development using Flutter. My goal is to craft seamless user experiences by merging solid backend logic with clean, responsive interfaces.",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SocialMediaButtonsRow(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
