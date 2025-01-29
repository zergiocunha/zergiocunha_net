import 'package:flutter/material.dart';
import 'package:zergiocunha_net/layers/presentation/app_colors.dart';
import 'package:zergiocunha_net/layers/presentation/app_text_styles.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/glowing_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWideScreen = constraints.maxWidth >= 900;

        return Scaffold(
          backgroundColor: AppColors.pastelDarkBlue,
          body: isWideScreen
              ? _buildWideScreenLayout(isWideScreen: isWideScreen)
              : _buildMobileLayout(isWideScreen: isWideScreen),
        );
      },
    );
  }
}

class _buildMobileLayout extends StatelessWidget {
  const _buildMobileLayout({
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
                            "A back-end Senior Software Developer based in São Paulo, Brazil. \nI am now exploring the world of frontend development using Flutter. My goal is to craft seamless user experiences by merging solid backend logic with clean, responsive interfaces.",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const _buttons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _buildWideScreenLayout extends StatelessWidget {
  const _buildWideScreenLayout({
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
                                  "A back-end Senior Software Developer based in São Paulo, Brazil.\n",
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
                      _buttons(),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                GlowingAvatar(
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

class _buttons extends StatelessWidget {
  const _buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  width: 2,
                  color: AppColors.blue,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  60,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Text(
                style: AppTextStyles.bodyText2Blue,
                "DOWNLOAD CV",
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  width: 2,
                  color: AppColors.blue,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  60,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Icon(
                Icons.person_outline,
                color: AppColors.blue,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  width: 2,
                  color: AppColors.blue,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  60,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Icon(
                Icons.access_alarm,
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
