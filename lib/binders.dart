import 'package:get/get.dart';
import 'package:practice_6sep/routes.dart';
import 'package:practice_6sep/ui/screens/dashboard/dashboard_controller.dart';
import 'package:practice_6sep/ui/screens/dashboard/dashboard_screen.dart';
import 'package:practice_6sep/ui/screens/introduction/introduction_controller.dart';
import 'package:practice_6sep/ui/screens/introduction/introduction_screen.dart';
import 'package:practice_6sep/ui/screens/search_screen/search_controller.dart';
import 'package:practice_6sep/ui/screens/search_screen/search_screen.dart';
import 'package:practice_6sep/ui/screens/splashscreen/splash_controller.dart';
import 'package:practice_6sep/ui/screens/splashscreen/splash_screen.dart';

class Binders {
  static get clips => null;

  static List<GetPage> dependencies() {
    return [
      GetPage(
        name: Routes.dashboardScreen,
        page: () => const DashboardScreen(),
        binding: BindingsBuilder.put(
          () => DashboardController(),
        ),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.introductionScreen,
        page: () => const IntroductionScreen(),
        binding: BindingsBuilder.put(
              () => IntroductionController(),
        ),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreen(),
        binding: BindingsBuilder.put(
              () => SplashController(),
        ),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.searchScreen,
        page: () => const SearchScreen(),
        binding: BindingsBuilder.put(
              () => SearchController(),
        ),
        transition: Transition.fadeIn,
      ),
    ];
  }
}
