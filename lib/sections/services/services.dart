import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}

///Mobile
class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
         CustomSectionHeading(
          text: '\n${Constant.whatDo}',
        ),
         CustomSectionSubHeading(
          text: Constant.someUse,
        ),
        Space.y!,
        CarouselSlider.builder(
          itemCount: Constant.servicesTitles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: _ServiceCard(
              serviceIcon: Constant.servicesIcons[i],
              serviceTitle: Constant.servicesTitles[i],
              serviceDescription: Constant.servicesDescription[i],
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.65,
            height: width < 450 ? height * 0.4 : height * 0.4,
            // autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}

///Desktop
class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
           CustomSectionHeading(
            text: '\n${Constant.whatDo}',
          ),
           CustomSectionSubHeading(
            text: Constant.someUse,
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: Constant.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(
                serviceIcon: Constant.servicesIcons[e.key],
                serviceTitle: Constant.servicesTitles[e.key],
                serviceDescription:
                Constant.servicesDescription[e.key],
              ),
            )
                .toList(),
          )
        ],
      ),
    );
  }
}

///ServiceCard
class _ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const _ServiceCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(80),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
              BoxShadow(
                color: AppTheme.c!.primary!.withAlpha(100),
                blurRadius: 12.0,
                offset: const Offset(0.0, 0.0),
              )
            ]
                : [
              BoxShadow(
                color: Colors.black.withAlpha(100),
                blurRadius: 12.0,
                offset: const Offset(0.0, 0.0),
              )
            ],
          ),
          child: _ServiceCardBackWidget(
            serviceDesc: widget.serviceDescription,
            serviceTitle: widget.serviceTitle,
          ),
        ),
        front: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(80),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
              BoxShadow(
                color: AppTheme.c!.primary!.withAlpha(100),
                blurRadius: 12.0,
                offset: const Offset(0.0, 0.0),
              )
            ]
                : [
              BoxShadow(
                color: Colors.black.withAlpha(100),
                blurRadius: 12.0,
                offset: const Offset(0.0, 0.0),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: AppDimensions.normalize(30),
                color: widget.serviceIcon.contains(StaticUtils.openSource)
                    ? Colors.black
                    : null,
              ),
              Space.y1!,
              Text(
                widget.serviceTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///ServiceCardBackWidget
class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
        ),
        Divider(
          color: Colors.black38,
        ),
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(60),
          child: MaterialButton(
            color: AppTheme.c!.primary,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => buildDialog(context)),
            child: Text(
              'HIRE ME!',
              style: AppText.b2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  ///Hire Me!
  buildDialog(context){
    return AlertDialog(
      title: Text(
        "Hire Me!",
        style: AppText.b2b,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Back"),
        )
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            height: 40.0,
            onPressed: () => openURL(
              Constant.contactMe,
            ),
            color: const Color(0xff34CB62),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.white,
                ),
                Space.x!,
                Text(
                  'WhatsApp',
                  style: AppText.l1!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Space.y1!,
          // MaterialButton(
          //   height: 40.0,
          //   onPressed: () => openURL(
          //     'https://www.upwork.com/freelancers/~0197b0f6aaeba9675f',
          //   ),
          //   color: const Color(0xff13A800),
          //   child: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       Image.network(
          //         'https://img.icons8.com/ios-filled/50/000000/upwork.png',
          //         height: 35.0,
          //         color: Colors.white,
          //       ),
          //       Space.x!,
          //       Text(
          //         'Upwork',
          //         style: AppText.l1!.copyWith(
          //           color: Colors.white,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}




