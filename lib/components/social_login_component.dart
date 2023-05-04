import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class SocialLoginComponent extends StatefulWidget {
  SocialLoginComponent({Key? key}) : super(key: key);

  @override
  _SocialLoginComponentState createState() => _SocialLoginComponentState();
}

class _SocialLoginComponentState extends State<SocialLoginComponent> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height * 0.25,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: width,
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 2,
                      )),
                      Text(
                        'Or Continue With',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      child: Icon(
                        SimpleIcons.google,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 23,
                      child: Icon(
                        SimpleIcons.facebook,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 23,
                      child: Icon(
                        SimpleIcons.apple,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: -50,
            bottom: -90,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/salade.jpeg'),
            ))
      ],
    );
  }
}
