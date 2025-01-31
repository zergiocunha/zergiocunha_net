import 'package:flutter/material.dart';
import 'package:zergiocunha_net/layers/presentation/home/actions/download_cv.dart';

import '../../app_colors.dart';
import '../../app_text_styles.dart';

class SocialMediaButtonsRow extends StatelessWidget {
  const SocialMediaButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Row(
        children: [
          InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(60),
            ),
            onTap: () {
              downloadPdfWeb();
            },
            splashColor: AppColors.blue.withOpacity(0.3),
            highlightColor: AppColors.blue.withOpacity(0.3),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
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
                child: Text(
                  "DOWNLOAD CV",
                  style: AppTextStyles.bodyText2Blue,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {
              print("LinkedIn");
            },
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
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.person_outline,
                  color: AppColors.blue,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {
              print("Github");
            },
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
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.access_alarm,
                  color: AppColors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
