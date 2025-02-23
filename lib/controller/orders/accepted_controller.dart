
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/data/datasource/remote/orders/accepted_data.dart';
import 'package:delivery/data/model/ordersmodel.dart';
import 'package:get/get.dart';

import '../../core/functions/handlingdata.dart';
import '../../core/services/services.dart';


abstract class AcceptedController extends GetxController{
  getData();
  String printOrderType(int val);
  String printPaymentMethod(int val);
  String printOrderStatus(int val);
}
class AcceptedControllerImp extends AcceptedController{

  AcceptedData testData = AcceptedData(Get.find());
  List<OrdersModel> data =[];
  StatusRequest statusRequest =StatusRequest.onitnial ;
  MyServices myServices = Get.find();


  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  getData()async{
    data.clear();
    statusRequest =StatusRequest.loading;
    var response =await testData.getData(
        myServices.sharedPreferences.getString("id")!);
    statusRequest =handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status']=="success"){
        List responedata = response['data'];
        data.addAll(responedata.map((e) => OrdersModel.fromJson(e),));
        data =data.reversed.toList();
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  String printOrderType(int val) {
    return (val == 0)? "delivery": "Recive";
  }

  @override
  String printPaymentMethod(int val) {
    return (val == 0)? "Cash On Delivery": "Payment Card";

  }

  @override
  String printOrderStatus(int val) {
    if (val == 0) {
      return "Pending Approval";
    } else if (val == 1) {
      return "The Order is being Prepared ";
    } else if (val == 2) {
      return "Ready To Picked up by Delivery man";
    }  else if (val == 3) {
      return "On The Way";
    } else {
      return "Archive";
    }
  }

  refreshOrder(){
    getData();
  }

}