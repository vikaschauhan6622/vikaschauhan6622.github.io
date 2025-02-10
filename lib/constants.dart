import 'package:folio/utils/constant/strings.dart';
import 'package:url_launcher/url_launcher.dart';

/// URL Launcher
void openURL(String url) => launchUrl(
      Uri.parse(url),
    );

/// Tools & Tech
final kTools = [
  StringConst.FLUTTER,
  StringConst.Dart,
  StringConst.PYTHON,
  // StringConst.Swift,
  StringConst.ANDROID,
  // StringConst.KOTLIN,
  StringConst.SQL,
  // StringConst.HTML_CSS,
];

