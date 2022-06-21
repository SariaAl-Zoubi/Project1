
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/screen/Customer/companies_screen.dart';

class Exhibitions extends StatelessWidget {
 // const Exhibitions({Key? key}) : super(key: key);
  var Search =TextEditingController();

  final List<String> tabNames = [
    "All",
    "Favorite",
    "Mine",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          toolbarHeight: 45,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black.withOpacity(0.3)
          ),
          title: Column(
            children: [
              SizedBox(
                height: 11,
              ),
              Text(
                'Exhibitions',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.teal),),
            ],
          ),
          centerTitle: true,
          leading:IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black) ,

        ),

        ),
        backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextFormField(
              controller: Search,
              cursorColor: Colors.teal,
             decoration: InputDecoration(
               floatingLabelStyle: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w600,
                 color: Colors.black


               ),
               filled: true,
               fillColor: Color(0xFF0F4857).withOpacity(0.3),
               contentPadding: EdgeInsets.symmetric(horizontal: 24),
               labelText: 'Search',
               labelStyle: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w600,
                 color: Colors.black
               ),
               hintText: 'Search',
               hintStyle: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w600,
                   color: Colors.grey.shade800
               ),
               suffixIcon: Icon(Icons.search,color: Colors.black,),
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                 borderSide: BorderSide(
                   color: Colors.teal,
                   width: 2
                 )
               ),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(
                         color: Colors.black,
                         width: 2
                     )
                 )

             ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: ListView.builder(
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {

                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 128,
                      height: double.infinity,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: MaterialButton(
                        onPressed: (){},
                        child: Center(
                            child: Text(
                              tabNames[index],style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.white
                            ),
                            )),
                      ),

                    ),
                  );
                }
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Companies()));
            },
            child: Stack(
              alignment:Alignment.bottomCenter,
              children: [
                Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPhECElpd0mt2_9K4qlmsIbarKWZOel1vKzA&usqp=CAU'),fit:BoxFit.fill,height: 200,width: double.infinity,),
                Text(
                  'معرض دمشق الدولي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white),),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Text(
                        'StartDate:',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,),),
                      Text('2022-3-4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.teal),)
                    ],
                  ),),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Text(
                        'EndDate:',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,),),
                      Text('2022-3-4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.teal),)
                    ],
                  ),),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Status',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                ),
                Spacer(),
                Text('43',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                IconButton(
                    onPressed: (){}, icon: Icon(Icons.favorite_outlined,color: Colors.red,size: 25,)),
              ],
            ),
          SizedBox(
            height: 2,
          ),
          Column(
            children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(

                  child: Image(
                    image: NetworkImage('https://cdn.al-ain.com/images/2019/9/15/154-192506-images-life-around-world-expo-5.jpeg'),
                    fit: BoxFit.fill,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                Text(
                  'معرض دمشق الدولي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white),),

              ],
            )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shadowColor: Colors.teal,
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.teal,width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(

                    child: Image(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuTAMlwPTyP728l-9dMayPX7AXMYlwe_xdTA&usqp=CAU'),
                      fit: BoxFit.fill,
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                  Text(
                    'معرض دمشق الدولي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white),),
                ],
              )

              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                ClipRRect(

                  child: Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBkQk2hkWfILY_jsruVkr_4Zvw_VkPCkckOw&usqp=CAU'),
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
                Text(
                  'معرض دمشق الدولي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.black),),

              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                ClipRRect(

                  child: Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBkQk2hkWfILY_jsruVkr_4Zvw_VkPCkckOw&usqp=CAU'),
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
                Text(
                  'معرض دمشق الدولي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.black),),

              ],
            ),
          ),

        ],),
      )

    );
  }
}




























/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/screen/Customer/companies_screen.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Exhibitions extends StatefulWidget {
  const Exhibitions({ Key? key }) : super(key: key);

  @override
  _ExhibitionsState createState() => _ExhibitionsState();
}

class _ExhibitionsState extends State<Exhibitions> {
  final List<Widget> images = [
    Card(
      child:ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("https://images.unsplash.com/photo-1541778480-fc1752bbc2a9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fHdhdGNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", fit: BoxFit.fill,height: 250,),
      ),
    ),
    Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("https://images.unsplash.com/photo-1434056886845-dac89ffe9b56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHdhdGNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60", fit: BoxFit.fill,),
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network("https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0Y2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", fit: BoxFit.fill,),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network("https://images.unsplash.com/photo-1547996160-81dfa63595aa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHdhdGNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", fit: BoxFit.fill,),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network("https://images.unsplash.com/photo-1617714651073-17a0fcd14f9e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHdhdGNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", fit: BoxFit.cover,),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network("https://images.unsplash.com/photo-1618828272323-9f46e858e55e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fHdhdGNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", fit: BoxFit.cover,),
    ),
  ];

  final List<String> titles = ['DAMASCUS', 'ALLEPO', 'DARAA', 'HOMS', 'dfghj', 'dfghj'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      backgroundColor: Colors.grey.shade300,
       appBar: AppBar(
         systemOverlayStyle: SystemUiOverlayStyle(
           statusBarColor: Colors.black,
           statusBarIconBrightness: Brightness.light
         ),
         backgroundColor:  Color(0xFF0F4857),
         toolbarHeight: 50,
       ),

      body: Column(
          children: <Widget>[

            Expanded(
              child: VerticalCardPager(
                textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white.withOpacity(0.7)),
                images: images,
                titles: titles,
                onPageChanged: (page) {},
                onSelectedItem: (index) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Companies()));
                },
              ),
            ),

          ],
        ),
    );
  }
}
Widget drawer()=>
    Drawer();*/
/*
*  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text('Start Date:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),
                        Text('2022-2-3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),),
                        Spacer(),
                        Row(
                          children: [
                            Text('End Date:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),
                            Text('2022-2-8',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),),

                          ],
                        ),

                      ],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Row(
                     children: [
                       Text('Status',style:TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,)),
                       Spacer(),
                       IconButton(
                         onPressed: (){}, icon: Icon(Icons. favorite_outlined ,color: Colors.red,size: 30,)),
                       Text(
                         '43',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,),),
                              ],
                   ),
                 )
*/
/*
*
*
*   Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shadowColor: Colors.green,
              elevation: 8,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment:Alignment.bottomCenter ,

                    children: [
                      ClipRRect(

                        child: Image(
                          image: NetworkImage('https://cdn.al-ain.com/images/2019/9/15/154-192506-images-life-around-world-expo-5.jpeg'),
                          fit: BoxFit.fill,
                          height: 200,
                          width: double.infinity,
                        ),
                      ),
                      Text(
                        'معرض دمشق الدولي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white.withOpacity(1),),),
                    ],
                  ),
                 Container(
                   color: Colors.teal.shade100,
                   child: ExpansionTile(
                       backgroundColor: Colors.teal.shade100,
                       title: Text('Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.black),)),
                 )


                ],
              ),
            ),*/