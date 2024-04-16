// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sneakers_app/core/widgets/custome_button.dart';
// import 'package:sneakers_app/core/widgets/custome_cart_checkout_button.dart';
// import 'package:sneakers_app/features/checkout/presentation/views/my_cart_view.dart';
// import 'package:sneakers_app/model/cart_model.dart';
// import 'package:sneakers_app/model/shoe_model.dart';
// import 'package:sneakers_app/core/utils/cart_item.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<CartModel>(
//       builder: (context, value, child) => Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               // Cart greeting msg :)
//               "My Cart 👀",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 color: Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 25),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: value.userCart.length,
//                 itemBuilder: (context, index) {
//                   Shoe theOneShoe = value.getUserCart()[index];

//                   return CartItem(
//                     shoe: theOneShoe,
//                   );
//                 },
//               ),
//             ),

//             //! CheckOut button
//             CustomCartCheckOutButton(
//               text: 'CheckOut',
//               color: Colors.green.shade300,
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return const MyCartView();
//                     },
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/core/widgets/custome_cart_checkout_button.dart';

import 'package:sneakers_app/features/checkout/presentation/views/my_cart_view.dart';
import 'package:sneakers_app/model/cart_model.dart';
import 'package:sneakers_app/model/shoe_model.dart';
import 'package:sneakers_app/core/utils/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, value, child) {
        // Calculate total price
        double totalPrice = 0;
        for (var shoe in value.userCart) {
          // Convert price to double
          double shoePrice = double.tryParse(shoe.price) ?? 0;
          totalPrice += shoePrice;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // Cart greeting msg :)
                "My Cart 👀",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Shoe theOneShoe = value.getUserCart()[index];

                    return CartItem(
                      shoe: theOneShoe,
                    );
                  },
                ),
              ),

              //! CheckOut button
              totalPrice == 0
                  ? Container()
                  : CustomCartCheckOutButton(
                      text: 'CheckOut',
                      color: Colors.green.shade300,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return MyCartView(totalPrice: totalPrice);
                            },
                          ),
                        );
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
