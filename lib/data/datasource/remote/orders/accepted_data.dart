

import 'package:delivery/core/class/crud.dart';
import 'package:delivery/core/constant/linkapi.dart';


class AcceptedData{

  Crud crud;

  AcceptedData(this.crud);

  getData(String deliveryid)async{
    var response =
    await crud.postData(AppLink.acceptedOrders, {"deliveryid":deliveryid});
    return response.fold((l) => l, (r) => r,);
  }


}