import 'package:app10/Screens/Search_Screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Home_Screen.dart';
import 'Screens/Profile_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: showAppBar(),
      body: getScreen(),
      bottomNavigationBar: bottomBarWidget(),
    );
  }

  AppBar showAppBar() {
    return AppBar(
      leading: Icon(Icons.camera_enhance_sharp),
      //Image.asset('assets/icons/camera.png',color: Colors.white, width: 5, height: 5,),

      backgroundColor: Colors.black,
      elevation: 0.0,
      title: const Center(
        child: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billbong',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 45,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/heart1.png',
                color: Colors.white,
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icons/send.png',
                color: Colors.white,
                width: 20,
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget getScreen() {
    switch (index) {
      case 0:
        return const homeView();

      case 1:
        return const searchView();

      case 4:
        return const profileView();

      default:
        return Container();
    }
  }

  Widget bottomBarWidget() {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              index = 0;
              setState(() {});
            },
            child: Image.asset(
              'assets/icons/home.png',
              color: Colors.white,
              width: 23,
              height: 23,
            ),
          ),
          InkWell(
            onTap: () {
              index = 1;
              setState(() {});
            },
            child: Image.asset(
              'assets/icons/search.png',
              color: Colors.white,
              width: 23,
              height: 23,
            ),
          ),
          Image.asset(
            'assets/icons/instagram-post.png',
            color: Colors.white,
            width: 35,
            height: 35,
          ),
          Image.asset(
            'assets/icons/video.png',
            color: Colors.white,
            width: 23,
            height: 23,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => profileView()));
              index = 4;
              setState(() {});
            },
            radius: 24,
            child: const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/PROFILE1.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
