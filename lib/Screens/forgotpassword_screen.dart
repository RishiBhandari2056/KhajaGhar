import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _selected = true;

  // int _item = 5;

  // List<bool> selected = [];
  // @override
  // void initState() {
  //   for (var i = 0; i < _item; i++) {
  //     selected.add(false);
  //   }
  //   super.initState();
  // }

  Icon firstIcon = Icon(
    Icons.check_circle_outlined,
    size: 30,
  );
  Icon secondIcon = Icon(
    Icons.check_circle,
    size: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Forgot Password",
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
            Text("Please",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10,
            ),
            Text("Choose a Method",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            Text("Select which contact would you like to send the reset code.",
                style: TextStyle(
                    wordSpacing: 3,
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal)),
            SizedBox(
              height: 40,
            ),
            InkWell(
              child: Container(
                // height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff6C63FF)),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        height: 30,
                        width: 30,
                        child: Icon(Icons.sms),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reset Via SMS",
                                style: TextStyle(
                                  fontSize: 14,
                                )),
                            Text("+977 98******56",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: _selected ? firstIcon : secondIcon,
                        onPressed: () {
                          print("something is pressed");
                          _selected = !_selected;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () => {setState(() {})},
              child: Container(
                // height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff6C63FF)),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        height: 30,
                        width: 30,
                        child: Icon(Icons.mail_outline),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reset Via Email",
                              style: TextStyle(
                                fontSize: 14,
                              )),
                          Text("k********@gmail.com",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            MaterialButton(
              onPressed: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text("Procced",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: RichText(
                text: TextSpan(
                    text: "Didn\'t receive code? Resend",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
