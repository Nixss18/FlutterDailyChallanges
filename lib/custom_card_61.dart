import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CustomCard61 extends StatelessWidget {
  const CustomCard61({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: '250FF',
                    style: TextStyle(
                        color: Colors.blue[200],
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.blue[300],
                    primary: Colors.white,
                  ),
                  child: Text(
                    "Apply".toUpperCase(),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Coupon code `25OFF` applied succesfully",
                style: TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Products:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Text(
                  "\$400.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  "Coupon discount 25%:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
                Text(
                  "-\$100.00",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue[200]),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  "Shipping",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
                Text(
                  "\$25.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  "Total:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
                Text(
                  "\$325.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  "WAT of 25% included:",
                  style: TextStyle(fontSize: 6, color: Colors.grey),
                  textAlign: TextAlign.end,
                )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "PAY NOW",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue[300],
                  elevation: 0.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
