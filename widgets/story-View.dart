import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class storyViewWidget extends StatefulWidget {
  const storyViewWidget({super.key});

  @override
  State<storyViewWidget> createState() => _storyViewWidgetState();
}

class _storyViewWidgetState extends State<storyViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: const CircleAvatar(
        radius: 32,
        backgroundColor: Color.fromARGB(255, 226, 104, 146),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1604514628550-37477afdf4e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW9kZWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
        ),
      ),
    );
  }
}
