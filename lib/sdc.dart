import 'package:flutter/material.dart';
class ScrollableCon extends StatelessWidget {
  final  thubnail;
  final String tittle;
  ScrollableCon({required this.tittle,required this.thubnail});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,width: 120,
      child: Stack(
        children: <Widget>[

          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: thubnail,fit: BoxFit.fill
                  )

              ),
              width: 110,
              height: 190,

            ),
          ),
          Positioned(
            left: 20,
            top: 80,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child:Center(
                child:  Text(tittle,style: TextStyle(),),
              ),
              width: 70,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
