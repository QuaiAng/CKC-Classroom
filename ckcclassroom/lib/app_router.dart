import 'package:ckcclassroom/presentation/pages/LoginScreen.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String loginScreen = "/login";
  static const String registerScreen = "/register";
  static const String homeScreen = "/home";
  static const String cartScreen = "/cart";
  static const String detailScreen = "/detail";
  static const String verifyotpScreen = "/verifyotp";
  static const String detaiListProductScreen = "/detaillistproduct";
  static const String paymentScreen = "/payment";
  static const String voucherScreen = "/vouchers";
  static const String mainScreen = "/main";
  static const String detailsearchScreen = "/detailsearch";
  static const String splashScreen = "";
  static const String searchScreen = "/search";
  static const String detailvoucherScreen = "/detailvoucher";
  static const String editinfoScreen = "/editinfo";
  static const String paymentmethodScreen = "/paymentmethod";
  static const String forgotPasswordScreen = "/forgotpassword";
  static const String orderStatusScreen = "/orderstatus";
  static const String settingScreen = "/setting";
  static const String detailShopScreen = "/detailShop";
  static const String addressScreen = "/address";
  static const String shopManagementScreen = "/shopmanagement";
  static const String feedBackscreen = "/feedback";
  static const String changePasswordScreen = "/changepassword";
  static const String resultSearchScreen = "/resultsearch";
  static const String filterRevenue = "/filterrevenue";

  static const String addvoucherscreen = "/addvoucher";
  static const String orderManagementScreen = "/ordermanagement";

  static const String detailProductScreen = "/detailproductscreen";
  static const String waitingForApprovalScreen = "/waitingforapproval";
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //  case '/login':
      //   // Expecting an argument for login screen
      //   final Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;
      //   return MaterialPageRoute(
      //     builder: (_) => Loginscreen(
      //       username: args?['username'] ?? '',
      //     ),
      //   );

      //Màn hình chờ
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (_) => const Loginscreen());
      // //Màn hình chờ
      // case RouteName.waitingForApprovalScreen:
      //   return MaterialPageRoute(builder: (_) => Waitingforapprovalscreen());
      // //Màn hình chờ
      // case RouteName.resultSearchScreen:
      //   return MaterialPageRoute(builder: (_) => const Resultsearchscreen());
      // //Màn hình chính dùng để điều hướng đến các màn hình khác
      // case RouteName.mainScreen:
      //   return MaterialPageRoute(builder: (_) => const Mainscreen());
      // //Màn hình xem chi tiết danh sách sản phẩm
      // case RouteName.detaiListProductScreen:
      //   return MaterialPageRoute(builder: (_) => const Bestsellerlist());
      // case RouteName.homeScreen:
      //   return MaterialPageRoute(
      //       builder: (_) => const Homescreen(address: "address"));
      // //Màn hình thanh toán

      // case RouteName.paymentScreen:
      //   return MaterialPageRoute(builder: (_) => const Paymentscreen());
      // //Màn hình đăng nhập
      // case RouteName.loginScreen:
      //   return MaterialPageRoute(builder: (_) => const Loginscreen());
      // //Màn hình đăng ký
      // case RouteName.registerScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const Registerscreen(),
      //   );
      // //Màn hình xác thực mã OTP
      // case RouteName.verifyotpScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const Verifyotpscreen(),
      //   );
      // //Màn hình danh sách vouchers
      // case RouteName.voucherScreen:
      //   return MaterialPageRoute(builder: (_) => const Voucherscreen());
      // //Màn hình chi tiết voucher
      // case RouteName.detailvoucherScreen:
      //   return MaterialPageRoute(builder: (_) => const VoucherDetailScreen());
      // //Màn hình tìm kiếm
      // case RouteName.searchScreen:
      //   return MaterialPageRoute(builder: (_) => const Searchscreen());
      // //Màn hình tìm kiếm món ăn
      // case RouteName.detailsearchScreen:
      //   return MaterialPageRoute(builder: (_) => const Detailsearchscreen());
      // //Man hình giỏ hàng
      // case RouteName.cartScreen:
      //   return MaterialPageRoute(builder: (_) => const Cartscreen());
      // case RouteName.editinfoScreen:
      //   return MaterialPageRoute(builder: (_) => const Editinfoscreen());
      // //Man hình phương thức thanh toán
      // case RouteName.paymentmethodScreen:
      //   return MaterialPageRoute(builder: (_) => const Paymentmethodscreen());
      // //Man hình quên mật khẩu
      // case RouteName.forgotPasswordScreen:
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      // //Man hình theo dõi trạng thái đơn hàng
      // case RouteName.orderStatusScreen:
      //   return MaterialPageRoute(builder: (_) => const Orderstatusscreen());
      // case RouteName.changePasswordScreen:
      //   return MaterialPageRoute(builder: (_) => const Changepasswordscreen());
      // //Man hình cài đặt
      // case RouteName.settingScreen:
      //   return MaterialPageRoute(
      //       builder: (_) => const SettingScreen(
      //             imagePath: "assets/images/icon.png",
      //           ));
      // //Man hình cài đặt
      // case RouteName.detailShopScreen:
      //   return MaterialPageRoute(builder: (_) => const Detailshopscreen());
      // case RouteName.addressScreen:
      //   return MaterialPageRoute(builder: (_) => const Addressscreen());
      // case RouteName.shopManagementScreen:
      //   return MaterialPageRoute(builder: (_) => const Shopmanagementscreen());
      // case RouteName.feedBackscreen:
      //   return MaterialPageRoute(builder: (_) => const Feedbackscreen());

      // case RouteName.filterRevenue:
      //   return MaterialPageRoute(builder: (_) => const Filterrevenuescreen());
      // // case RouteName.addvoucherscreen:
      // // return MaterialPageRoute(builder: (_) => const Addvoucherscreen());
      // case RouteName.orderManagementScreen:
      //   return MaterialPageRoute(
      //       builder: (_) => const Ordermanagementscreen(role: false));

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 Not Found')),
          ),
        );
    }
  }
}
