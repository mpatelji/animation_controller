import 'package:get/get.dart';

class InfiniteScrollController extends GetxController {
  var items = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  void fetchItems() async {

    try {
      await Future.delayed(const Duration(seconds: 2));
      Iterable<String> list =[
        "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
        "https://t4.ftcdn.net/jpg/06/23/49/07/360_F_623490712_D42CNLQxC9qTaGrmGHkccarHcxBUcXGl.jpg",
        "https://img.freepik.com/free-photo/hand-with-sphere-abstract-background_23-2150697306.jpg",
        "https://img.freepik.com/premium-photo/glass-ball-with-flower-it-stone-background_818771-224.jpg",
        "https://fps.cdnpk.net/images/home/subhome-ai.webp?w=649&h=649",
        "https://img.freepik.com/free-photo/3d-geometric-shapes-natural-background_23-2150697390.jpg",
        "https://img.freepik.com/premium-photo/fantasy-world-surreal-beautiful-pink-landscape_174954-13169.jpg",
        "https://img.freepik.com/premium-photo/cherry-blossom-stage_808092-7867.jpg",
        "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
        "https://t4.ftcdn.net/jpg/06/23/49/07/360_F_623490712_D42CNLQxC9qTaGrmGHkccarHcxBUcXGl.jpg",
        "https://img.freepik.com/free-photo/hand-with-sphere-abstract-background_23-2150697306.jpg",
        "https://img.freepik.com/premium-photo/glass-ball-with-flower-it-stone-background_818771-224.jpg",
        "https://img.freepik.com/free-photo/3d-geometric-shapes-natural-background_23-2150697390.jpg",
        "https://img.freepik.com/premium-photo/fantasy-world-surreal-beautiful-pink-landscape_174954-13169.jpg",
        "https://img.freepik.com/premium-photo/cherry-blossom-stage_808092-7867.jpg",
      ];
      // List<String> newItems = List.generate(
      //   100,
      //       (index) => "https://fps.cdnpk.net/images/home/subhome-ai.webp?w=649&h=${items.length + index}",
      // );

      items.addAll(list);
      items.addAll(list);
      items.addAll(list);
    } catch (e) {
      Get.snackbar('Error', 'Failed to load items');
    }
  }

  Future<void> refreshItems() async {
    fetchItems();
  }
}