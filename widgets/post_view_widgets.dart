import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class postViewWidget extends StatefulWidget {
  const postViewWidget({super.key});

  @override
  State<postViewWidget> createState() => _postViewWidgetState();
}

class _postViewWidgetState extends State<postViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/PROFILE1.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'John Micheal',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/post_image.jpg',
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Image.asset(
                          'assets/icons/heart1.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Image.asset(
                          'assets/icons/bubble-chat.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/send.png',
                        height: 25,
                        width: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/icons/save.png',
                    height: 25,
                    width: 25,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '3,695 views',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        'John Micheal',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'This Instagram Ui is mage by me....See More',
                        style: TextStyle(
                            fontWeight: FontWeight.w100, color: Colors.white),
                      )
                    ],
                  ),
                    const  SizedBox(
                        height: 8.0,
                      ),
                  const Text(
                    'View all 6 comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w300 , color: Colors.white),
                  ),
                   const  SizedBox(
                        height: 8.0,
                      ),
                  Row(
                    children: const [
                      Text(
                        '12 minutes ago',
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'See Translation',
                        style: TextStyle(
                            fontWeight: FontWeight.w100, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
    );
  }
}
