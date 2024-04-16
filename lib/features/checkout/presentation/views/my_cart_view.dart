// import 'package:flutter/material.dart';
// import 'package:sneakers_app/core/utils/styles.dart';
// import 'package:sneakers_app/core/widgets/custome_app_bar.dart';
// import 'package:sneakers_app/features/checkout/presentation/views/widget/cart_view_body.dart';

// class MyCartView extends StatelessWidget {
//   const MyCartView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context, title: 'My Cart'),
//       body: MyCartViewBody(),
//     );
//   }
// }

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import 'package:flutter/material.dart';
import 'package:sneakers_app/core/utils/styles.dart';
import 'package:sneakers_app/core/widgets/custome_app_bar.dart';
import 'package:sneakers_app/features/checkout/presentation/views/widget/cart_view_body.dart';

class MyCartView extends StatelessWidget {
  final double totalPrice;

  const MyCartView({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'My Cart'),
      body: MyCartViewBody(theTotalPrice: totalPrice),
    );
  }
}
