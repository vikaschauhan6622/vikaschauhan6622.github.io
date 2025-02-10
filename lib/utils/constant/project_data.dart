import 'package:folio/aavid_legend_files/widget/nav_item.dart';
import 'package:folio/aavid_legend_files/widget/project_item.dart';
import 'package:folio/utils/constant/color_constant.dart';
import 'package:folio/utils/constant/image_constant.dart';
import 'package:folio/utils/constant/strings.dart';

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.WORKS, route: StringConst.WORKS_PAGE),

  ];


// static List<String> mobileTechnologies = [
//   "Android",
//   "Kotlin",
//   "Jetpack Compose",
//   "Flutter",
//   "Dart"
//       "Java Android",
// ];

// static List<String> otherTechnologies = [
//   "HTML 5",
//   "CSS 3",
//   "JavaScript",
//   "Typescript",
//   "React JS",
//   "Next JS",
//   "Node JS",
//   "Git",
//   "AWS",
//   "Docker",
//   "Kubernetes",
//   "Google Cloud",
//   "Azure",
//   "Travis CI",
//   "Circle CI",
//   "Express",
//   "Chakra UI",
//   "Laravel",
//   "PHP",
//   "SQL",
//   "C++",
//   "Firebase",
//   "Figma",
//   "Adobe XD",
//   "Wordpress",
// ];

// static List<ProjectItemData> recentWorks = [
//   Projects.DISNEY_PLUS,
//   Projects.FLUTTER_CATALOG,
//   Projects.DROP,
//   Projects.ROAM,
//   Projects.LOGIN_CATALOG,
//   Projects.FOODY_BITE,
//   Projects.NIMBUS,
// ];


// static List<ExperienceData> experienceData = [
//   ExperienceData(
//     company: StringConst.COMPANY_5,
//     position: StringConst.POSITION_5,
//     companyUrl: StringConst.COMPANY_5_URL,
//     roles: [
//       StringConst.COMPANY_5_ROLE_1,
//       StringConst.COMPANY_5_ROLE_2,
//       StringConst.COMPANY_5_ROLE_3,
//     ],
//     location: StringConst.LOCATION_5,
//     duration: StringConst.DURATION_5,
//   ),
//   ExperienceData(
//     company: StringConst.COMPANY_4,
//     position: StringConst.POSITION_4,
//     companyUrl: StringConst.COMPANY_4_URL,
//     roles: [
//       StringConst.COMPANY_4_ROLE_1,
//       StringConst.COMPANY_4_ROLE_2,
//       StringConst.COMPANY_4_ROLE_3,
//     ],
//     location: StringConst.LOCATION_4,
//     duration: StringConst.DURATION_4,
//   ),
//   ExperienceData(
//     company: StringConst.COMPANY_3,
//     position: StringConst.POSITION_3,
//     companyUrl: StringConst.COMPANY_3_URL,
//     roles: [
//       StringConst.COMPANY_3_ROLE_1,
//       StringConst.COMPANY_3_ROLE_2,
//       StringConst.COMPANY_3_ROLE_3,
//     ],
//     location: StringConst.LOCATION_3,
//     duration: StringConst.DURATION_3,
//   ),
//   ExperienceData(
//     company: StringConst.COMPANY_2,
//     position: StringConst.POSITION_2,
//     companyUrl: StringConst.COMPANY_2_URL,
//     roles: [
//       StringConst.COMPANY_2_ROLE_1,
//       StringConst.COMPANY_2_ROLE_2,
//       StringConst.COMPANY_2_ROLE_3,
//     ],
//     location: StringConst.LOCATION_2,
//     duration: StringConst.DURATION_2,
//   ),
// ];
}


class ProjectsConstant{
  ///Android links
  static const String flutterImageWidget = "https://pub.dev/packages/flutter_image_widget";
  static const String pregnancyAndroidApp = "https://play.google.com/store/apps/details?id=com.pregnancyapp";
  static const String dynastyUserAndroidApp = "https://play.google.com/store/apps/details?id=com.dynasty_user_side.dynasty_user_side";
  static const String dynastyDriverAndroidApp = "https://play.google.com/store/apps/details?id=com.dynasty_driver_side.dynasty_driver_side";
  static const String logisxTruckerAndroidApp = "https://play.google.com/store/apps/details?id=com.logisx_trucker.logisx_trucker";
  static const String logisxShipperAndroidApp = "https://play.google.com/store/apps/details?id=com.logisx_shipper.logisx_shipper&pli=1";
  // static const String AndroidApp = "https://play.google.com/store/apps/details?id=";

  ///iOS links
  // static const String pregnancyIOSApp = "";
  static const String dynastyUserIOSApp = "";
  static const String dynastyDriverIOSApp = "";
  static const String logisxTruckerIOSApp = "https://apps.apple.com/us/app/logisx-carrier/id6464472559";
  static const String logisxShipperIOSApp = "https://apps.apple.com/app/logisx-shipper/id6464270435";
  // static const String IOSApp = "";

}


///Details of Project
class Projects {



  ///LIST
  static List<ProjectItemData> projects = [
    Projects.DISNEY_PLUS,
    Projects.FLUTTER_CATALOG,
    Projects.DROP,
    Projects.ROAM,
    Projects.LOGIN_CATALOG,
    Projects.FOODY_BITE,
    Projects.NIMBUS,
    Projects.AERIUM,
    Projects.AERIUM_V2,
    Projects.OUTFITR,
  ];

  ///noteworthyProjects
  static List<NoteWorthyProjectDetails> noteworthyProjects = [
    NoteWorthyProjectDetails(
      projectName: StringConst.UDAGRAM_IMAGE_FILTERING,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.UDAGRAM_IMAGE_FILTERING_TECH,
      projectDescription: StringConst.UDAGRAM_IMAGE_FILTERING_DETAIL,
      gitHubUrl: StringConst.UDAGRAM_IMAGE_FILTERING_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.SERVERLESS_TODO,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.SERVERLESS_TODO_TECH,
      projectDescription: StringConst.SERVERLESS_TODO_DETAIL,
      gitHubUrl: StringConst.SERVERLESS_TODO_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.PYTHON_ALGORITHMS,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.PYTHON,
      projectDescription: StringConst.PYTHON_ALGORITHMS_DETAIL,
      gitHubUrl: StringConst.PYTHON_ALGORITHMS_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.PROGRAMMING_FOR_DATA_SCIENCE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.PYTHON,
      projectDescription: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_DETAIL,
      gitHubUrl: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.ONBOARDING_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.ONBOARDING_APP_DETAIL,
      gitHubUrl: StringConst.ONBOARDING_APP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.FINOPP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.FINOPP_DETAIL,
      gitHubUrl: StringConst.FINOPP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.AMOR_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: true,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.AMOR_APP_DETAIL,
      gitHubUrl: StringConst.AMOR_APP_GITHUB_URL,
      webUrl: StringConst.AMOR_APP_WEB_URL,
      isLive: true,
    ),
  ];

  ///Project Details
  static ProjectItemData DISNEY_PLUS = ProjectItemData(
    title: StringConst.DISNEY_PLUS,
    subtitle: StringConst.DISNEY_PLUS,
    platform: StringConst.DISNEY_PLUS_PLATFORM,
    primaryColor: AppColors.disneyPlus,
    image: ImagePath.DISNEY_PLUS_COVER,
    coverUrl: ImagePath.DISNEY_PLUS_SCREENS,
    navSelectedTitleColor: AppColors.flutterCatalogSelectedNavTitle,
    appLogoColor: AppColors.flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.DISNEY_PLUS_1,
      ImagePath.DISNEY_PLUS_2,
      ImagePath.DISNEY_PLUS_3,
      ImagePath.DISNEY_PLUS_4,
      ImagePath.DISNEY_PLUS_5,
      ImagePath.DISNEY_PLUS_6,
      ImagePath.DISNEY_PLUS_7,
      ImagePath.DISNEY_PLUS_8,
      ImagePath.DISNEY_PLUS_9,
      ImagePath.DISNEY_PLUS_10,
      ImagePath.DISNEY_PLUS_11,
      ImagePath.DISNEY_PLUS_12,
      ImagePath.DISNEY_PLUS_13,
    ],
    category: StringConst.DISNEY_PLUS_CATEGORY,
    portfolioDescription: StringConst.DISNEY_PLUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.JETPACK_COMPOSE,
    gitHubUrl: StringConst.DISNEY_PLUS_GITHUB_URL,
    playStoreUrl: StringConst.DISNEY_PLUS_PLAYSTORE_URL,
  );
  static ProjectItemData FLUTTER_CATALOG = ProjectItemData(
    title: StringConst.FLUTTER_CATALOG,
    subtitle: StringConst.FLUTTER_CATALOG,
    platform: StringConst.FLUTTER_CATALOG_PLATFORM,
    primaryColor: AppColors.flutter_catalog,
    image: ImagePath.FLUTTER_CATALOG_COVER,
    coverUrl: ImagePath.FLUTTER_CATALOG_COVER,
    navSelectedTitleColor: AppColors.flutterCatalogSelectedNavTitle,
    appLogoColor: AppColors.flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.FLUTTER_CATALOG_SCREENS,
      ImagePath.FLUTTER_CATALOG_1,
      ImagePath.FLUTTER_CATALOG_2,
      ImagePath.FLUTTER_CATALOG_3,
      ImagePath.FLUTTER_CATALOG_4,
      ImagePath.FLUTTER_CATALOG_5,
    ],
    category: StringConst.FLUTTER_CATALOG_CATEGORY,
    portfolioDescription: StringConst.FLUTTER_CATALOG_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.FLUTTER_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.FLUTTER_CATALOG_PLAYSTORE_URL,
  );
  static ProjectItemData DROP = ProjectItemData(
    title: StringConst.DROP,
    subtitle: StringConst.DROP,
    platform: StringConst.DROP_PLATFORM,
    primaryColor: AppColors.drop,
    image: ImagePath.DROP_COVER,
    category: StringConst.DROP_CATEGORY,
    designer: StringConst.DROP_DESIGNER,
    coverUrl: ImagePath.DROP_COVER,
    navTitleColor: AppColors.dropNavTitle,
    navSelectedTitleColor: AppColors.dropSelectedNavTitle,
    appLogoColor: AppColors.dropAppLogo,
    projectAssets: [
      ImagePath.DROP_DESC,
      ImagePath.DROP_FLOW_CHART,
      ImagePath.DROP_WIREFRAMES,
      ImagePath.DROP_MINIMAL_DESIGN,
      ImagePath.DROP_EASY_ACCESS,
      ImagePath.DROP_SIMPLE,
      ImagePath.DROP_THANKS,
    ],
    portfolioDescription: StringConst.DROP_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.DROP_GITHUB_URL,
    playStoreUrl: StringConst.DROP_PLAYSTORE_URL,
  );
  static ProjectItemData ROAM = ProjectItemData(
    title: StringConst.ROAM,
    subtitle: StringConst.ROAM,
    primaryColor: AppColors.roam,
    category: StringConst.ROAM_CATEGORY,
    designer: StringConst.ROAM_DESIGNER,
    platform: StringConst.ROAM_PLATFORM,
    image: ImagePath.ROAM_COVER,
    coverUrl: ImagePath.ROAM_COVER,
    navTitleColor: AppColors.roamNavTitle,
    navSelectedTitleColor: AppColors.roamSelectedNavTitle,
    appLogoColor: AppColors.roamAppLogo,
    projectAssets: [
      ImagePath.ROAM_OVERALL,
      ImagePath.ROAM_ONBOARDING,
      ImagePath.ROAM_HOME,
      ImagePath.ROAM_EXPLORE,
      ImagePath.ROAM_PROFILE,
      ImagePath.ROAM_FLOW_CHART,
      ImagePath.ROAM_WIREFRAMES_1,
      ImagePath.ROAM_WIREFRAMES_2,
      ImagePath.ROAM_WIREFRAMES_3,
    ],
    portfolioDescription: StringConst.ROAM_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.ROAM_GITHUB_URL,
    playStoreUrl: StringConst.ROAM_PLAYSTORE_URL,
  );
  static ProjectItemData LOGIN_CATALOG = ProjectItemData(
    title: StringConst.LOGIN_CATALOG,
    primaryColor: AppColors.login_catalog,
    subtitle: StringConst.LOGIN_CATALOG,
    category: StringConst.LOGIN_CATALOG_CATEGORY,
    platform: StringConst.LOGIN_CATALOG_PLATFORM,
    image: ImagePath.LOGIN_CATALOG_COVER,
    coverUrl: ImagePath.LOGIN_CATALOG_COVER,
    portfolioDescription: StringConst.LOGIN_CATALOG_DETAIL,
    navTitleColor: AppColors.loginCatalogNavTitle,
    navSelectedTitleColor: AppColors.loginCatalogSelectedNavTitle,
    appLogoColor: AppColors.loginCatalogAppLogo,
    projectAssets: [
      ImagePath.LOGIN_DESIGN_4,
      ImagePath.LOGIN_DESIGN_5,
      ImagePath.LOGIN_DESIGN_7,
      ImagePath.LOGIN_DESIGN_8,
      ImagePath.LOGIN_DESIGN_9,
    ],
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.LOGIN_CATALOG_PLAYSTORE_URL,
  );
  static ProjectItemData FOODY_BITE = ProjectItemData(
    title: StringConst.FOODY_BITE,
    subtitle: StringConst.FOODY_BITE_SUBTITLE,
    category: StringConst.FOODY_BITE_CATEGORY,
    designer: StringConst.FOODY_BITE_DESIGNER,
    primaryColor: AppColors.foodybite,
    platform: StringConst.FOODY_BITE_PLATFORM,
    image: ImagePath.FOODY_BITE_COVER,
    coverUrl: ImagePath.FOODY_BITE_COVER,
    navTitleColor: AppColors.foodybiteNavTitle,
    navSelectedTitleColor: AppColors.foodybiteSelectedNavTitle,
    appLogoColor: AppColors.foodybiteAppLogo,
    projectAssets: [
      ImagePath.FOODY_BITE_HOME,
      ImagePath.FOODY_BITE_STARTING_FLOW,
      ImagePath.FOODY_BITE_HOME_FLOW,
      ImagePath.FOODY_BITE_REVIEW_FLOW,
      ImagePath.FOODY_BITE_TYPOGRAPHY,
    ],
    portfolioDescription: StringConst.FOODY_BITE_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
    playStoreUrl: StringConst.FOODY_BITE_PLAYSTORE_URL,
  );
  static ProjectItemData NIMBUS = ProjectItemData(
    title: StringConst.NIMBUS,
    subtitle: StringConst.NIMBUS,
    primaryColor: AppColors.nimbus,
    platform: StringConst.NIMBUS_PLATFORM,
    category: StringConst.NIMBUS_CATEGORY,
    designer: StringConst.NIMBUS_DESIGNER,
    image: ImagePath.NIMBUS_COVER,
    coverUrl: ImagePath.NIMBUS_COVER,
    navTitleColor: AppColors.nimbusNavTitle,
    navSelectedTitleColor: AppColors.nimbusSelectedNavTitle,
    projectAssets: [
      ImagePath.NIMBUS,
    ],
    portfolioDescription: StringConst.NIMBUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.NIMBUS_GITHUB_URL,
    webUrl: StringConst.NIMBUS_WEB_URL,
  );
  static ProjectItemData AERIUM = ProjectItemData(
    title: StringConst.AERIUM,
    subtitle: StringConst.AERIUM_SUBTITLE,
    primaryColor: AppColors.aerium_v1,
    platform: StringConst.AERIUM_PLATFORM,
    category: StringConst.AERIUM_CATEGORY,
    designer: StringConst.AERIUM_DESIGNER,
    image: ImagePath.AERIUM_COVER,
    coverUrl: ImagePath.AERIUM_COVER,
    navTitleColor: AppColors.aeriumV1NavTitle,
    projectAssets: [
      ImagePath.AERIUM_COVER,
      ImagePath.AERIUM_DESIGN_2,
      ImagePath.AERIUM_DESIGN_3,
    ],
    portfolioDescription: StringConst.AERIUM_DETAIL,
    isPublic: true,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.AERIUM_GITHUB_URL,
    webUrl: StringConst.AERIUM_WEB_URL,
  );
  static ProjectItemData AERIUM_V2 = ProjectItemData(
    title: StringConst.AERIUM_V2,
    subtitle: StringConst.AERIUM_V2_SUBTITLE,
    category: StringConst.AERIUM_V2_CATEGORY,
    designer: StringConst.AERIUM_V2_DESIGNER,
    primaryColor: AppColors.aerium_v1,
    platform: StringConst.AERIUM_V2_PLATFORM,
    image: ImagePath.AERIUM_V2_LAST,
    coverUrl: ImagePath.AERIUM_V2_LAST,
    portfolioDescription: StringConst.AERIUM_V2_DETAIL,
    projectAssets: [
      ImagePath.AERIUM_V2_OVERALL,
      ImagePath.AERIUM_V2_FIRST,
      ImagePath.AERIUM_V2_TYPOGRAPHY,
      ImagePath.AERIUM_V2_LAST,
    ],
    isPublic: true,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.AERIUM_V2_GITHUB_URL,
    webUrl: StringConst.AERIUM_V2_WEB_URL,
  );
  static ProjectItemData OUTFITR = ProjectItemData(
    title: StringConst.OUTFITR,
    subtitle: StringConst.OUTFITR_SUBTITLE,
    category: StringConst.OUTFITR_CATEGORY,
    primaryColor: AppColors.outfitr,
    platform: StringConst.OUTFITR_PLATFORM,
    image: ImagePath.OUTFITR_COVER,
    coverUrl: ImagePath.OUTFITR_1,
    portfolioDescription: StringConst.OUTFITR_DETAIL,
    navTitleColor: AppColors.outfitrNavTitle,
    navSelectedTitleColor: AppColors.outfitrSelectedNavTitle,
    appLogoColor: AppColors.outfitrAppLogo,
    projectAssets: [
      ImagePath.OUTFITR_2,
      ImagePath.OUTFITR_4,
      ImagePath.OUTFITR_5,
      ImagePath.OUTFITR_6,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.OUTFITR_GITHUB_URL,
    webUrl: StringConst.OUTFITR_WEB_URL,
  );
}