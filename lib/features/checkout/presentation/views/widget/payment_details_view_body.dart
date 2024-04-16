import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sneakers_app/features/checkout/presentation/views/widget/custome_credit_card.dart';
import 'package:sneakers_app/features/checkout/presentation/views/widget/payment_method_item.dart';
import 'package:sneakers_app/features/checkout/presentation/views/widget/payment_method_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // PaymentMethodItem(
          //   isActive: true,
          //   image: 'assets/images/card.svg',
          // ),
          PaymentMethodsListView(),
          CustomCreditCard(),
        ],
      ),
    );
  }
}
