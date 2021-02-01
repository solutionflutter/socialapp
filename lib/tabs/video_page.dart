import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/widgets/variables.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  buildProfile(){
    return Container(
      width: 60,
      height: 60,
      child: Stack(
        children: [
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
                child: Image(
                  image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FUser_(computing)&psig=AOvVaw2kQUdMrQxjoawy8qyF0WBq&ust=1612098605810000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCOnrjdw-4CFQAAAAAdAAAAABAD'),
                  fit: BoxFit.cover,
                ),
              ),
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
