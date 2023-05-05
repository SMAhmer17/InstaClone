
import 'dart:ffi';

import 'package:app10/widgets/post_view_widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/story-View.dart';
class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: 70,
                        padding: const EdgeInsets.only(right: 7.0 , left: 7.0 , top: 10 ),
                      child: const CircleAvatar(
                                  radius: 32,
                                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/PROFILE1.jpg' ),
                                  ),
                                ),
                    ),
                    const SizedBox(height: 8,),
                        const Padding(
                          padding: EdgeInsets.only(left : 8.0),
                          child: Text('John', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                        ),
                  ],
                ),
                for (int i = 0; i < 20 ; i++)
                  Container(
                    width: 70,
                    margin: const EdgeInsets.only(right: 2.0),
                    child: Column(
                      children: const [
                        storyViewWidget(),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(left : 8.0),
                          child: Text('Alexa ', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                        ),
                      ],
                    ),
                  )
                
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          for(int i = 0; i <10 ; i++)
          postViewWidget(),
      ]),
    );
  }
}