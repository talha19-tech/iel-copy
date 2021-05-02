import 'package:flutter/material.dart';

class TopTicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(),
        color: Colors.grey[350],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 02),
          Text(
            'MCDF',
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 20),
              Text(
                '21.36',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.arrow_circle_up_sharp,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
