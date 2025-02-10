import 'package:flutter/material.dart';
import 'package:folio/aavid_legend_files/widget/animated_bubble_button.dart';
import 'package:folio/aavid_legend_files/widget/animated_positioned_text.dart';
import 'package:folio/aavid_legend_files/widget/animated_positioned_widget.dart';
import 'package:folio/aavid_legend_files/widget/page_wrapper.dart';
import 'package:folio/aavid_legend_files/widget/simple_footer.dart';
import 'package:folio/aavid_legend_files/widget/sizes.dart';
import 'package:folio/aavid_legend_files/widget/spaces.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/constant/color_constant.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/utils/constant/image_constant.dart';
import 'package:folio/utils/constant/strings.dart';
import 'package:folio/utils/layout/adaptive.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedFooter extends StatefulWidget {
  const AnimatedFooter({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor = AppColors.black,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color backgroundColor;

  @override
  _AnimatedFooterState createState() => _AnimatedFooterState();
}

class _AnimatedFooterState extends State<AnimatedFooter>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double circleImageSize = responsiveSize(context, 100, 150);
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyMedium?.copyWith(
      color: AppColors.accentColor,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    TextStyle? titleStyle = textTheme.headlineMedium?.copyWith(
      color: AppColors.accentColor,
      fontSize: responsiveSize(
        context,
        Sizes.TEXT_SIZE_30,
        Sizes.TEXT_SIZE_60,
        md: Sizes.TEXT_SIZE_50,
      ),
    );
    TextStyle? subtitleStyle = style?.copyWith(
      color: AppColors.grey550,
      fontSize: Sizes.TEXT_SIZE_18,
      fontWeight: FontWeight.w400,
    );

    return Container(
      width: widget.width ?? widthOfScreen(context),
      height: widget.height ?? assignHeight(context, 0.8),
      color: widget.backgroundColor,
      child: VisibilityDetector(
        key: Key('animated-footer'),
        onVisibilityChanged: (visibilityInfo) {
          double visiblePercentage = visibilityInfo.visibleFraction * 100;
          if (visiblePercentage > 25) {
            controller.forward();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            Container(
              height: circleImageSize,
              child: Stack(
                children: [
                  Positioned(
                    right: responsiveSize(
                      context,
                      assignWidth(context, 0.2),
                      assignWidth(context, 0.3),
                      md: assignWidth(context, 0.2),
                    ),
                    child: AnimatedPositionedWidget(
                      controller: CurvedAnimation(
                        parent: controller,
                        curve: Curves.fastOutSlowIn,
                      ),
                      width: circleImageSize,
                      height: circleImageSize,
                      child: Image.asset(
                        ImagePath.CIRCLE,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedPositionedText(
                      text: StringConst.WORK_TOGETHER,
                     
                      textAlign: TextAlign.center,
                      textStyle: titleStyle,
                      controller: CurvedAnimation(
                        parent: controller,
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            AnimatedPositionedText(
              text: StringConst.AVAILABLE_FOR_FREELANCE,
              textAlign: TextAlign.center,
              textStyle: subtitleStyle,
              factor: 2.0,
              controller: CurvedAnimation(
                parent: controller,
                curve: Curves.fastOutSlowIn,
              ),
            ),
            SpaceH40(),
            ///SAY_HELLO
            AnimatedBubbleButton(
              title: StringConst.SAY_HELLO.toUpperCase(),
              onTap: () {
                openURL(
                  Constant.contactMe,
                );
              },
            ),
            Spacer(flex: 3),
            ResponsiveBuilder(
              builder: (context, sizingInformation) {
                double screenWidth = sizingInformation.screenSize.width;
                if (screenWidth <= RefinedBreakpoints().tabletNormal) {
                  return Column(
                    children: [
                      SimpleFooterSmall(),
                      SpaceH8(),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      SimpleFooterLarge(),
                      SpaceH8(),
                    ],
                  );
                }
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

double widthOfScreen(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double heightOfScreen(BuildContext context) {
  return MediaQuery.of(context).size.height;
}