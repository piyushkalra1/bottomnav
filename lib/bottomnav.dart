import 'package:bottomnav/sdc.dart';
import 'package:flutter/material.dart';

import 'liner.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Scaffold(
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 30,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/1.jpg'),
                  radius: 30,
                ), //CircleAvatar
              ),
              Text('Puzzle',style: TextStyle(fontSize: 16,color: Colors.pink),),
              Icon(Icons.dehaze,color: Colors.black,)
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(itemBuilder: (context,index){
              return Row(
                children: [
                  ScrollableCon(tittle: 'likes', thubnail: AssetImage('images/1.jpg'),),
                  ScrollableCon(tittle: 'Tony', thubnail: AssetImage('images/2.jpg'),),
                  ScrollableCon(tittle: 'James', thubnail: AssetImage('images/3.jpg'),),
                  ScrollableCon(tittle: 'Jordan', thubnail: AssetImage('images/2.jpg'),),


                ],
              );
            },shrinkWrap: true,itemCount: 1,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      Text('Search'),
                    ],
                  ),

                ),
                SizedBox(height: 20,),

                Container(
                  child: Column(
                    children: [
                      Liner(thumbnail: AssetImage('images/1.jpg'),name: 'Jordan',icon: Icon(Icons.check,size: 12,color: Colors.white,) ,count: '1',
                        colors: Colors.black, text: 'Hii!' ,colors1: Colors.black,),
                      Divider(),
                      Liner(thumbnail: AssetImage('images/2.jpg'),name: 'Tim',icon: Icon(Icons.check,size: 12,color: Colors.white,) ,count: '',
                        colors: Colors.black45, text: 'Hii!' ,colors1: Colors.black45,),
                      Divider(),
                      Liner(colors1: Colors.black,thumbnail: AssetImage('images/3.jpg'),name: 'James',icon: Icon(Icons.check,size: 12,color: Colors.white,) ,count: '90', colors: Colors.pink, text: 'Typing..',),

                    ],
                  ),

                )
              ],
            ),
          )

        ],
      ),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black54,),
            label: 'Home',
            backgroundColor: Colors.white60,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_off_rounded,color: Colors.black54,),
            label: 'Business',
            backgroundColor: Colors.white60,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_calendar_sharp,color: Colors.black54,),
            label: 'School',
            backgroundColor: Colors.white60,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp,color: Colors.black26,),
            label: 'Settings',
            backgroundColor: Colors.white60,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
