import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/widgets/variables.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  //build profile
  buildProfile(){
    return Container(
      width: 60,
      height: 60,
      child: Stack(
        children: [
          // Profile Image Insert
          Positioned(
            left: 5,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  'https://www.searchpng.com/wp-content/uploads/2019/02/Men-Profile-Image-715x657.png',
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          // Add icon insert
          Positioned(
            left: 22,
            bottom: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(Icons.add, color: Colors.white, size: 15,),
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black
            ),
          ),
          Column(
            children: [
              //Top Section
              Container(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Following',
                      style: myStyle(17,Colors.white,FontWeight.bold),
                    ),
                    SizedBox(width: 15,),
                    Text(
                      'For You',
                      style: myStyle(17,Colors.white,FontWeight.bold),
                    )
                  ],
                ),
              ),
              //Middle Section
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Container(
                          height: 70,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Saied',style: myStyle(15,Colors.white,FontWeight.bold),),
                              Text('Cool Video',style: myStyle(15,Colors.white,FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(Icons.music_note,size: 15,color: Colors.white,),
                                  Text('Cool Video Songs',style: myStyle(15,Colors.white,FontWeight.bold),),
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                    //Right Section
                    Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildProfile(),
                          Column(
                            children: [
                              Icon(Icons.favorite,color: Colors.white, size: 40,),
                              SizedBox(height: 5,),
                              Text('10',style: myStyle(20,Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.comment,color: Colors.white, size: 40,),
                              SizedBox(height: 5,),
                              Text('5',style: myStyle(20,Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.replay,color: Colors.white, size: 40,),
                              SizedBox(height: 5,),
                              Text('5',style: myStyle(20,Colors.white),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
