
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/data/datasource/remote/orders/details_data.dart';
import 'package:delivery/data/model/cartmodel.dart';
import 'package:delivery/data/model/ordersmodel.dart';
import 'package:get/get.dart';


import '../../core/functions/handlingdata.dart';


class OrdersDetailsController extends GetxController{
 late OrdersModel ordersModel;
 DetailsData testData = DetailsData(Get.find());
 List<CartModel> data =[];
 late StatusRequest statusRequest ;

  @override
  void onInit() {
    ordersModel = Get.arguments["ordersmodel"];
    getData();
    super.onInit();
  }

 getData()async{
   statusRequest =StatusRequest.loading;
   var response =await testData.getData(ordersModel.ordersId.toString());
   statusRequest =handlingData(response);
   if(statusRequest == StatusRequest.success){
     if(response['status']=="success"){
       List responselist=response['data'];
       data.addAll(responselist.map((e) => CartModel.fromJson(e),));
     }else{
       statusRequest = StatusRequest.failure;
     }
   }
   update();
 }

}