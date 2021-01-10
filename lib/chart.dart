import 'package:card_manager/style.dart';
import 'package:flutter/material.dart';

class BarChart extends StatefulWidget {
  List<BarData> data;
  double max;

  BarChart({this.data, this.max});

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.max+30,
width: widget.data.length*35.0,

      child: Center(
        child: ListView.separated(
          itemCount: widget.data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 10,
                  height: widget.data[index].value ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.data[index].color,
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.data[index].xlable,style: TextStyle(color: black),)
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Center(
              child: Container(
                width: 20,
                color: grey,
              ),
            );
          },
        ),
      ),
    );
  }
}

class BarData {
  double value;
  Color color;
  String xlable;

  BarData(this.value, this.color,this.xlable);
}
