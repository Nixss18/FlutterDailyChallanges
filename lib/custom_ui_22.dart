import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomUi22 extends StatefulWidget {
  const CustomUi22({Key? key}) : super(key: key);

  @override
  State<CustomUi22> createState() => _CustomUi22State();
}

class _CustomUi22State extends State<CustomUi22>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  bool reverse = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400))
      ..drive(CurveTween(curve: Curves.elasticInOut));

    //_controller.repeat(reverse: true);
    _sizeAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut));
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });

    //controller?.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void updatePadding() {
    if (reverse == false) {
      _controller.forward();
      reverse = true;
    } else {
      _controller.reverse();
      reverse = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      // decoration: BoxDecoration(color: Colors.green),
      child: SizedBox(
        height: 100,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, Widget? child) {
            return Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    16,
                    0,
                    20 + (80 * _sizeAnimation.value),
                    0,
                  ),
                  child: TextField(
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        12,
                        20 + (6 - (6 * _sizeAnimation.value)),
                        // 12 + (22 - (16 * _sizeAnimation.value)),
                        12,
                        20 + (6 - (6 * _sizeAnimation.value)),
                        // 12 + (22 - (16 + _sizeAnimation.value)),
                      ),
                      // contentPadding: EdgeInsets.symmetric(
                      //     vertical: (30 * _sizeAnimation.value)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none),
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 25, 16),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      icon: Stack(
                        alignment: Alignment.center,
                        children: [
                          ScaleTransition(
                            scale: AlwaysStoppedAnimation(_sizeAnimation.value),
                            child: FadeTransition(
                              opacity:
                                  AlwaysStoppedAnimation(_sizeAnimation.value),
                              child: Icon(Icons.search_rounded),
                            ),
                          ),
                          ScaleTransition(
                            scale: AlwaysStoppedAnimation(
                                1 - _sizeAnimation.value),
                            child: FadeTransition(
                              opacity: AlwaysStoppedAnimation(
                                  1 - _sizeAnimation.value),
                              child: Icon(Icons.keyboard_arrow_right_rounded),
                            ),
                          ),
                        ],
                      ),
                      color: Colors.white,
                      onPressed: () {
                        updatePadding();
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
