import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ctTest extends StatefulWidget {
  const ctTest({Key? key}) : super(key: key);

  @override
  _ctTestState createState() => _ctTestState();
}
class _ctTestState extends State<ctTest> {
  final pageController = PageController(viewportFraction: 0.8);
  double page = 0.0;
  void listenScroll() {
    setState(() {
      page = pageController.page!;
    });
  }

  @override
  void initState() {
    pageController.addListener(listenScroll);

    super.initState();
  }

  @override
  void dispose() {
    pageController.removeListener(listenScroll);
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan.withOpacity(0.0600),
        body: Center(
          child: SizedBox(
            height: 230,
            child: PageView.builder(
                controller: pageController,
                itemCount: 6,
                itemBuilder: (context, index) {
                  final percent = (page - index).abs().clamp(0.0, 1.0);
                  final factor = pageController.position.userScrollDirection ==
                      ScrollDirection.forward
                      ? 1.0
                      : -1.0;
                  final opacity = percent.clamp(0.0, 0.7);
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(vector.radians(45 * factor * percent)),
                    child: Opacity(
                      opacity: (1 - opacity),
                      child: Card(
                        child: Image.asset(
                          index.isOdd
                              ? "assets/second.jpg"
                              : "assets/first.jpg",
                          fit: BoxFit.fill,
                          height: 230,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
