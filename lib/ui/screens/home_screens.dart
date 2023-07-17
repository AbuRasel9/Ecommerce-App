import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //logo nav
        title: SvgPicture.asset("assets/images/logo_nav.svg"),
        actions: [
          SizedBox(width: 10,),

          //appbar action button
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade700,
                  size: 25,
                )),
          ),
          SizedBox(width: 10,),

          //appbar action button
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.grey.shade700,
                  size: 25,
                )),
          ),

          SizedBox(width: 10,),
          //appbar action button
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.grey.shade700,
                  size: 25,
                )),

          ),
          SizedBox(width: 15,),

        ],
      ),
    );
  }
}
