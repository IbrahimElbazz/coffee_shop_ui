import 'package:coffee_shop/core/routing/app_router.dart';
import 'package:coffee_shop/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CoffeeShop extends StatelessWidget {
  CoffeeShop({super.key});
  final currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return ToastificationWrapper(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Coffe Shop',
            onGenerateRoute: appRouter.generateRoute,
            initialRoute:
                currentUser != null ? Routes.appNavigation : Routes.splash,
          ),
        );
      },
    );
  }
}
