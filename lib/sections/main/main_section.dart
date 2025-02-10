import 'package:folio/aavid_legend_files/widget/animated_footer.dart';
import 'package:folio/aavid_legend_files/widget/simple_footer.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/app.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/provider/drawer_provider.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/utils/constant/constant.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/navbar_actions_button.dart';
import 'package:folio/widget/navbar_logo.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:folio/constants.dart';
import 'package:folio/widget/arrow_on_top.dart';

class MainPage extends StatefulWidget {
  static const String homePageRoute = "HomePage";
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            ///All Screens
            Body(),
            ///Arrow to scroll TOP
            const ArrowOnTop(),
            ///Nav Bar
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}


/// Body
class Body extends StatelessWidget {
  Body({super.key});

  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return ListView.builder(
      controller: scrollProvider.controller,
      itemCount: views.length,
      itemBuilder: (context, index) => views[index],
    );
  }

   List<Widget> views = [
    const HomePage(),
    const About(),
    const Services(),
    const Portfolio(),
    const Contact(),
    // const Footer(),
     AnimatedFooter(),
  ];


}


///NavbarDesktop
class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: Space.all(),
      color:Colors.white,
      child: Row(
        children: [
          NavBarLogo(),
          Space.xm!,
          ...Constant.names.asMap().entries.map(
                (e) => NavBarActionButton(
              label: e.value,
              index: e.key,
            ),
          ),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: AppTheme.c!.primary!,
                ),
              ),
              onPressed: () {
                html.window.open(
                  StaticUtils.resume,
                  "pdf",
                );
              },
              child: Padding(
                padding: Space.all(1.25, 0.45),
                child: Text(
                  Constant.resume,
                  style: AppText.l1b,
                ),
              ),
            ),
          ),
          Space.x!,
          // Switch(
          //   inactiveTrackColor: Colors.grey,
          //   value: appProvider.isDark,
          //   onChanged: (value) {
          //     appProvider.setTheme(
          //       !value ? ThemeMode.light : ThemeMode.dark,
          //     );
          //   },
          //   activeColor: AppTheme.c!.primary!,
          // ),
          Space.x!,
        ],
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    final appProvider = Provider.of<AppProvider>(context);

    return Padding(
      padding: Space.v!,
      child: Row(
        children: [
          Space.x1!,
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          Space.xm!,
          NavBarLogo(),
          Space.x1!,
        ],
      ),
    );
  }
}

///MobileDrawer
class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: NavBarLogo(),
              ),
              const Divider(),
              // ListTile(
              //   leading: Icon(
              //     Icons.light_mode,
              //     color: AppTheme.c!.primary!,
              //   ),
                // title: const Text(
                //   Constant.darkMode,
                // ),
                // trailing: Switch(
                //   inactiveTrackColor: Colors.grey,
                //   value: appProvider.isDark,
                //   onChanged: (value) {
                //     appProvider
                //         .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                //   },
                //   activeColor: AppTheme.c!.primary,
                // ),
              // ),
              // const Divider(),
              ...Constant.names.asMap().entries.map(
                    (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    hoverColor: AppTheme.c!.primary!.withAlpha(70),
                    onPressed: () {
                      scrollProvider.scrollMobile(e.key);
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(
                        Constant.icons[e.key],
                        color: AppTheme.c!.primary,
                      ),
                      title: Text(
                        e.value,
                        style: AppText.l1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: AppTheme.c!.primary!)),
                  onPressed: () => openURL(StaticUtils.resume),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      Constant.resume,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
