import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard060 extends StatelessWidget {
  const CustomCard060({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: '#FFFFF....',
                    style: TextStyle(
                        color: Colors.deepPurple[200],
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.deepPurple.shade200),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.colorize,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(width: 14),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8, top: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recently picked:",
                  style: TextStyle(
                      color: Colors.deepPurple[100],
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[200],
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.purple,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
