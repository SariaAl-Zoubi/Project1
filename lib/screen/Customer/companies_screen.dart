import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/screen/%20Admin/Product_Screen.dart';

class Companies extends StatelessWidget {

  final List<String> tabNames = [
    "All",
    "Favorite",
    "Mine",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:  Colors.teal,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(0.3)
        ),
        title: Text( 'DAMASCUS EXHIBTION',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20 ),),

      ),
      body:  Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
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
                        width: 127,
                        height: double.infinity,
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(40),
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
              height: 3,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 7),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductAdmin()));
                      },
                      child: Card(

                        clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),

                      ),

                      color: Colors.grey.shade200.withOpacity(0.8),
                child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                          width: 78,
                          height: 78,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReH7Xm6VJwmCd7FF7fgqTsKV4GZftjQrh-8vJrOwVtQx1vxUmZMd_s16rFLBtlGNoedl8&usqp=CAU',),
                            ),
                          ),
                  ),
                        ),

                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text('Amazon',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text('table n',style: TextStyle(color: Colors.grey.shade700),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.green,
                                child: Icon(Icons.favorite_border_outlined,
                                    color: Colors.black),
                              ),
                            ),
                            Text('40',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        )
                      ],
                )
              ),
                    ),
                  ),
                  separatorBuilder:(context,index)=> SizedBox(height:10 ,),
                  itemCount: 10),
            ),
          ],
        ),
      ),

    );
  }
}
// static const Color secondaryColor = Color(0xFF0F4857);
// Color(0X339476).withOpacity(1),