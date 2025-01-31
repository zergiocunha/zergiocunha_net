import 'package:flutter/material.dart';
import 'package:zergiocunha_net/layers/presentation/app_colors.dart';

import 'layouts/mobile_layout.dart';
import 'layouts/widescreen_layout.dart';

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
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 20,
                  ),
                  child: WideScreenLayout(isWideScreen: isWideScreen),
                )
              : Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: MobileLayout(isWideScreen: isWideScreen),
                ),
        );
      },
    );
  }
}
