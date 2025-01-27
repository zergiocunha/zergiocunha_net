import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth >= 750;

          return Center(
            child: Container(
              child: isWideScreen
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 410,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/man_coding.jpg',
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            height: 380,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/images/profile.jpg',
                                          fit: BoxFit.cover,
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    _buildRichText(isWideScreen, 200, 300),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            FadeInDown(
                              config: BaseAnimationConfig(
                                delay: 1000.ms,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child:
                                      Image.asset('assets/images/profile.jpg',
                                          fit: BoxFit.cover,
                                          // width: 200,
                                          height: 700),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            FadeInRight(
                              config: BaseAnimationConfig(
                                curves: Curves.easeInOutCubicEmphasized,
                                delay: 2000.ms,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    _buildRichText(isWideScreen,
                                        constraints.maxWidth - 50, 300),
                                  ],
                                ),
                              ),
                            ),
                            // Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   crossAxisAlignment: CrossAxisAlignment.center,
                            //   children: [
                            //     _buildRichText(isWideScreen,
                            //         constraints.maxWidth - 50, 300),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRichText(bool isWideScreen, double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: RichText(
        textAlign: isWideScreen ? TextAlign.start : TextAlign.center,
        text: TextSpan(
          text:
              "Hello — I'm Sergio Cunha, a Senior Software Developer based in São Paulo, Brazil.",
          style: GoogleFonts.comfortaa(
            fontSize: 13,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            height: 1.8,
          ),
          children: const [
            TextSpan(
              text:
                  " With solid experience in backend, I'm now exploring the world of frontend development using Flutter. My goal is to craft seamless user experiences by merging solid backend logic with clean, responsive interfaces. ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white54,
                fontStyle: FontStyle.normal,
              ),
            ),
            TextSpan(
              text: 'Find out a little more about my journey.',
              style: TextStyle(
                color: Colors.white54,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
