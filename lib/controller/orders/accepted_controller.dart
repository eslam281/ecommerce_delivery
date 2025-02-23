
import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/data/datasource/remote/orders/accepted_data.dart';
import 'package:delivery/data/model/ordersmodel.dart';
import 'package:get/get.dart';

import '../../core/functions/handlingdata.dart';
import '../../core/services/services.dart';


abstract class AcceptedController extends GetxController{
  getData();
  String printPaymentMethod(int val);
}
class AcceptedControllerImp extends AcceptedController{

  AcceptedData acceptedData = AcceptedData(Get.find());
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
    var response =await acceptedData.getData(
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

  doneDelivery(String userid,String orderid)async{
    data.clear();
    statusRequest =StatusRequest.loading;
    var response =await acceptedData.doneDelivery(orderid,userid,);
    statusRequest =handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status']=="success"){
        getData();
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  String printPaymentMethod(int val) {
    return (val == 0)? "Cash On Delivery": "Payment Card";

  }

}