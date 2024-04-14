import 'package:flutter/material.dart';
import 'package:sneakers_app/model/shoe_model.dart';

class CartModel extends ChangeNotifier {
  //! List of shoes for sale in the shop page
  List<Shoe> shoesShop = [
    Shoe(
        name: "Air Jorden",
        price: "240",
        descreption: "Cool Sheo",
        imagePath: "assets/images/sneaker1.png"),
    Shoe(
        name: "Zoom Freak",
        price: "266",
        descreption: "Another Cool Sheo",
        imagePath: "assets/images/sneaker1.png"),
    Shoe(
        name: "champion Sportwear",
        price: "300",
        descreption: "Cool Sheo",
        imagePath: "assets/images/sneaker1.png"),
    // Shoe(
    //     name: "Air Jorden",
    //     price: "240",
    //     descreption: "Cool Sheo",
    //     imagePath: "assets/images/sneaker.png"),
  ];
  //! List of items in user cart
  List<Shoe> userCart = [];
  //! get lists of sheos for sale
  List<Shoe> getShoesList() {
    return shoesShop;
  }

  //! get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //! add items to cart
  void addShoeToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //! remove item from cart
  void removeShoeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
