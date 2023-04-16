import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:thella_wala/splash_screen/Aftersearch.dart';
import 'package:thella_wala/splash_screen/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:gali_food/screens/about.dart';
// import 'package:gali_food/screens/aftersearch.dart';
// import 'package:gali_food/screens/locationmanually.dart';
void main() => runApp(const MyAppl());
 
class MyAppl extends StatelessWidget {
  const MyAppl({Key? key}) : super(key: key);
 
  static const String _title = 'Sample App';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
           Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: [Container(padding: const EdgeInsets.all(10),
              child: Icon( Icons.home,size: 40,)),
               Container(  padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Home',
                          style: TextStyle(fontSize: 40),
                        )),
                        SizedBox(width: 40,),
                        IconButton(onPressed: (){
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => About()),
                            );
                        }, icon: Icon(Icons.person_2_rounded,size:40,))
             ],
           ),
        Align(
          child: Container(              padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, size: 20),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Shop Name/Food name',
                    ),
                  ),),
        ),SizedBox(height: 20,),Row(
      children: <Widget>[
          Expanded(
              child: Divider(color: Colors.black,)
          ),       
    
          Text("Dishes Near You"),        
    
          Expanded(
              child: Divider(color: Colors.black,)
          ),
      ]
    ),
    SizedBox(height: 20,),
         
          InkWell(onTap: (){
             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AfterSearch()),
                            );
          },
            child: Align(
              child: Material(
                
                child:Container(
                width:350,
                height:200,
                decoration:BoxDecoration(
              color : Colors.white,
              borderRadius : BorderRadius.circular(15),
                 
                 boxShadow: [
                                      BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3),)]
                ),
              
                
                child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                Container(
                child: Image.asset(
                  "assets/chat.jpg",
                  height: 150,
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.black,)
              ),
                Text(
                  "Chotu panipuri 100m.5min",
                  style: TextStyle(
                    fontSize: 23,
                   // fontWeight: ,
                  ),
                ),
                
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction : Axis.horizontal,
                  itemCount: 5,
                  itemSize:16,
                  itemPadding:EdgeInsets.symmetric(horizontal: 4),
                
                  itemBuilder: (context, _) =>Icon(
                     Icons.star,
                     color: Colors.red,
                     ),
                     onRatingUpdate: (index){}
                ),
                
              ],
              ),
              ))),
            ),
          ),
          SizedBox(height:50),
           Align(
             child: Material(
              
               child:Container(
               width:350,
               height:200,
               decoration:BoxDecoration(
                     color : Colors.white,
                     borderRadius : BorderRadius.circular(15),
                
                boxShadow: [
                                    BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 3,
                     blurRadius: 10,
                     offset: Offset(0,3),)]
               ),
                     
               
               child:Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child:Column(
                     //mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
             
              Container(
              child: Image.asset(
                "assets/pavbhaaji.jpg",
                height: 150,
                ),
              ),
              Expanded(
                child: Divider(color: Colors.black,)
                     ),
              Text(
                "Karnika pavbhaji 100m.5min",
                style: TextStyle(
                  fontSize: 23,
                 // fontWeight: ,
                ),
              ),
              
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction : Axis.horizontal,
                itemCount: 5,
                itemSize:16,
                itemPadding:EdgeInsets.symmetric(horizontal: 4),
               
                itemBuilder: (context, _) =>Icon(
                   Icons.star,
                   color: Colors.red,
                   ),
                   onRatingUpdate: (index){}
              ),
              
                     ],
                     ),
                     ))),
           ),
        ],
      ),
    );}}