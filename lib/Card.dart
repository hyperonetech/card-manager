import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  String name, bank, number, total;
  Image issuerlogo;
  Color foreground, background;

  CreditCard(
      {this.name,
      this.bank,
      this.total,
      this.number,
      this.issuerlogo,
      this.background,
      this.foreground});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              issuerlogo,
              Text(
                bank,
                style: TextStyle(color: foreground, fontSize: 20),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    total,
                    style: TextStyle(
                        color: foreground,
                        fontSize: 36,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "USD",
                    style: TextStyle(color: foreground, fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Text(
                number,
                style: TextStyle(
                    color: foreground,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
