import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/sections/home/projects_list.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}


///Mobile
class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
         const CustomSectionHeading(
          text: "\n${Constant.portfolio}",
        ),
         const CustomSectionSubHeading(
          text: Constant.previousWork,
        ),
        CarouselSlider.builder(
          itemCount: Constant.titlesProject.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              projectIcon: Constant.iconsProject[i],
              projectLink: Constant.linksProject[i],
              projectTitle: Constant.titlesProject[i],
              projectDescription: Constant.descriptionProject[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y!,
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(50),
          child: OutlinedButton(
            onPressed: () => openURL(StaticUtils.gitHub),
            child: Text(
              Constant.see,
              style: AppText.l1b,
            ),
          ),
        )
      ],
    );
  }
}

///Desktop
class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
           const CustomSectionHeading(
            text: "\n${Constant.portfolio}",
          ),
           const CustomSectionSubHeading(
            text: Constant.previousWork,
          ),
          ///ProjectCard
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            children: Constant.bannersProject
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                banner: e.value,
                projectIcon: Constant.iconsProject[e.key],
                projectLink: Constant.linksProject[e.key],
                projectTitle: Constant.titlesProject[e.key],
                projectDescription: Constant.descriptionProject[e.key],
              ),
            )
                .toList(),
          ),
          Space.y2!,
          ///see more
          SizedBox(
            height: AppDimensions.normalize(14),
            width: AppDimensions.normalize(50),
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WorksPage(),));
              },
              child: Text(
                Constant.see,
                style: AppText.l1b,
              ),
            ),
          )
        ],
      ),
    );
  }
}
