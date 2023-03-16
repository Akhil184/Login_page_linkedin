import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:[
        Container(
        height: 40.h,
        width:200.w,
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
    hintText: 'Search',
    filled: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(
    color: Colors.black,
    fontFamily: 'Gilroy',
    ),
    ),
    ),
    ),
          Icon(Icons.message,color:Colors.white),
        ],
        ),
        centerTitle:true,
        backgroundColor:Color(0xff0077b5 ),),
      body:ListView(
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
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Image.asset('asset/img.png',width:500.w,),
                          SizedBox(height:20.h,),
                          Row(
                            children:[
                          LikeButton(
                            size:20,
                            circleColor:
                            CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Color(0xff33b5e5),
                              dotSecondaryColor: Color(0xff0099cc),
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.thumb_up_alt_outlined,
                                color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                                size:20,
                              );
                            },
                            countBuilder: (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color),
                                );
                              } else
                                result = Text(
                                  text,
                                  style: TextStyle(color: color),
                                );
                              return result;
                            },
                          ),
                        ],
                      ),
                      ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Image.asset('asset/img_1.png')
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
    );
  }
}

