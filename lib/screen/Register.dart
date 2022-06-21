import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Register extends StatelessWidget {
 // const Register({Key? key}) : super(key: key);
  var UserNameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var UserCompanyAdmin=TextEditingController();
  var controller=TextEditingController();

late Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Register ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                     // fontSize: 40,
                      fontFamily: 'Montserrat',
                    fontSize: 40.0,
                    color: Colors.teal,
                    // color: Color(0xFF53B89D)
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create Your Accout !',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: UserNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    contentPadding: EdgeInsets.all(17),
                    label: Text('UserName'),
                    hintText: 'UserName',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                    prefixIcon: Icon(
                      Iconsax.user,
                      color: Colors.black,
                      size: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2),
                      borderRadius: BorderRadius.circular(40),
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
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    contentPadding: EdgeInsets.all(17),
                    label: Text('Email'),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2),
                      borderRadius: BorderRadius.circular(40),
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
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    contentPadding: EdgeInsets.all(17),
                    label: Text('Password'),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade700),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                    prefixIcon: Icon(
                      Iconsax.key,
                      color: Colors.black,
                      size: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2),
                      borderRadius: BorderRadius.circular(40),
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
                  height: 15,
                ),
                TextField(
                     keyboardType: TextInputType.emailAddress,
                     controller: emailController,
                     decoration: InputDecoration(
                       fillColor: Colors.grey.shade200,
                       filled: true,
                       contentPadding: EdgeInsets.all(17),
                       label: Text('Phone'),
                       hintText: 'Phone',
                       hintStyle: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Colors.grey.shade600),
                       labelStyle: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontSize: 14,
                           color: Colors.black),
                       prefixIcon: Icon(
                         Icons.phone,
                         color: Colors.black,
                         size: 22,
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide:
                         BorderSide(color: Colors.teal, width: 2),
                         borderRadius: BorderRadius.circular(40),
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
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: UserCompanyAdmin,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    contentPadding: EdgeInsets.all(17),
                    label: Text('User/Company/Admin'),
                    hintText: 'User/company/Admin',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2),
                      borderRadius: BorderRadius.circular(40),
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
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    contentPadding: EdgeInsets.all(17),
                    label: Text('CompanyEmail'),
                    hintText: 'CompanyEmail',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2),
                      borderRadius: BorderRadius.circular(40),
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
                  height: 15,
                ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Container(
                     width: 183,
                     child: TextField(
                       keyboardType: TextInputType.emailAddress,
                       controller: emailController,
                       decoration: InputDecoration(
                         fillColor: Colors.grey.shade200,
                         filled: true,
                         contentPadding: EdgeInsets.all(17),
                         label: Text('Company-Name'),
                         hintText: 'Company-Name',
                         hintStyle: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Colors.grey.shade600),
                         labelStyle: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black),
                         prefixIcon: Icon(
                           Icons.email,
                           color: Colors.black,
                           size: 22,
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide:
                           BorderSide(color: Colors.teal, width: 2),
                           borderRadius: BorderRadius.circular(40),
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
                   ),
                   SizedBox(
                     width: 15,
                   ),
                   Container(
                     width: 183,
                     child: TextField(
                       keyboardType: TextInputType.emailAddress,
                       controller: emailController,
                       decoration: InputDecoration(
                         fillColor: Colors.grey.shade200,
                         filled: true,
                         contentPadding: EdgeInsets.all(17),
                         label: Text('Company-Place'),
                         hintText: 'Company-place',
                         hintStyle: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Colors.grey.shade600),
                         labelStyle: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 14,
                             color: Colors.black),
                         prefixIcon: Icon(
                           Icons.email,
                           color: Colors.black,
                           size: 22,
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide:
                           BorderSide(color: Colors.teal, width: 2),
                           borderRadius: BorderRadius.circular(40),
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
                   ),
                 ],
               ),
             ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width:double.infinity,
                  child:  Center(
                    child: PinCodeTextField(

                      controller: controller,
                      highlight: true,
                      highlightColor: Colors.blue,
                      defaultBorderColor: Colors.teal,
                      hasTextBorderColor: Colors.green,
                      maxLength: 4,
                      pinBoxWidth: 50,
                      pinBoxHeight: 50,
                      pinTextStyle: TextStyle(fontSize: 22.0),
                      pinTextAnimatedSwitcherDuration:
                      Duration(milliseconds: 300),
                      highlightAnimationBeginColor: Colors.black,
                      highlightAnimationEndColor: Colors.white12,
                      keyboardType: TextInputType.number,
                    ),
                  )),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(

                  onPressed: () {
                    print(controller.text);
                  },
                  height: 45,
                  color: Colors.teal,
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 140),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
