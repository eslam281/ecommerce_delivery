
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/verifycode_controller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtexttittleauth.dart';


class VerFiyCode extends StatelessWidget {
  const VerFiyCode({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Verification Code",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.grey),
        ),
      ),
      body: GetBuilder<VerifyCodeControllerImp>(
        builder: (controller) =>
    HandlingDataRequest(statusRequest: controller.statusRequest,
    widget: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            child: ListView(
              children:  [
                const CustomTextTittleAuth(text: "Check code",),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(text: "Please Enter The Digit Code sent to ******@gmail.com"),
                const SizedBox(
                  height: 15,
                ),
                OtpTextField(
                  numberOfFields: 5,
                  fieldWidth: 50,borderRadius: BorderRadius.circular(20),
                  borderColor:  const Color(0xFF02F30E),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    controller.checkCode(verificationCode);
                  }, // end onSubmit
                ),
                // CustomButtomAuth(onPressed: (){controller.goToVerfiyCode();}, text: "Check"),
              ],
            ),
          )),
      ),
    );
  }
}
