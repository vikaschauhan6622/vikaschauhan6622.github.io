import 'package:flutter/material.dart';
import 'package:folio/sections/home/project_detail_page.dart';
import 'package:folio/sections/home/projects_list.dart';
import 'package:folio/sections/main/main_section.dart';

typedef PathWidgetBuilder = Widget Function(
    BuildContext, String? );

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;

  final PathWidgetBuilder builder;
}

class RouteConfiguration {

  static List<Path> paths = [
    ///homePageRoute
    Path(
      r'^' + MainPage.homePageRoute,
      (context, matches) => const MainPage(),
    ),
    ///worksPageRoute
    Path(
      r'^' + WorksPage.worksPageRoute,
      (context, matches) => const WorksPage(),
    ),
    ///projectDetailPageRoute
    Path(
      r'^' + ProjectDetailPage.projectDetailPageRoute,
      (context, matches) => const ProjectDetailPage(),
    ),

  ];

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name!)) {
        final firstMatch = regExpPattern.firstMatch(settings.name!)!;
        final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
        return NoAnimationMaterialPageRoute<void>(
          builder: (context) => path.builder(context, match),
          settings: settings,
        );
      }
    }
    // If no match is found, [WidgetsApp.onUnknownRoute] handles it.
    return null;
  }

}

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
