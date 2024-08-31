import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../controller/scrolling_service/scrolling_service.dart';


class InfiniteScrollExample extends StatefulWidget {
  const InfiniteScrollExample({super.key});

  @override
  _InfiniteScrollExampleState createState() => _InfiniteScrollExampleState();
}

class _InfiniteScrollExampleState extends State<InfiniteScrollExample> with TickerProviderStateMixin {
  late final AnimationController _controller=AnimationController( vsync: this,
    duration: const Duration(seconds: 2),)..repeat(reverse: true);
  late final Animation<double>_animation =CurvedAnimation(
      parent: _controller, curve: Curves.easeIn);
  final InfiniteScrollController _scrollController = Get.put(InfiniteScrollController());

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinite Scroll Example')),
      body: Obx(() {
        return RefreshIndicator(
          onRefresh: _scrollController.refreshItems,
          child: ListView.builder(
            controller: ScrollController(),
            itemCount: _scrollController.items.length + 1,
            itemBuilder: (context, index) {
              if (index == _scrollController.items.length) {
                return const Center(child: CircularProgressIndicator());
              }
              return CachedNetworkImage(
                imageUrl: _scrollController.items[index],
                placeholder: (context, url) => Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageBuilder: (context, imageProvider) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FadeTransition(
                    opacity:_animation ,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }


}