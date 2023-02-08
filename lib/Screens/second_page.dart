import 'package:flutter/material.dart';

import '../widgets/tags.dart';
import '../widgets/try.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text('Title', style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16),),
              SizedBox(height: 10,),
              Text('9 surprising things about how we make our design projects',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 26),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/background.png"),
                          fit: BoxFit.cover)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Interviewer', style: TextStyle(color: Colors.grey,
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              CastList(),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Time', style: TextStyle(color: Colors.grey,
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                        width: MediaQuery.of(context).size.width*0.30,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          radius: 11,
                          backgroundImage: AssetImage("assets/profile.jpg"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                    width: MediaQuery.of(context).size.width*0.01,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(
                        height: 3,
                        width: MediaQuery.of(context).size.width*0.10,
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          radius: 11,
                          backgroundImage: AssetImage("assets/profile.jpg"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                    width: MediaQuery.of(context).size.width*0.01,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 3,
                        width: MediaQuery.of(context).size.width*0.30,
                        child: Container(
                          color: Colors.purple,
                        ),
                      ),
                      SizedBox(
                        height: 42,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                    width: MediaQuery.of(context).size.width*0.01,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(
                        height: 3,
                        width: MediaQuery.of(context).size.width*0.10,
                        child: Container(
                          color: Colors.pink,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          radius: 11,
                          backgroundImage: AssetImage("assets/profile.jpg"),
                        ),
                      )
                    ],
                  ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Tags', style: TextStyle(color: Colors.grey,
                    fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              CastList2(),
            ],
          ),
        ),
      ),
    );
  }
}
