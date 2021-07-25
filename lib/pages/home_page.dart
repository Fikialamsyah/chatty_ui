import 'package:chatty_ui/widgets/chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Sabrina Carpenter',
                  style: TextStyle(color: whiteColor, fontSize: 20)),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(color: lightBlue, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/people1.png',
                        name: 'joshuer',
                        text: 'Sorry, you`re not my ty...',
                        time: 'Now',
                        unread: true),
                    SizedBox(
                      height: 15,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/people2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: '2:30',
                        unread: false),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/icon1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11:11',
                        unread: false),
                    SizedBox(
                      height: 15,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/icon2.png',
                        name: 'Angga',
                        text: 'Here here we can go',
                        time: '7:11',
                        unread: false),
                    SizedBox(
                      height: 15,
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/icon3.png',
                        name: 'Bentley',
                        text: 'The car which does not',
                        time: '7:11',
                        unread: false),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
