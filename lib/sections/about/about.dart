import 'package:flutter/material.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:flutter/foundation.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}

///Tab
class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Center(
            child: CustomSectionHeading(
              text: '\n${Constant.aboutMe}',
            ),
          ),
           Center(
            child: CustomSectionSubHeading(
              text: Constant.knowMe,
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.meMainPhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            Constant.whoAmI,
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y1!,
          Text(
            Constant.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
              color: Colors.black,
            ),
          ),
          ///aboutMeDetail
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            Constant.aboutMeDetail,
            style: AppText.l1!.copyWith(
              color: Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            Constant.aboutMeDetail2,
            style: AppText.l1!.copyWith(
              color: Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            Constant.aboutMeDetail3,
            style: AppText.l1!.copyWith(
              color: Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            Constant.technologies,
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Row(
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
            )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: Constant.name,
                    information: Constant.fullName,
                  ),
                  AboutMeData(
                    data: Constant.age,
                    information: Constant.ageInt,
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: Constant.email2,
                    information: Constant.myEmail,
                  ),
                  AboutMeData(
                    data: Constant.from,
                    information: Constant.city,
                  ),
                ],
              ),
            ],
          ),
          Space.y1!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: AppDimensions.normalize(13),
                width: AppDimensions.normalize(40),
                child: GestureDetector(
                  onTap: () => html.window.open(StaticUtils.resume, 'pdf'),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color:  Colors.black,
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child:  Text(
                          Constant.resume,
                          style: TextStyle(color: AppTheme.c!.primary,),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Space.x1!,
              // Container(
              //   color: Colors.grey[900]!,
              //   width: AppDimensions.normalize(30),
              //   height: AppDimensions.normalize(0.5),
              // ),
              // ...WorkUtils.logos.asMap().entries.map(
              //       (e) => Expanded(
              //         child: CommunityIconBtn(
              //           icon: e.value,
              //           link: WorkUtils.communityLinks[e.key],
              //           height:
              //               WorkUtils.communityLogoHeight[e.key],
              //         ),
              //       ),
              //     )
            ],
          ),
        ],
      ),
    );
  }
}

///Mobile
class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: Space.h,
      child: Column(
        children: [
           CustomSectionHeading(
            text: '\n${Constant.aboutMe}',
          ),
           CustomSectionSubHeading(
            text: Constant.knowMe,
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.meMainPhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Constant.whoAmI,
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            Constant.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
              color:Colors.black,
            ),
          ),
          ///aboutMeDetail
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            Constant.aboutMeDetail,
            style: AppText.l1!.copyWith(
              color:  Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            Constant.aboutMeDetail2,
            style: AppText.l1!.copyWith(
              color:  Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            Constant.aboutMeDetail3,
            style: AppText.l1!.copyWith(
              color:  Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),

          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            Constant.technologies,
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
            )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: Constant.name,
            information: Constant.fullName,
          ),
          const AboutMeData(
            data: Constant.email2,
            information: Constant.myEmail,
          ),
          Space.y!,
          SizedBox(
            height: AppDimensions.normalize(13),
            width: AppDimensions.normalize(40),
            child: GestureDetector(
                onTap: () {
                  kIsWeb
                      ? html.window.open(StaticUtils.resume, "pdf")
                      : openURL(StaticUtils.resume);
                },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color:  Colors.black,
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child:  Text(
                      Constant.resume,
                      style: TextStyle(color: AppTheme.c!.primary,),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Space.y!,
          // Wrap(
          //     alignment: WrapAlignment.center,
          //     crossAxisAlignment: WrapCrossAlignment.center,
          //     children: WorkUtils.logos
          //         .asMap()
          //         .entries
          //         .map(
          //           (e) => CommunityIconBtn(
          //             icon: e.value,
          //             link: WorkUtils.communityLinks[e.key],
          //             height: WorkUtils.communityLogoHeight[e.key],
          //           ),
          //         )
          //         .toList()),
        ],
      ),
    );
  }
}

///Desktop
class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
           CustomSectionHeading(
            text: '\n${Constant.aboutMe}',
          ),
           CustomSectionSubHeading(
            text: Constant.knowMe,
          ),
          Space.y1!,
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.meMainPhoto,
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constant.whoAmI,
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        Constant.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                        ),
                      ),
                      ///AboutMeDetail
                      Space.y!,
                      Text(
                        Constant.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          color: Colors.black,
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y!,
                      Text(
                        Constant.aboutMeDetail2,
                        style: AppText.b2!.copyWith(
                          color: Colors.black,
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y!,
                      Text(
                        Constant.aboutMeDetail3,
                        style: AppText.b2!.copyWith(
                          color: Colors.black,
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      ///
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Space.y!,
                      Text(
                        Constant.technologies,
                        style: AppText.l1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y!,
                      Row(
                        children: kTools
                            .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                            .toList(),
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AboutMeData(
                                data: Constant.name,
                                information: Constant.fullName,
                              ),
                              AboutMeData(
                                data: Constant.age,
                                information: Constant.ageInt,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AboutMeData(
                                data: Constant.email2,
                                information: Constant.myEmail,
                              ),
                              AboutMeData(
                                data:Constant.from,
                                information: Constant.city,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Space.y1!,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: AppDimensions.normalize(13),
                            width: AppDimensions.normalize(40),
                            child: GestureDetector(
                              onTap: () => html.window.open(StaticUtils.resume, 'pdf'),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.black,
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child:  Text(
                                      Constant.resume,
                                      style: TextStyle(color: AppTheme.c!.primary,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Space.x1!,
                          // Container(
                          //   color: Colors.grey[900]!,
                          //   width: AppDimensions.normalize(30),
                          //   height: AppDimensions.normalize(0.5),
                          // ),
                          // ...WorkUtils.logos.asMap().entries.map(
                          //       (e) => Expanded(
                          //         child: CommunityIconBtn(
                          //           icon: e.value,
                          //           link: WorkUtils.communityLinks[e.key],
                          //           height:
                          //               WorkUtils.communityLogoHeight[e.key],
                          //         ),
                          //       ),
                          //     )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

