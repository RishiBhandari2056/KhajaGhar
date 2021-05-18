import 'package:flutter/material.dart';

class EnterCode extends StatefulWidget {
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Enter Code",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter 6-Digit",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10,
            ),
            Text("Recovery Code",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            Text(
                "We have send the code to your phone. Please check for a text message.",
                style: TextStyle(
                    wordSpacing: 3,
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal)),
            SizedBox(
              height: 40,
            ),

            Container(
              height: 50,
              // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 50,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(height: 20),
            Text("Note: The code expires in 5 mins.",
                style: TextStyle(
                  wordSpacing: 3,
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                )),
            SizedBox(height: 120),

            MaterialButton(
              onPressed: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh_rounded, color: Colors.white),
                    SizedBox(width: 5),
                    Text("Send Again",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
