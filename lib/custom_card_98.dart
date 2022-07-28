import 'package:flutter/material.dart';

class CustomCard98 extends StatelessWidget {
  const CustomCard98({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orange, Colors.yellow]),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //kolona
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 3, 3),
                  child: SizedBox(
                    //texta sizedbox
                    width: 280,
                    height: 50,
                    child: Text(
                      "Why are pineapples so spiky, yet so attractive?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                  child: SizedBox(
                    //profile bildes sizedbox
                    width: 150,
                    height: 50,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(36.0),
                          child: Image.asset(
                            "images/profilepic.jpeg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Pēter Sīlis",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white30, shape: BoxShape.circle),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.orange,
                    size: 36.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Container,  Row, Col, Text, ClipRRect?, SizedBox, Stack
