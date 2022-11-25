import 'package:buy/card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
class CardItem{
  final String title2;
  final IconData icons;
  const CardItem(
      {
        required this.title2,
        required this.icons
      }
      );
}
class CardItem1{
  final String title1;
  final IconData icons1;
  final String image;
  final String subtitle1;
  const CardItem1(
      {
        required this.title1,
        required this.icons1,
        required this.image,
        required this.subtitle1,

      }
      );
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController Username = TextEditingController();
  List<CardItem1> items1=[
    CardItem1(
      image:'image/skirt.jpg',
      icons1: Icons.person_outline,
      title1:'User',
      subtitle1: '3 month ago',

    ),
    CardItem1(
      image:'image/mobile.jpg',
      icons1: Icons.girl_outlined,
      title1:'Roy',
      subtitle1: '2 month ago',
    ),


  ];
  List<CardItem> items=[
    CardItem(
      icons: Icons.computer,
      title2:'Computer',

    ),
    CardItem(
      icons: Icons.construction,
      title2:'Services',

    ),
    CardItem(
      icons: Icons.emoji_events,
      title2:'Sports',

    ),

  ];


  final  List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Interest', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Message', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white10,
          child:SafeArea(child:SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: Adaptive.h(12),
          width: 100.w,
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [


                  Container(

                    padding:EdgeInsets.only(left: 20),
                    child: Icon(Icons.menu_outlined,color: Colors.red.shade900,),


                  ),
                  Container(
                    padding:EdgeInsets.only(right: 20),
                    alignment: Alignment.center,

                    child: Icon(Icons.notifications_outlined,color: Colors.grey,),
                  ),
                ],
              ),
              ),
              SizedBox(
                height: Adaptive.h(3),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    text:'Flutter Buy and Sell' ,
                    style: TextStyle(color: Colors.blueGrey.shade800,fontWeight: FontWeight.bold,fontSize: 24),
                    children: [
                      WidgetSpan(child: SizedBox(
                        width: 5.w,
                      )),
                      TextSpan(
                        text: 'Your Location',
                        style: TextStyle(color: Colors.blueGrey.shade500,fontSize: 16),
                      )
                    ]
                  ),
                ),
              ),
              SizedBox(
                height: Adaptive.h(1),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                      text:'Connect with our community' ,
                      style: TextStyle(color: Colors.blueGrey.shade500,fontSize: 16),
                      children: [
                        WidgetSpan(child: SizedBox(
                          width: 32.w,
                        )),

                        TextSpan(
                          text: 'All',

                          style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.w800,fontSize: 16,),
                        ),

                      ]
                  ),
                ),
              ),
                Container(
                    width:100.w,
                    alignment: Alignment.topRight,
                  child:
                Container(
                  margin: EdgeInsets.only(right: 12),
                  alignment: Alignment.topRight,
               child: DottedLine(dashLength: 10, dashGapLength: 10,dashColor: Colors.grey,),
                  width: 30.w,
                  )
                ),

              Container(
                alignment: Alignment.center,
                height: Adaptive.h(10), // or 12.5.h
                width: 90.w,
                margin: EdgeInsets.all(10),

                child: TextFormField(
                  controller: Username,
                  autocorrect: true,
                  keyboardType: TextInputType.name,
                  // Only numbers can be entered
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 8.0),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    floatingLabelBehavior:
                    FloatingLabelBehavior.always,
                    hintText: "Search",
                    hintStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black54),
                    prefixIcon:Align(
                      alignment: Alignment.center,
                      widthFactor: 0.1,
                      heightFactor: 0.1,
                      child: Icon(
                        Icons.search,
                        color: Colors.red.shade900,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 90.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Categories",
                      style: TextStyle(color: Colors.blueGrey.shade800,fontWeight: FontWeight.bold,fontSize: 24),),
                  ),
                  Container(
                    child: Text("View All",
                      style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                ],
                ),
              ),
              SizedBox(
                height: Adaptive.h(1),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                  style: TextStyle(color: Colors.grey,fontSize: 16),),
              ),
Row(
children: [

Container(

height: Adaptive.h(27),
        width: 100.w,
        child:   ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (context, _)=>SizedBox(width: 5.w,),
            itemBuilder: (context,index)=> buildCard( items[index], CardItem: null)),
      ),
  ]
),
              Container(
                width: 90.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Categories",
                        style: TextStyle(color: Colors.blueGrey.shade800,fontWeight: FontWeight.bold,fontSize: 24),),
                    ),
                    Container(
                      child: Text("View All",
                        style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Adaptive.h(1),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                  style: TextStyle(color: Colors.grey,fontSize: 16),),
              ),
              Row(
                  children: [

                    Container(

                      height: Adaptive.h(40),
                      width: 100.w,
                      child:   ListView.separated(
                          padding: EdgeInsets.all(16),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          separatorBuilder: (context, _)=>SizedBox(width: 5.w,),
                          itemBuilder: (context,index)=> buildCard1( items1[index], CardItem1: null)),
                    ),
                  ]
              ),
            ]
          )
          ),
        ),
          ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('SUBMIT A FREE AD'),
          icon: const Icon(Icons.camera_alt_rounded),
          backgroundColor: Colors.red.shade900,
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.white
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.interests_rounded),
                  label: 'Interest',
                  backgroundColor: Colors.white
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Message',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.blue,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedIconTheme: IconThemeData(
              color: Colors.grey.shade600
            ),

            iconSize: 25,
            onTap: _onItemTapped,
            elevation: 0
        ),
      ),

    );
        }
    );
  }
  Widget buildCard(CardItem item, {
    required CardItem  ,
  }) => Container(
    width: 30.w,

   color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: Adaptive.h(3),),
        Container(
          height: Adaptive.h(10),
          width: 60.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
color: Colors.red.shade600,
              border: Border.all(color: Colors.white)
          ),
          child:
Icon(item.icons,size: 40,color: Colors.black,)
            ,
          ),

        SizedBox(height: Adaptive.h(2),),
        Text(item.title2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade800,),),
        SizedBox(height: Adaptive.h(1),),

      ],
    ),
  );
  Widget buildCard1(CardItem1 item1, {
    required CardItem1  ,
  }) => Container(
    width: 60.w,

    color: Colors.white,
    child: Column(
      children: [
        SizedBox(height: Adaptive.h(3),),
        Row(
          children: [
            Container(
              height: Adaptive.h(7),
              width: 20.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  border: Border.all(color: Colors.black)
              ),
              child:
              Icon(item1.icons1,size: 30,color: Colors.black,)
              ,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child:Text(item1.title1,style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey.shade800,
                  ),) ,
                ),
                Container(
                  child:Text(item1.subtitle1,style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey.shade800,
                  ),) ,
                )
              ],
            )

          ],
        ),
SizedBox(height: Adaptive.h(2),),
        Container(
          margin: EdgeInsets.only(left:10,right: 10),
          height: Adaptive.h(20),
          width: 70.w,
          child:Material(

  child:
          Ink.image(image: AssetImage(item1.image),
              fit: BoxFit.cover,
              child: InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>card() ),
                  )),
        ),
          ),
        ),

      ],
    ),
  );

}


