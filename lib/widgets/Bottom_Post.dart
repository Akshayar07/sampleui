import 'package:flutter/material.dart';



class bottom_post extends StatelessWidget {
  const bottom_post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.jpg",),
                        radius: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lana Marandina",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.01,
                      ),
                      Text(
                        "Yesterday 2:19 . budget 213k",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     CircleAvatar(
              //       backgroundImage: AssetImage("assets/profile.jpg",),
              //       radius: 20,
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width*0.05,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "Lana Marandina",
              //       style:
              //       TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              //     ),
              //     SizedBox(
              //       height: MediaQuery.of(context).size.height*0.01,
              //     ),
              //     Text(
              //       "Yesterday 2:19 . budget 213k",
              //       style: TextStyle(
              //           color: Colors.black.withOpacity(0.5),
              //           fontWeight: FontWeight.bold,
              //           fontSize: 15),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width*0.05,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.more_horiz_rounded,
                        size: 40,
                        color: Colors.grey,)),

                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Hi everbody! I want to buy a new car and can't find it. Help me please",
            style: TextStyle(
                height: 1.2,
                color: Colors.black.withOpacity(0.8),
                fontSize: 17,
                fontWeight: FontWeight.bold
            ),),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),


      ],
    );
  }
}
