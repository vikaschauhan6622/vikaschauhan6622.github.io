import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:folio/aavid_legend_files/configure_web.dart';
import 'package:folio/aavid_legend_files/widget/routes.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/provider/drawer_provider.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:folio/sections/main/main_section.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:get/get.dart';
import 'package:layout/layout.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:folio/configs/core_theme.dart' as theme;

import 'sections/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();
  configureApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: Consumer<AppProvider>(
        builder: (context, value, _) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatefulWidget {
  final AppProvider provider;
  const MaterialChild({Key? key, required this.provider}) : super(key: key);

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constant.firstName,
        theme: theme.themeLight,
        themeMode: widget.provider.themeMode,
        initialRoute: MainPage.homePageRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
      ),
    );
  }
}

/// switch branch
//git switch finalCode
// git switch gh-pages


///🌟 Step 1: Remove the Existing Build from GitHub Pages
//git checkout gh-pages
//Delete all existing files from the gh-pages branch:   git rm -rf .
// git commit -m "Remove old web build"
// git push origin gh-pages --force

/// 🌟 Step 2: Switch Back to Main Development Branch
// git checkout main  # or git checkout finalCode
// git pull origin main  # or git pull origin finalCode

/// 🌟 Step 3: Build the Flutter Web App
// flutter build web --base-href="/"

/// 🌟 Step 4: Switch to gh-pages for Deployment
//Copy-Item -Recurse -Force build/web/* .      for macOS = cp -r build/web/* .
// git switch gh-pages
// git add .
// git commit -m "Deploy new Flutter web build"
// git push origin gh-pages --force










