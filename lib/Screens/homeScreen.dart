import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/Screens/image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true, 
       appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(top:40,left: 20,right: 20,bottom: 20),
        height: size.height,
        width: size.width,
         decoration:const BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/moon.jpg'),
      fit: BoxFit.cover, 
    ),
  ),
  child: Stack(
    children: [
      Container(
        height: 50,
        child: Row(children: [
          Container(
            child:const Row(
              children: [Icon(Icons.location_pin,color: Colors.red,),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dubai",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20)),
                  Text("Good Morning",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)
                ],
              )],
            ),
          )
        ],),
      ),
      
      Align(
        alignment:const Alignment(0,-0.5),
        child:Image.asset(imagepath[0]))
      
    ],
  ),
      ),//
      // body: Padding(padding: const EdgeInsets.fromLTRB(40, 1.2 *kToolbarHeight,40,20),
      // child: SizedBox(
      //   height:MediaQuery.of(context).size.height,
      //   child:Stack(
      //     children: [
      //       Align(
      //         alignment:AlignmentDirectional(3,-0.3),
      //         child: Container(
      //           height: 300,
      //           width: 300,
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             color: const Color.fromARGB(255, 188, 22, 10)
      //           ),
      //         ),
      //       ),
      //         Align(
      //         alignment:AlignmentDirectional(-3,-0.3),
      //         child: Container(
      //           height: 300,
      //           width: 300,
      //           decoration:const BoxDecoration(
      //             shape: BoxShape.circle,
      //             color: const Color.fromARGB(255, 188, 22, 10)
      //           ),
      //         ),
      //       ),
      //         Align(
      //         alignment:AlignmentDirectional(0,-1.2),
      //         child: Container(
      //           height: 300,
      //           width: 600,
      //           decoration:const BoxDecoration(
      //             color: Colors.black
      //           ),
      //         ),
      //       ),
      //       BackdropFilter(filter:ImageFilter.blur(sigmaX: 100.0,sigmaY: 100),
      //       child: Container(
      //         decoration: BoxDecoration(color: Colors.transparent),
      //       ),),
      //       SizedBox(
      //          width: MediaQuery.of(context).size.width,
      //          height:MediaQuery.of(context).size.height,
      //          child:const Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //           Text(
      //               'Aix-en-Provence',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
      //             ),
      //             SizedBox(height: 8,),
      //             Text(
      //               "Good Morning",
      //               style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w500),
      //             )
      //           ],
      //          ),

      //       )
      //     ],
      //   ) ,
      // )
      // ),
    );
  }
}