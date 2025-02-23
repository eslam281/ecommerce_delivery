

import 'package:delivery/core/class/crud.dart';
import 'package:delivery/core/constant/linkapi.dart';

class OrdersPendingData{

  Crud crud;

  OrdersPendingData(this.crud);

  getData()async{
    var response =
    await crud.postData(AppLink.pending, {});
    return response.fold((l) => l, (r) => r,);
  }
}