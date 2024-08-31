// import 'package:flutter/material.dart';
// void main(){
//   runApp(CurvedAnimationExample());
// }
// class CurvedAnimationExample extends StatefulWidget {
//   @override
//   _CurvedAnimationExampleState createState() => _CurvedAnimationExampleState();
// }
//
// class _CurvedAnimationExampleState extends State<CurvedAnimationExample> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );
//
//     _animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     );
//
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Curved Animation Example")),
//       body: Center(
//         child: ScaleTransition(
//           scale: _animation,
//           child: Container(
//             width: 100,
//             height: 100,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }
// }
//

import 'package:animation_controller/views/screen/view_scrolling_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
void mian(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: InfiniteScrollExample(),
    );
  }
}
