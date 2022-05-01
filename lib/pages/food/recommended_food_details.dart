import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                  ),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Center(
                      child: BigText(
                    text: 'Chinese Side',
                    size: Dimensions.font26,
                  )),
                )),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              'assets/image/food0.png',
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                      text:
                          'lorem ipsum dolor sit ametOfficia et irure aliqua nulla enim fugiat qui eu anim non cupidatat sit. Id voluptate amet tempor cillum sint sunt ipsum mollit aute enim et eu magna. Magna aliquip velit occaecat est magna Lorem fugiat sit duis ullamco cillum sint cillum in. Magna qui nisi ullamco enim anim ullamco. Aliqua ex consectetur mollit et fugiat sunt consectetur.Incididunt ex aliquip labore non enim. Est aliquip aliqua est id cupidatat proident irure veniam id ex. Aute cillum proident adipisicing est sint esse anim.Deserunt esse dolore officia irure non elit cillum fugiat enim id id dolore in cupidatat. Aliqua officia ipsum Lorem nisi. Reprehenderit laboris elit velit nisi dolor. Enim labore nulla laborum nostrud culpa mollit veniam reprehenderit ad officia deserunt. Veniam do ex non fugiat ut sit quis excepteur ex duis pariatur do. Dolore reprehenderit commodo incididunt est ad exercitation aute cillum non nostrud mollit culpa.Enim laborum mollit ad sit veniam aute anim cillum sunt reprehenderit sit aute ut. Aute reprehenderit quis adipisicing duis. Quis veniam adipisicing exercitation consectetur consequat commodo in veniam nulla. Incididunt cillum aliqua deserunt minim do. Sint cupidatat laborum minim nostrud proident eiusmod.Exercitation Lorem eu consequat nulla ipsum irure cupidatat excepteur anim adipisicing commodo. Proident eiusmod laborum nulla voluptate veniam aliquip. Reprehenderit cillum qui aliqua exercitation sint mollit elit quis ea consectetur qui eiusmod. Laboris magna reprehenderit mollit velit cupidatat dolor mollit. Quis proident nostrud cillum cupidatat amet nisi velit.Pariatur est cupidatat exercitation reprehenderit pariatur non. Mollit magna aute fugiat quis sint ipsum nulla ex. Esse labore magna veniam in ullamco laborum labore aliquip dolor cupidatat laborum. Veniam dolor non labore in occaecat esse labore do aute eiusmod voluptate anim labore. Fugiat nostrud excepteur labore quis culpa fugiat do occaecat. Ad sint non voluptate ad non exercitation velit.Nisi officia minim aliquip dolore pariatur ad magna aute adipisicing. Sit non nostrud Lorem reprehenderit laborum non incididunt ullamco proident. Id ad irure ad incididunt ullamco duis consectetur cupidatat qui labore eu eu excepteur dolore. Proident adipisicing ex ut do eiusmod. Voluptate voluptate voluptate laborum consectetur officia id aute laborum do eu duis dolor.Culpa ea nulla eu commodo consequat ad. Ex nulla in sint elit duis nulla amet sint nostrud id consectetur. Ipsum cillum velit non excepteur. Magna Lorem pariatur laborum mollit. Proident esse consequat eu aliquip voluptate. Et magna minim ad commodo pariatur ad. Ex consequat anim aliqua nulla cillum anim non cupidatat cillum pariatur incididunt adipisicing ea occaecat.Officia deserunt excepteur ad fugiat. Sunt et anim pariatur excepteur incididunt duis ipsum ipsum aliqua tempor sunt aliqua in in. Fugiat aliqua tempor ullamco nulla. Cupidatat est ea cupidatat duis aliqua deserunt est consectetur culpa ipsum dolor. Cillum proident exercitation consequat dolor magna Lorem cupidatat id irure tempor reprehenderit magna laborum enim. Nostrud labore aliqua incididunt duis.Cupidatat laborum ad et ea et culpa amet ea qui. Elit velit ad sint ipsum qui pariatur anim do. Aute id cillum irure quis aliquip adipisicing adipisicing sunt pariatur occaecat officia esse. Velit qui aute cupidatat aute do est eu sunt minim laboris labore quis culpa velit. Aliqua pariatur nulla eu velit eiusmod nostrud commodo.'),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                bottom: Dimensions.height10,
                top: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroungColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  text: '\$12.88 ' + ' X ' + ' 0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    icon: Icons.add,
                    iconColor: Colors.white,
                    backgroungColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2)),
                color: AppColors.buttonBackgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                  child:
                      BigText(text: '\$10 | Add to cart', color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
