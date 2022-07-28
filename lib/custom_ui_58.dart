import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

class CustomUi58 extends StatefulWidget {
  const CustomUi58({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);
  final double screenWidth;

  @override
  State<CustomUi58> createState() => _CustomUi58State();
}

class _CustomUi58State extends State<CustomUi58> with TickerProviderStateMixin {
  late AnimationController _controller;
  //late AnimationController _heightController;
  late Animation<double> _widthAnimation;
  late Animation<double> _heightAnimation;
  bool reverse = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    // _widthAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
    //     parent: _widthController,
    //     curve: Curves.easeInOut,
    //     reverseCurve: Curves.easeInOut));

    _widthAnimation = Tween(begin: 140.0, end: widget.screenWidth - 48).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0, 0.5, curve: Curves.easeInOutQuint),
      ),
    );

    _heightAnimation = Tween(begin: 50.0, end: 550.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1, curve: Curves.easeInOutQuint),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  Future<void> updatePadding() async {
    try {
      if (reverse == false) {
        await _controller.forward();
        reverse = true;
      } else {
        await _controller.reverse();
        reverse = false;
      }
    } on TickerCanceled {}
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Center(
      child: GestureDetector(
        onTap: updatePadding,
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: _widthAnimation.value,
              height: _heightAnimation.value,
              decoration: BoxDecoration(
                  // color: Colors.black.withOpacity(0.1),
                  ),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Cart"),
                      contentPadding: EdgeInsets.only(left: 4),
                      trailing: SizedBox(
                        height: 42,
                        width: 42,
                        child: ElevatedButton(
                          child: Icon(Icons.shopping_cart),
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero)),
                          onPressed: updatePadding,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset(
                        "images/croc.jpg",
                        width: _widthAnimation.value / 4,
                        height: _heightAnimation.value / 3,
                        fit: BoxFit.fill,
                      ),
                      title: Text("Dwayne the croc"),
                      subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("EUR 41"),
                            Text("2x"),
                            Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(child: Text("100\$")),
                            ),
                          ]),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Subtotal"),
                      subtitle: Text("Excl sales tax"),
                      trailing: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("182\$")),
                      ),
                    ),
                    ListTile(
                      title: Text("Grand Total"),
                      subtitle: Text("Incl sales tax"),
                      trailing: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("200\$")),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("BUY NOW"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: AnimatedBuilder(
        builder: _buildAnimation,
        animation: _controller,
      ),
    );
  }
}
