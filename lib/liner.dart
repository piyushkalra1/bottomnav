import 'package:flutter/material.dart';

class Liner extends StatelessWidget {
  final  name;
  final icon;
  final thumbnail;
  final count;
  final Color colors;
  final Color colors1;

  final text;
  Liner({required this.text,required this.colors1,
    required this.name,required this.thumbnail,required this.icon, this.count,required this.colors});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [

        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 40,
          child: CircleAvatar(
            backgroundImage: thumbnail,
            radius: 40,
          ), //CircleAvatar
        ),
        SizedBox(width: 15,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [

                Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: colors1),),
                SizedBox(width: 10,),
                CircleAvatar(
                    backgroundColor: Colors.blue[600],
                    radius: 10,
                    child: icon//Text
                ),
              ],
            ),
            Text(text,style: TextStyle(color: colors),)
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text('13:10'),
            CircleAvatar(
              backgroundColor: Colors.pinkAccent[200],
              radius: 10,
              child: Text(count,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ), //Text
            ),
          ],
        )
      ],
    );
  }
}