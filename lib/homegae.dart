import 'package:card_manager/Card.dart';
import 'package:card_manager/chart.dart';
import 'package:card_manager/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;
  double w;
  List<BarData> data = [
    BarData(120, red,"21"),
    BarData(110, Colors.black12,"22"),
    BarData(220, red,"23"),
    BarData(170, red,"24"),
    BarData(80,  Colors.black12,"25"),
    BarData(170, red,"26"),
    BarData(120, red,"27"),
    BarData(150, Colors.black12,"28"),
    BarData(210, red,"29"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;

    sizeonwidth(double value)
    {
      return value*w/524;
    }
    print(w);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: white,
            size: 50,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      "https://instagram.fbom22-1.fna.fbcdn.net/v/t51.2885-19/s320x320/110104437_283085229591086_6098952241292387575_n.jpg?_nc_ht=instagram.fbom22-1.fna.fbcdn.net&_nc_ohc=5ym64oDg-mYAX-m0YVw&tp=1&oh=c719a89a8b712254e8bebe2cf2b2317d&oe=60232C5B",
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: black),
                    child: Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5), color: red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: black,
      body: Container(
          padding: EdgeInsets.all(8),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height:sizeonwidth( 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Activity",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "March 2020",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: red,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "1234.0",
                              style: TextStyle(
                                  color: red,
                                  fontSize: sizeonwidth(60),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                "usd",
                                style: TextStyle(
                                    color: red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: sizeonwidth(60),
                              height: sizeonwidth(60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: red),
                              child: Center(
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(-25 / 360),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    size: sizeonwidth(35),
                                    color: white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '\$220.15',
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Then last month",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: sizeonwidth(60),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: grey),
                                child: Center(
                                  child: Text(
                                    "Expenses",
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                height:sizeonwidth( 60),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: white),
                                    borderRadius: BorderRadius.circular(8),
                                    color: white),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: black),
                                  child: Center(
                                    child: Text(
                                      "Insights",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 460,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: sizeonwidth(32),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "My cards",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: black),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 4, color: black),
                                  borderRadius: BorderRadius.circular(8),
                                  color: grey),
                              child: Center(
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.add,
                                    color: black,
                                    size: 25,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 250,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            controller: controller,
                            padding: EdgeInsets.all(0),
                            itemBuilder: (contex, index) {
                              return InkWell(
                                  onTap: () {
                                    showdetail();
                                  },
                                  child: Container(
                                    width: w - 90,
                                    height: 250,
                                    child: CreditCard(
                                      issuerlogo: Image.network(
                                        "http://www.pngall.com/wp-content/uploads/2017/05/Visa-Logo-PNG-Image.png",
                                        width: 80,
                                        height: 50,
                                      ),
                                      name: "wojas",
                                      bank: "National Bank",
                                      foreground: white,
                                      background: index % 2 == 0 ? red : black,
                                      number: "**** 8888",
                                      total: "22k",
                                    ),
                                  ));
                            },
                            separatorBuilder: (contex, index) {
                              return SizedBox(
                                width: 16,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  showdetail() {
    return showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, StateSetter setState) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Details",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: black),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: black),
                            borderRadius: BorderRadius.circular(8),
                            color: grey),
                        child: Center(
                          child: IconButton(
                            onPressed: null,
                            icon: Text(
                              "Edit",
                              style: TextStyle(color: black, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: w - 60,
                        height: 260,
                        padding: EdgeInsets.only(bottom: 14),
                        child: CreditCard(
                          issuerlogo: Image.network(
                            "http://www.pngall.com/wp-content/uploads/2017/05/Visa-Logo-PNG-Image.png",
                            width: 80,
                            height: 50,
                          ),
                          name: "wojas",
                          bank: "National Bank",
                          foreground: white,
                          background: red,
                          number: "**** 8888",
                          total: "22k",
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: black),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Icon(
                                      Icons.wifi,
                                      size: 14,
                                      color: white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Default",
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Recent Activity",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: black),
                      ),    Row(
                        children: [
                          Text(
                            "March 21-29",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: black),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded,color: red,)
                        ],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: BarChart(
                      data: data,
                      max: 270,
                    ),
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Icon(
                              Icons.shopping_bag_outlined,
                              color: white,
                            )),
                          ),
                          title: Text(
                            "H&M",
                            style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "shoping",
                            style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "-\$200.00",
                                style: TextStyle(
                                    color: red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "31 March 2020",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      })
                ],
              ));
        });
      },
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
