import 'dart:io';
import 'package:ckcclassroom/app_router.dart';
import 'package:ckcclassroom/data/repositoties/UserRepository.dart';
import 'package:ckcclassroom/data/services/UserService.dart';
import 'package:ckcclassroom/presentation/states/LoginScreenViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MultiProvider(
    providers: [
      // Cung cấp UserService
      Provider(create: (_) => Userservice()),
      // Provider(create: (_) => Addressservice()),
      // Provider(create: (_) => Productservice()),
      // Provider(create: (_) => Voucherservice()),
      // Provider(create: (_) => Shopservice()),
      // Provider(create: (_) => Orderservice()),

      // Provider(create: (_) => Cartservice()),

      // Provider(create: (_) => Categoryservice()),
      // Provider(create: (_) => Reviewservice()),

      // Cung cấp UserRepository (phụ thuộc vào UserService)
      ProxyProvider<Userservice, Userrepository>(
        update: (context, userService, _) => Userrepository(userService),
      ),
      // ProxyProvider<Cartservice, CartRepository>(
      //   update: (context, cartService, _) => CartRepository(cartService),
      // ),
      // ProxyProvider<Orderservice, Orderrepository>(
      //     update: (context, orderService, _) => Orderrepository(orderService)),

      // ProxyProvider<Addressservice, Addressrepository>(
      //     update: (context, addressService, _) =>
      //         Addressrepository(addressService)),
      // ProxyProvider<Productservice, Productrepository>(
      //     update: (context, productService, _) =>
      //         Productrepository(productService)),
      // ProxyProvider<Voucherservice, Voucherrepository>(
      //     update: (context, voucherService, _) =>
      //         Voucherrepository(voucherService)),

      // ProxyProvider<Shopservice, Shoprepository>(
      //     update: (context, shopService, _) => Shoprepository(shopService)),
      // ProxyProvider<Categoryservice, Categoryrepository>(
      //     update: (context, categoryService, _) =>
      //         Categoryrepository(categoryService)),

      // ProxyProvider<Reviewservice, Reviewrepository>(
      //     update: (context, reviewService, _) =>
      //         Reviewrepository(reviewService)),

      // ProxyProvider<Addressservice, Addressrepository>(
      //     update: (context, addressService, _) =>
      //         Addressrepository(addressService)),
      // ProxyProvider<Productservice, Productrepository>(
      //     update: (context, productService, _) =>
      //         Productrepository(productService)),

      // ChangeNotifierProvider(create: (_) => AppProvier()),
      ChangeNotifierProvider(
          create: (context) =>
              Loginscreenviewmodel(context.read<Userrepository>())),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Changepasswordviewmodel(context.read<Userrepository>())),
      // ChangeNotifierProvider(create: (_) => Detailsearchviewmodel()),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Editinfoviewmodel(context.read<Userrepository>())),
      // ChangeNotifierProvider(create: (_) => Forgotpasswordviewmodel()),
      // ChangeNotifierProvider(
      //     create: (context) => Loginviewmodel(context.read<Userrepository>())),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         OrderStatusViewModel(context.read<Orderrepository>())),

      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Registerviewmodel(context.read<Userrepository>())),
      // ChangeNotifierProvider(create: (_) => Verifyotpviewmodel()),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Settingviewmodel(context.read<Userrepository>())),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Addressviewmodel(context.read<Addressrepository>())),
      // ChangeNotifierProvider(
      //     create: (context) => Shopviewmodel(context.read<Shoprepository>())),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Resultsearchviewmodel(context.read<Productrepository>())),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Paymentviewmodel(context.read<Userrepository>())),

      // ChangeNotifierProvider(create: (_) => Filterrevenueviewmodel()),
      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Voucherviewmodel(context.read<Voucherrepository>())),

      // ChangeNotifierProvider(create: (_) => Detailproductscreenviewmodel()),

      // // ChangeNotifierProvider(create: (_) => Addvoucherviewmodel())

      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Categoryviewmodel(context.read<Categoryrepository>())),

      // ChangeNotifierProvider(
      //     create: (context) =>
      //         Reviewviewmodel(context.read<Reviewrepository>())),
    ],
    child: const MainApp(),
  ));
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const MaterialApp(
        initialRoute: RouteName.loginScreen,
        onGenerateRoute: AppRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        // home: Detailordershop(),
      ),
    );
  }
}
