import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';
import 'package:provider/provider.dart';
import 'package:folio/animations/entrance_fader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}

///Mobile
class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appProvider = Provider.of<AppProvider>(context);

    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -AppDimensions.normalize(25),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                StaticUtils.meMainPhoto,
                height: AppDimensions.normalize(150),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      Constant.welcome,
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  Constant.firstName,
                  style: AppText.h3b!.copyWith(
                    color: Colors.black,
                  ),

                ),
                Text(
                  Constant.lastName,
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                    height: 1,
                    color:Colors.black,
                  ),
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          Constant.role1,
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          Constant.role2,
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          Constant.role3,
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          Constant.role4,
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          Constant.role5,
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Tab
class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appProvider = Provider.of<AppProvider>(context);

    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.meMainPhoto,
                  height: size.width < 1200
                      ? size.height * 0.75
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(50),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      Constant.welcome,
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                        color:  Colors.black,
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  Constant.firstName,
                  style: AppText.h1b!.copyWith(
                    height: 1,
                    color:  Colors.black,
                  ),
                ),
                Text(
                  Constant.lastName,
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                    color:  Colors.black,
                  ),
                ),

                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            Constant.role1,
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            Constant.role2,
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            Constant.role3,
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            Constant.role4,
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            Constant.role5,
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///Desktop
class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.meMainPhoto2,
                  height: size.width < 1200
                      ? size.height * 0.8
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      Constant.welcome,
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  Constant.firstName,
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(25),
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                ),
                Text(
                  Constant.lastName,
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(25),
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            Constant.role1,
                            speed: const Duration(milliseconds: 50),
                            // textStyle: AppText.b1,
                            textStyle: AppText.b1!.copyWith(
                                fontSize: AppDimensions.font(10),
                                color:  Colors.black,
                                fontWeight: FontWeight.normal
                            ),

                          ),
                          TyperAnimatedText(
                            Constant.role2,
                            speed: const Duration(milliseconds: 50),
                            // textStyle: AppText.b1,
                            textStyle: AppText.b1!.copyWith(
                                fontSize: AppDimensions.font(10),
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                          TyperAnimatedText(
                            Constant.role3,
                            speed: const Duration(milliseconds: 50),
                            // textStyle: AppText.b1,
                            textStyle: AppText.b1!.copyWith(
                                fontSize: AppDimensions.font(10),
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                          TyperAnimatedText(
                            Constant.role4,
                            speed: const Duration(milliseconds: 50),
                            // textStyle: AppText.b1,
                            textStyle: AppText.b1!.copyWith(
                                fontSize: AppDimensions.font(10),
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                          TyperAnimatedText(
                            Constant.role5,
                            speed: const Duration(milliseconds: 50),
                            // textStyle: AppText.b1,
                            textStyle: AppText.b1!.copyWith(
                                fontSize: AppDimensions.font(10),
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

