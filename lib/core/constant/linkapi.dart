class AppLink{

  static const String server = "http://10.0.2.2/ecommerce"; //10.0.2.2 =localhost very important

  static const String test ="$server/test.php";

  // ============================== Image =================================//

  static const String imageststatic = "$server/upload"; //10.0.2.2 =localhost very important

  // ============================== Auth =================================//

  static const String signup ="$server/delivery/auth/signup.php";
  static const String login ="$server/delivery/auth/login.php";
  static const String verfiycode ="$server/delivery/auth/verfiycode.php";
  static const String resend ="$server/delivery/auth/resend.php";

// ============================== ForgetPassword =================================//
  static const String forgetpassword ="$server/forgetpassword/checkemail.php";
  static const String verfiycode_password ="$server/forgetpassword/verfiycode.php";
  static const String resetpassword ="$server/forgetpassword/resetpassword.php";

// ============================== Home =================================//

  static const String homepage ="$server/home.php";
  static const String notification ="$server/notification.php";

}