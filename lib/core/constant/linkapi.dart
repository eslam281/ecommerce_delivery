class AppLink{

  static const String server = "http://10.0.2.2/ecommerce"; //10.0.2.2 =localhost very important

  static const String test ="$server/test.php";

  // ============================== Image =================================//

  static const String imageststatic = "$server/upload"; //10.0.2.2 =localhost very important

  // ============================== Auth =================================//
  static const String login ="$server/delivery/auth/login.php";
  static const String verfiycode ="$server/delivery/auth/verfiycode.php";
  static const String resend ="$server/delivery/auth/resend.php";

// ============================== ForgetPassword =================================//
  static const String forgetpassword ="$server/delivery/forgetpassword/checkemail.php";
  static const String verfiycode_password ="$server/delivery/forgetpassword/verfiycode.php";
  static const String resetpassword ="$server/delivery/forgetpassword/resetpassword.php";

// ============================== Home =================================//
  static const String pending ="$server/delivery/orders/view.php";
  static const String archive ="$server/delivery/orders/archive.php";
  static const String acceptedOrders ="$server/delivery/orders/accepted.php";
  static const String approveOrders ="$server/delivery/orders/approve.php";
  static const String doneOrders ="$server/delivery/orders/done.php";
  static const String ordersdetails ="$server/orders/details.php";


}