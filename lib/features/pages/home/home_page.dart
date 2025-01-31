import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/features/pages/home/widget/back_ground_container_widget.dart';
import 'package:coffee_shop/features/pages/home/widget/banner_image_widget.dart';
import 'package:coffee_shop/features/pages/home/widget/category_card_items_widget.dart';
import 'package:coffee_shop/features/pages/home/widget/category_items_widget.dart';
import 'package:coffee_shop/features/pages/home/widget/search_and_filter_widget.dart';
import 'package:coffee_shop/features/pages/home/widget/text_app_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          //! Back Ground Container Widget
          BackGroundContainerWidget(),
          Padding(
            padding: EdgeInsetsDirectional.only(top: h * 0.050),
            child: Column(
              children: [
                //! TextApp Widget
                TextAppWidget(),
                SizedBox(height: h * 0.030),
                //! Search And Filter AppBar
                SearchAndFilterWidget(),
                SizedBox(height: h * 0.025),
                //! Banner Image Widget
                BannerImageWidget(),
                SizedBox(height: h * 0.020),
                //! Category Items Widget
                CategoryItemsWidget(),
                SizedBox(height: h * 0.020),
                //! Category Card Items Widget
                CategoryCardItemsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
