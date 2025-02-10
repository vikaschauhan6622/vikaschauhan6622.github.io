import 'package:flutter/material.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/configs/configs.dart';
import 'package:provider/provider.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}

///Mobile
class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      children: [
         CustomSectionHeading(
          text: "\n${Constant.getInTouch}",
        ),
         CustomSectionSubHeading(
          text: Constant.buildTogether,
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              projectIconData: Constant.contactIcon[i],
              projectTitle: Constant.titles[i],
              projectDescription: Constant.details[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(90),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}

///Desktop
class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
           CustomSectionHeading(
            text: "\n${Constant.getInTouch}",
          ),
           CustomSectionSubHeading(
            text: Constant.buildTogether,
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: Constant.contactIcon
                  .asMap()
                  .entries
                  .map((e) => WidgetAnimator(
                child: ProjectCard(
                  projectIconData: e.value,
                  projectTitle: Constant.titles[e.key],
                  projectDescription: Constant.details[e.key],
                ),
              ))
                  .toList()),
        ],
      ),
    );
  }
}
