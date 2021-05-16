import 'package:assigndeliveryboy/Model/details.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<Detail> details = [
    Detail(
        name: "Suresh Khanal",
        phnnumber: "9806532283",
        assign: "2",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Diljit Singh",
        phnnumber: "9806532283",
        assign: "3",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Sushil Kandel",
        phnnumber: "9806532283",
        assign: "4",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Radhika Kc",
        phnnumber: "9806532283",
        assign: "5",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Sonam Kapoor",
        phnnumber: "9806532283",
        assign: "4",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Hari Sharma",
        phnnumber: "9806532283",
        assign: "6",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Ayush Adhikari",
        phnnumber: "9806532283",
        assign: "3",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Rishi Bhandari",
        phnnumber: "9806532283",
        assign: "8",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Kushal Adhikari",
        phnnumber: "9806532283",
        assign: "3",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
    Detail(
        name: "Rohit Shrestha",
        phnnumber: "9806532283",
        assign: "3",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61XSrUOrZzL._SL1000_.jpg"),
  ];

  int _radioValue;

  // void _handleRadioValueChange(int value) {
  //   setState(() {
  //     _radioValue = value;
  //     switch (_radioValue) {
  //       case 0:
  //         break;
  //       case 1:
  //         break;
  //       case 2:
  //         break;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 645.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
          child: Column(
            children: [
              Text(
                "Assign Delivery Boy",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Select from the list",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: GridView.builder(
                      // padding: EdgeInsets.all(10),
                      primary: false,
                      shrinkWrap: true,
                      itemCount: details.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4.5,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Radio(
                              value: index,
                              groupValue: _radioValue,
                              onChanged: (val) =>
                                  setState(() => _radioValue = val),
                            ),
                            // SizedBox(width: 5),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                details[index].image,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      details[index].name,
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(details[index].phnnumber),
                                    Container(
                                        height: 15,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text(
                                          details[index].assign,
                                          textAlign: TextAlign.center,
                                        )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Container(
                        width: 45,
                        height: 21,
                        child: RichText(
                          text: TextSpan(
                              text: "Skip",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                        )),
                    Spacer(),
                    Container(
                      width: 75,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color(0xff30B700),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("Assign",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
