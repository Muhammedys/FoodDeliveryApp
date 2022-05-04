import 'package:food_delivery/pages/food/popular_food_details.dart';
import 'package:food_delivery/pages/food/recommended_food_details.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';

  static String getInitial() => '$initial';
  static String getPopularFood(int pageId) => '$popularFood?page=$pageId';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetails(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          return RecommendedFoodDetails();
        },
        transition: Transition.fadeIn),
  ];
}
