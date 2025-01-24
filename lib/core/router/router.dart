import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/pages/home/home_page.dart';
import 'package:coffee_shop/pages/onboarding_page/onboarding_page.dart';
import 'package:coffee_shop/pages/splash_page/splash_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
