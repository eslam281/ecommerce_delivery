
import 'package:delivery/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:delivery/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:delivery/view/screen/auth/signup.dart';
import 'package:delivery/view/screen/auth/success_sinup.dart';
import 'package:delivery/view/screen/auth/verfiycodesignup.dart';
import 'package:delivery/view/screen/home/home.dart';
import 'package:delivery/view/screen/home/homescreen.dart';
import 'package:delivery/view/screen/initialstart/language.dart';
import 'package:delivery/view/screen/initialstart/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'view/screen/auth/forgetpassword/verfiycode.dart';
import 'view/screen/auth/login.dart';

List<GetPage<dynamic>>? routes=[
  //language
  GetPage(name: "/", page: ()=>  const Language(),middlewares: [
    MyMiddleWare()
  ]),

  //OnBoarding
  GetPage(name: AppRoute.onBoarding, page: ()=> const OnBoarding()),

  //Auth
  GetPage(name: AppRoute.login, page: ()=> const Login()),
  GetPage(name: AppRoute.signUp, page: ()=> const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: ()=> const ForgetPassword()),
  GetPage(name: AppRoute.verFiyCode, page: ()=> const VerFiyCode()),
  GetPage(name: AppRoute.resetPassword, page: ()=> const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword, page: ()=> const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: ()=> const SuccessSinUp()),
  GetPage(name: AppRoute.verFiyCodeSignUp, page: ()=> const VerFiyCodeSignUp()),
  // Home
  GetPage(name: AppRoute.home, page: ()=> const HomeScreen()),
  GetPage(name: AppRoute.homepage, page: ()=> const Home()),
];
