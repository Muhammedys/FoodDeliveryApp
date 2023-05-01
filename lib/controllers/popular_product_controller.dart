import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList = [];
  List<ProductModel> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

  Future<void> getpopularProductList() async {
    Response response = await popularProductRepo.getpopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {
      print(response.statusCode);
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      print('increment');
      _quantity = checkQuantity(_quantity + 1);
    } else {
      print('decrement');
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar('Item Count', "You can't reduce more !",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
          duration: const Duration(seconds: 1));
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar('Item Count', "You can't add more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exists = false;
    exists = _cart.existInCart(product);

    print('Exist or not ' + exists.toString());
    if (exists) {
      _inCartItems = _cart.getQuantity(product);
    }
    print('the quantity in the cart is ' + _inCartItems.toString());
  }

  void addItem(ProductModel product) {
    if (quantity > 0) {
      _cart.addItem(product, _quantity);

      _quantity = 0; // 10:19
      _inCartItems = _cart.getQuantity(product);

      _cart.items.forEach((key, value) {
        print('The id is ' +
            value.id.toString() +
            ' The quantity is ' +
            value.quantity.toString());   
      });
    } else {
      Get.snackbar('Item Count', "You should atleast add an item in the cart !",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
          duration: const Duration(seconds: 1));
    }
  }
}
