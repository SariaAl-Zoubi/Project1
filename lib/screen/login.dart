import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project/screen/Customer/Exhibitions_Screen.dart';
import 'package:project/screen/Register.dart';

class Login extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        body:SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image(
                      image: NetworkImage('https://raw.githubusercontent.com/ahmadshahal/tawfeer/development/assets/images/tawfeer_logo.png'),
                    ),
                    TextField(
                      controller:emailController,
                      cursorColor: Colors.green.shade700,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        contentPadding: EdgeInsets.all(17.0),
                        labelText: 'UserName',
                        hintText: 'Username ',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 14.0,
                        ),
                        prefixIcon: Icon(Iconsax.user, color: Colors.black, size: 18, ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Colors.green.shade700,
                          fontSize: 18.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green.shade700, width: 1.5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,),
                    TextField(
                      controller: passwordController,
                      cursorColor: Colors.green.shade700,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        contentPadding: EdgeInsets.all(16.0),
                        labelText: 'Password',
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 14.0,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(Iconsax.key, color: Colors.black, size: 18, ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Colors.green.shade700,
                          fontSize: 18.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green.shade700, width: 1.5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Don\'t have an account?', style: TextStyle(color: Colors.grey.shade800, fontSize: 14.0, fontWeight: FontWeight.w400),),
                            TextButton(
                              onPressed: () {

                              },
                              child:Text(
                                'Register', style: TextStyle(color: Colors.green.shade800, fontSize: 14.0, fontWeight: FontWeight.w600,fontFamily: 'Roboto-BlackItalic.ttf'),),
                            )
                          ],
                        ),
                        // TextButton(onPressed: (){}, child: Text('continue as a gist',style: TextStyle(fontSize: 20,color: Color(0xFF53B89D),fontFamily: 'Robot'),) ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Exhibitions()));
                      },
                      height: 45,
                      color: Colors.teal.withOpacity(1),
                      child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 15,),
                    Row(
                      children: [
                        Text(
                          'continue as a gist',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green.shade700,fontFamily: 'Roboto Condensed'),),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context, MaterialPageRoute(builder: (context) => SignUpPage()));
                          },
                          child: SizedBox.fromSize(
                            size: const Size.square(65.0), // button width and height
                            child: const ClipOval(
                              child: Material(
                                  child: Icon(Icons.arrow_forward_outlined,color: Colors.white,),
                                  color: Colors.teal // button color
                              ),
                            ),
                          ),
                        ),
                      ],
                    )



                  ],
                ),
              ),
            ),


    );
  }}
  //00E0C6
//0X339476
//0xFF53B89D
/*Center(
                     child: Image(
                       image: NetworkImage('https://raw.githubusercontent.com/ahmadshahal/tawfeer/development/assets/images/tawfeer_logo.png'),
                     ),
                   ),*/