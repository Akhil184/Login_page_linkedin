import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_page.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  bool passwordVisible=false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Forgot Password',
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
        backgroundColor: Color(0xff0077b5 ),
        centerTitle:true,
      ),
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
                            Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontWeight:FontWeight.bold,
                                fontFamily: 'Gilroy',
                                color: Colors.black,
                                fontSize: 25.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Reset password in two quick steps',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.black,
                                fontSize: 13.sp,
                              ),
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
                              height: 40.h,
                            ),
                            InkWell(
                              onTap: () async {
                                if (_controller.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please Enter Email')),
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
                                    'Reset password',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height:10.h,),
                            Center(
                            child:TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const LoginPage()),
                                );
                              },
                              child:Text(
                              'Back',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.black,
                                fontSize: 15.sp,
                              ),
                            ),
                            ),
                            ),
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
