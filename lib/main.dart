import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Demo Screen Utils'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xffE5E5E5),
            statusBarBrightness: Brightness.light),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffE5E5E5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(ScreenUtil().radius(50)),
                    bottomRight: Radius.circular(ScreenUtil().radius(50)))),
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(24),
                right: ScreenUtil().setWidth(24)),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                Row(
                  children: [
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(4),
                    ),
                    Image.asset("assets/images/User.png")
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                Row(
                  children: const [
                    Text(
                      "Welcome back , Rohit thakur",
                      style: TextStyle(fontSize: 14, color: Color(0xff5B5B5B)),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(49),
                ),
                Image.asset(
                  "assets/images/mainPic.png",
                  width: ScreenUtil().setWidth(296),
                  height: ScreenUtil().setHeight(231),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                const Text(
                  "Enter Your Mobile Number",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF2796B)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(31),
                ),
                TextField(
                  style: const TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                      hintText: "Enter Number",
                      hintStyle: const TextStyle(
                          color: Color(0xff545151), fontSize: 13),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10))),
                      filled: true,
                      fillColor: Colors.white),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(11),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Change Number ?",
                      style: TextStyle(
                          fontSize: 12,
                          color: const Color(0xff000000).withOpacity(0.6)),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(17),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(35),
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(43),
                  width: ScreenUtil().setWidth(367),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xffF2796B)),
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().radius(10))),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xffF2796B))),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(32),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: ScreenUtil().setWidth(105),
                      color: Color(0xffA39797),
                    ),
                    const Text(
                      " Or Login with ",
                      style: TextStyle(fontSize: 12, color: Color(0xffA39797)),
                    ),
                    Container(
                      height: 1,
                      width: ScreenUtil().setWidth(105),
                      color: const Color(0xffA39797),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.png"),
                    SizedBox(
                      width: ScreenUtil().setWidth(6),
                    ),
                    const Text(
                      "Google",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(44),
                ),
                RichText(
                    text: TextSpan(
                        text: "You Don’t have an account ? ",
                        style: TextStyle(
                            fontSize: 12, color: Colors.black.withOpacity(0.6)),
                        children: [
                      TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6)))
                    ])),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
