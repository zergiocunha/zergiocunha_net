import 'package:flutter/material.dart';
import 'package:zergiocunha_net/layers/presentation/home/widgets/social_media_buttons_row.dart';

import '../../app_text_styles.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/glowing_avatar.dart';

class WideScreenLayout extends StatelessWidget {
  const WideScreenLayout({
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
        padding: const EdgeInsets.only(top: 50),
        child: ListView(
          children: [
            const Text(
              "DEV",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Software Developer",
                        style: AppTextStyles.bodyText2,
                      ),
                      RichText(
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
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        softWrap: true,
                        text: TextSpan(
                          style: AppTextStyles.bodyText2,
                          children: [
                            TextSpan(
                              style: AppTextStyles.bodyText2,
                              text:
                                  "A back-end Software Developer based in São Paulo, Brazil.\n",
                            ),
                            TextSpan(
                              style: AppTextStyles.bodyText2,
                              text:
                                  "I am now exploring the world of frontend development using Flutter.\n",
                            ),
                            TextSpan(
                              style: AppTextStyles.bodyText2,
                              text:
                                  "My goal is to craft seamless user experiences by merging \n",
                            ),
                            TextSpan(
                              style: AppTextStyles.bodyText2,
                              text:
                                  "solid backend logic with clean, responsive interfaces.",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SocialMediaButtonsRow(),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                const GlowingAvatar(
                  radius: 250,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
