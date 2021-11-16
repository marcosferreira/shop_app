import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screen/details/components/add_to_cart.dart';
import 'package:shop_app/screen/details/components/color_and_size.dart';
import 'package:shop_app/screen/details/components/counter_with_fav_btn.dart';
import 'package:shop_app/screen/details/components/description.dart';
import 'package:shop_app/screen/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.36),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    right: kDefaultPadding,
                    left: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      const CounterWithFavBtn(),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
