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

//15-2-25
//git checkout -b gh-pages
// git push origin gh-pages

///🌟 Step 1: Switch to the finalCode Branch
//git switch finalCode

/// 🌟 Step 2: Make Changes and Push to finalCode
// git add .
// git commit -m "Updated code in finalCode branch"
// git push origin finalCode

/// 🌟 Step 3: Build the Flutter Web App
// flutter build web --base-href="/"

/// 🌟 Step 4: Switch to gh-pages for Deployment
// git switch gh-pages
// git add .
// git commit -m "Save changes before switching to gh-pages"
// git switch gh-pages

/// 🌟 Step 5: Clean Old Deployment
// git rm -rf .
// git commit -m "Remove old deployment files"

/// 🌟 Step 6: Copy New Web Build Files
// cp -r build/web/* .
// rm -rf build  # Optional: Remove build folder after copying

/// 🌟 Step 7: Commit and Push to GitHub Pages
// git add .
// git commit -m "Deploy new build from finalCode"
// git push origin gh-pages --force

///Regular Working commands
//flutter build web --base-href="/"
//git add .
//git commit -m "15.2_FEB_2025 == Deploy new build from gh-pages"
//git push origin gh-pages --force







