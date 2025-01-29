import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zergiocunha_net/layers/presentation/app_colors.dart';
import 'package:zergiocunha_net/layers/presentation/app_text_styles.dart';

import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWideScreen = constraints.maxWidth >= 800;

        return Scaffold(
          backgroundColor: AppColors.pastelDarkBlue,
          appBar: CustomAppBar(
            isWideScreen: isWideScreen,
          ),
          body: isWideScreen
              ? Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
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
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.blue,
                                  width: 3,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(
                                  3.0,
                                ), // Ajuste o padding aqui
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/profile.jpg',
                                  ),
                                  backgroundColor: Colors.transparent,
                                  radius: 200, // Ajuste o raio aqui
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.blue,
                              width: 3,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(
                              3.0,
                            ), // Ajuste o padding aqui
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/profile.jpg',
                              ),
                              backgroundColor: Colors.transparent,
                              radius: 200, // Ajuste o raio aqui
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          child: Column(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
