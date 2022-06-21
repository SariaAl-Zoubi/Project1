import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/bloc/Add_Cubit/cubit.dart';
import 'package:project/bloc/Add_Cubit/state.dart';

class ProductAdmin extends StatelessWidget {
  var nameController = TextEditingController();
  var priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final List<String> tabNames = [
      "All",
      "Favorite",
      "Mine",
    ];


    return   Scaffold(
      drawer:drawer() ,
          floatingActionButton:FloatingActionButton(
            onPressed: (){
              showDialog(context: context, builder: (context)=>SingleChildScrollView(
                child: AlertDialog(
                  scrollable: true,
                  actions: [
                    BlocProvider(
                        create: (context)=>AddCubit(),
                        child:BlocConsumer<AddCubit,AddState>
                          (
                          listener: (context,state){},
                          builder: (context,state){
                            File ?image=AddCubit.get(context).image;
                            return SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(5),
                                              child:  Image(
                                                image: image ==null ?
                                                NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZxrK0vSEo4Kcj1dZr85RFg-dLMdKluXfyHA&usqp=CAU') : FileImage(image) as ImageProvider<Object>,
                                                fit: BoxFit.fill,
                                                width: 200,
                                                height: 180,
                                              )),
                                          Transform.translate(
                                              offset: const Offset(170, 145),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.teal,
                                                child: IconButton(
                                                  onPressed: () {
                                                    AddCubit.get(context).getImage();
                                                  },
                                                  icon: Icon(Icons.camera_alt_sharp,color: Colors.white,),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    TextField(
                                      controller: nameController,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                        fillColor: Colors.grey.shade200,
                                        filled: true,
                                       prefixIcon: Icon(Icons.production_quantity_limits,color: Colors.teal,),
                                        labelText: 'Name',
                                        hintText: ' product_name',
                                        hintStyle: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 14.0,
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),

                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.teal, width: 2),
                                          borderRadius: BorderRadius.circular(40.0),
                                        ),
                                        floatingLabelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.blueGrey, width: 1.5),
                                          borderRadius: BorderRadius.circular(40.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                      20,
                                    ),
                                    TextFormField(
                                      controller: priceController,
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.attach_money_outlined,color: Colors.teal,),
                                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                          filled: true,
                                          fillColor: Colors.grey.shade200,
                                          labelText: 'Price',
                                          labelStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                          hintText: 'price',
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey.shade700
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.teal,
                                                width: 2
                                            ),
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey,
                                                width: 2
                                            ),
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          floatingLabelStyle: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black
                                          )
                                      ),

                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    MaterialButton(onPressed: (){},
                                      height: 45,
                                      color:Colors.teal,
                                      child: Text(
                                        'AddProduct',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                    ),
                  ],
                ),
              ));
            },
            child: Icon(Icons.add),
            backgroundColor: Color(0xFF0F4857),
          ),
          backgroundColor: Colors.grey.shade300,
            appBar: AppBar(
              backgroundColor: Colors.teal,
              elevation: 0,
             systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light
              ),
              title: Row(
                children: [
                  SizedBox(width: 77,),
                  Center(child: Text('MyProducts',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                ],
              ),
            ),
            body:Column(
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
                            width: 129,
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
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 1,
                    childAspectRatio: 1/1.1,
                    crossAxisCount: 2,
                    children:List.generate(10, (index) => Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shadowColor: Colors.green,
                      elevation: 10,
                      child: InkWell(
                        child: Column(
                          children: [
                            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT500HansDmzrkNBIjjpxaMPXBrJ-6GJ4JSkWNS0wB68Y2I_2eA-ft_m8bKM0wrUGMohVk&usqp=CAU',fit: BoxFit.fill,width: 200,height: 153,),
                            SizedBox(
                              width: 11,
                            ),
                            Text(
                              'Product ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                            Row(
                              children: [
                                SizedBox(width: 5,),
                                Text('Price:',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                                SizedBox(width: 5,),
                                Text('2313',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.teal)),
                                Spacer(),
                                Text('43'),
                                IconButton(onPressed: (){}, icon: CircleAvatar(backgroundColor: Colors.green,child: Icon(Icons. favorite_outline_sharp,color: Colors.black, )),color: Colors.green,),


                              ],
                            )
                          ],
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            )
        )
    ;

  }

}
class MyColors {
  static const Color primaryColor = Color(0xFF52BBA8);
  static const Color lightGrey = Color(0xFFEFEFEF);
  static const Color darkGrey = Color(0xFF565656);
  static const Color white = Colors.white;
  static const Color secondaryColor = Color(0xFF0F4857);
  static const Color red = Color(0xFFFF5252);
}
Widget drawer() => Drawer(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      DrawerHeader(child: Text('jj')),

      ExpansionTile(title: Text('filters',style: TextStyle(fontSize: 30)),
      children: [
        Text('by start',style: TextStyle(fontSize: 30),),
        Text('by end',style: TextStyle(fontSize: 30),)
      ],),
      Text('sdfg'),
      Text('sdfg')
    ],
  ),
);
  Color secondaryColor = Color(0xFF0F4857);
Color color =Color(0X244D61);
//53B89DFF
Color primaryColor = Color(0xFF53B89D);
Color prrimaryColor = Color(0xFF65DEBF);

 Color primaryColofr = Color(0xFF52BBA8);