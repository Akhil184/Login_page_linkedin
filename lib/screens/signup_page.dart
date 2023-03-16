import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/screens/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible=false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }

  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Sign Up',style: TextStyle(
        fontWeight:FontWeight.bold,
        fontFamily: 'Gilroy',
        fontSize: 20.sp,
      ),
      ),
        backgroundColor: Color(0xff0077b5 ),
        centerTitle:true,),
      body:Center(
        child:ListView(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 100.h),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: ScreenUtil().screenWidth,
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.w, vertical: 50.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(height:20.h,),
                            Container(
                              height: 50.h,
                              child: TextField(
                                controller: _controller,
                                textAlign: TextAlign.start,
                                cursorColor: Colors.black,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: 'Email Id',
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              height: 50.h,
                              child: TextField(
                                obscureText: passwordVisible,
                                keyboardType:TextInputType.visiblePassword,
                                controller: _controller1,
                                textAlign: TextAlign.start,
                                cursorColor: Colors.black,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  suffix:TextButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordVisible = !passwordVisible;
                                      });
                                    },
                                    child:Text(
                                      'show', style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      color: Color(0xff0077b5 ),
                                      fontSize: 13.sp,
                                    ),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height:20.h,),
                            Text(
                              'By clicking Agree & Join, you agree to the LinkedIn',
                              style: TextStyle(
                                fontWeight:FontWeight.bold,
                                fontFamily: 'Gilroy',
                                color: Colors.black,
                                fontSize: 11.sp,
                              ),
                            ),
                            Text(
                              'User Agreement,Privacy Policy.',
                              style: TextStyle(
                                fontWeight:FontWeight.bold,
                                fontFamily: 'Gilroy',
                                color: Color(0xff0077b5 ),
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            InkWell(
                              onTap: () async {
                                if(_controller.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please Enter Email')),
                                  );
                                }
                                else if(_controller1.text.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please Enter Password')),
                                  );
                                }
                                else if(_controller1.text.isEmpty && _controller.text.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please Enter Email && Password')),
                                  );
                                }
                              },
                              borderRadius: BorderRadius.circular(30.r),
                              child: Container(
                                width: 240.w,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                  vertical: 15.h,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff0077b5 ),
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: Center(
                                  child: Text(
                                    'Agree & Join',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height:20.h,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already on LinkedIn?',
                                  style: TextStyle(
                                    fontWeight:FontWeight.bold,
                                    fontFamily: 'Gilroy',
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const LoginPage()),
                                    );
                                  },
                                  child:Text(
                                    'Sign in',
                                    style: TextStyle(
                                      fontWeight:FontWeight.bold,
                                      fontFamily: 'Gilroy',
                                      color: Color(0xff0077b5 ),
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
