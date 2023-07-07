class GridImagesModel {
  String gridimage;
  String gridimagetext;
  GridImagesModel({required this.gridimage, required this.gridimagetext});
}

class StorecontainerModel {
  String storeimage;
  String storename;
  StorecontainerModel({required this.storeimage, required this.storename});
}

class ProductlistwithpricelistModel {
  String productimage;
  String productname;
  int productprice;
  ProductlistwithpricelistModel(
      {required this.productprice,
      required this.productname,
      required this.productimage});
}

class AdressModel {
  String location;
  String? zipcode;
  String? city;
  String? state;

  AdressModel({
    required this.location,
    this.zipcode,
    this.city,
    this.state,
  });
}
