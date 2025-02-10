import 'package:flutter/material.dart';
import 'package:folio/utils/constant/image_constant.dart';
import 'package:folio/utils/constant/project_data.dart';
import 'package:folio/utils/utils.dart';

class Constant {
  ///HOME
  static const String welcome = "WELCOME TO MY PORTFOLIO! ";
  static const String firstName = "Vikas";
  static const String lastName = "Chauhan";
  static const String role1 = " Flutter Software Engineer";
  static const String role2 = " UI/UX Developer";
  static const String role3 = " AI Enthusiast";
  static const String role4 = " Mentor";
  static const String role5 = " A friend :)";

  ///About
  static const String aboutMe = "About Me";
  static const String knowMe = 'Get to know me :)';
  static const String whoAmI = "Who am I?";
  static const String technologies = 'Technologies I have worked with:';
  static const String name = "Name";
  static const String fullName = "Vikas Chauhan";
  static const String age = "Age";
  static const String ageInt = "24";
  static const String email2 = "Email";
  static const String from = "From";
  static const String city = "Ahmedabad, IN";

  ///Service
  static const String whatDo = "What I can do?";
  static const String someUse = 'I may not be perfect but surely I\'m of some use :)\n\n';

  ///Portfolio
  static const String portfolio = "Portfolio";
  static const String previousWork = "Here are few samples of my previous work :)\n\n";
  static const String see = 'See More';

  ///Contact
  static const String getInTouch = "Get in Touch";
  static const String buildTogether = "Let's build something together :)\n\n";

  ///Footer
  static const String developed = "Developed in 💙 with";
  static const String flutter = "Flutter";
  static const String githubURL = "https://github.com/mhmzdev/DevFolio";

  ///Common
  static const String darkMode = "Dark Mode";
  static const String resume = 'RESUME';


  static const String myEmail = "vikaschauhan6622@gmail.com";
  static const String myContact = "+91 7359486700";
  static const String contactMe = "https://api.whatsapp.com/send?phone=917359486700";

  ///About
  static const String aboutMeHeadline =
      'I\'m Vikas Chauhan, a Flutter Software Engineer and AI Enthusiast.';

  static const String aboutMeDetail = 'I\'m an experienced Flutter Software Engineer with over 3.5 years of hands-on development. I graduated with a degree in Information Technology from GTU University, Vadodara and have worked with startups to bring their ideas to life.';
  static const String aboutMeDetail2 = "Currently, I'm a Senior Software Engineer, and I'm also pursuing my Master’s in Data Science at CU. I love building seamless mobile experiences and continuously learning new technologies.";
  static const String aboutMeDetail3 = "Let’s connect and create something amazing! 🚀";






  ///Contact
  static const List<IconData> contactIcon = [
    Icons.home,
    Icons.phone,
    Icons.mail,
  ];

  static const List<String> titles = [
    "Location",
    "Phone",
    "Email",
  ];

  static const List<String> details = [
    city,
    myContact,
    myEmail,
  ];


  ///NavBarUtils
  static const List<String> names = [
    'HOME',
    'ABOUT',
    'SERVICES',
    'PROJECTS',
    'CONTACT',
  ];

  static const List<IconData> icons = [
    Icons.home,
    Icons.person,
    Icons.work,
    Icons.build,
    Icons.settings,
    Icons.contact_page,
  ];

  ///ProjectUtils
  static const List<String> bannersProject = [
    ImagePath.imageWidget,
    ImagePath.featureGraphic,
    ImagePath.dynastyFeatureGraphic,
    ImagePath.dynastyFeatureGraphic2,
    ImagePath.logisxFeatureGraphic,
    ImagePath.logisxTruckerFeatureGraphic,
  ];

  static const List<String> iconsProject = [
    ImagePath.flutter,
    ImagePath.appicon,
    ImagePath.dynastyAppicon,
    ImagePath.dynastyAppicon2,
    ImagePath.logisxAppicon,
    ImagePath.logisxTruckerAppicon,
  ];

  static const List<String> titlesProject = [
    "Flutter Image Widget Dart Package",
    "Odissea Sarcinii(Pregnancy)",
    "Dynasty - User",
    "Dynasty - Driver",
    "LogisX - Trucker",
    "LogisX - Shipper",
    "Lyve(Payment Wallet app)",
    "Shuri - Landlord and Tenant",
    "Shuri - Supplier",
    "Gift4All",
    "BreastFeeding",
    "Digilog - User",
    "Digilog - Admin",
    "Picks from the paddock",
    "RJC Directory",
    "Hobreach Fitness",
    "Sports App",
    "Sallon",
    "Player Connect",
    "ClubVoice",
    "ShopListly",

  ];

  static const List<String> descriptionProject = [
    "The FlutterImageWidget is a versatile Flutter widget designed for displaying different types of images in a Flutter application. Available at pub.dev now!",
    "Odissea Sarcinii(Pregnancy) - Application Developed using Flutter a smarter journey to motherhood—developing a pregnancy app to support and guide expecting parents. 🤰📲✨",
    "Dynasty - User 🚖 app developed using Flutter A seamless ride-hailing app connecting users with drivers, just like Ola & Uber. 🚘✨",
    "Dynasty - Driver 🚖 app developed using Flutter Empowering drivers with an efficient ride-hailing platform, just like Ola & Uber. 🚘",
    "LogisX - Trucker 🚛 | Application Developed using Flutter A smart logistics app helping truckers find and manage shipments with ease. 📦✨",
    "LogisX - Shipper 📦 | Application Developed using Flutter Seamlessly connect with truckers to transport goods efficiently and reliably. 🚛✨",
  ];

  static const List<String> linksProject = [
    ProjectsConstant.flutterImageWidget,
    ProjectsConstant.pregnancyAndroidApp,
    ProjectsConstant.dynastyUserAndroidApp,
    ProjectsConstant.dynastyDriverAndroidApp,
    ProjectsConstant.logisxTruckerAndroidApp,
    ProjectsConstant.logisxShipperAndroidApp,
  ];

  /// ServicesUtils
  static const List<String> servicesIcons = [
    StaticUtils.appDev,
    StaticUtils.rapid,
    StaticUtils.uiux,
    StaticUtils.blog,
    StaticUtils.openSource,
  ];

  static const List<String> servicesTitles = [
    "Software Development",
    "Mobile App Development",
    "UI/UX Designing",
    "Rapid Prototyping",
    "Open Source - GitHub",
  ];

  static const List<String> servicesDescription = [
    "Software development via Flutter\n- Webrtc & Socket\n- Best State Management\n- OOPs with GraphQL\n- Popular Payment Gateway integration and more...!",
    "Android and iOS app development via Flutter\n- Smooth UI Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps and Chat integration and more...!",
    "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
    "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
    "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
  ];

  ///WorkUtils
  static const List<String> logos = [
    StaticUtils.university,
    StaticUtils.fullterIsb,
    StaticUtils.dsc,
    StaticUtils.sastaticket,
  ];

  static const List<String> communityLinks = [
    "https://www.comsats.edu.pk/",
    "https://web.facebook.com/FlutterIslamabadPakistan/",
    "https://dsc.community.dev/comsats-university-islamabad/",
    "https://sastaticket.pk/"
  ];

  static const List<double> communityLogoHeight = [60.0, 70.0, 30.0, 70.0];



}