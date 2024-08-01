import 'package:get/get.dart';
import 'package:hst_project/view/action_menu/action_menu_view.dart';
import 'package:hst_project/view/assistant/assistant_view.dart';
import 'package:hst_project/view/auth_main/auth_main_view.dart';
import 'package:hst_project/view/get_money/get_money_view.dart';
import 'package:hst_project/view/home/home_view.dart';
import 'package:hst_project/view/login/login_view.dart';
import 'package:hst_project/view/notifications/notificaitons_view.dart';
import 'package:hst_project/view/payment/pay_card/pay_card_view.dart';
import 'package:hst_project/view/payment/pay_contactless/pay_contactless_view.dart';
import 'package:hst_project/view/payment/pay_link/pay_link_view.dart';
import 'package:hst_project/view/payment/pay_qr/pay_qr_view.dart';
import 'package:hst_project/view/payment/payment_view.dart';
import 'package:hst_project/view/sales/sales_view.dart';
import 'package:hst_project/view/register/register_view.dart';
import 'package:hst_project/view/settings/settings_view.dart';
import 'package:hst_project/view/splash/splash_view.dart';
import 'package:hst_project/res/routes/routes_constants.dart';
import 'package:hst_project/view_models/bindings/action_menu_binding.dart';
import 'package:hst_project/view_models/bindings/get_money_binding.dart';
import 'package:hst_project/view_models/bindings/home_binding.dart';
import 'package:hst_project/view_models/bindings/sales_binding.dart';
import 'package:hst_project/view_models/bindings/settings_binding.dart';
import 'package:hst_project/view_models/controllers/payment/pay_qr/pay_qr_view_model.dart';

class AppRoutes {
  
  static List<GetPage> appRoutes() => [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () => SplashView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.authMainView,
      page: () => AuthMainView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.loginView,
      page: () => LoginView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.registerView,
      page: () => RegisterView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.homeView,
      page: () => HomeView(),
      binding: HomeBinding(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.settingsView,
      page: () => SettingsView(),
      binding: SettingsBinding(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.actionMenuView,
      page: () => ActionMenuView(),
      binding: ActionMenuBinding(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.getMoneyView,
      page: () => GetMoneyView(),
      binding: GetMoneyBinding(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.salesView,
      page: () => SalesView(),
      binding: SalesBinding(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.payCardView,
      page: () => PayCardView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.payLinkView,
      page: () => PayLinkView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.payContactlessView,
      page: () => PayContactlessView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.notificaitonsView,
      page: () => NotificaitonsView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.assistantView,
      page: () => AssistantView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.paymentView,
      page: () => PaymentView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: RoutesConstants.payQRView,
      page: () => PayQRView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.rightToLeftWithFade,
    ),
    
  ];
}
