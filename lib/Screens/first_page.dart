import 'package:akshaya_sample/Screens/second_page.dart';
import 'package:flutter/material.dart';

import '../widgets/Bottom_Post.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          elevation: 20.0,
          title: Text(
            '@benjjober',
            style: TextStyle(fontSize: 20),
          ),
          toolbarHeight: 200,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withOpacity(0.6),
                    Colors.transparent
                  ]),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: Icon(
                Icons.notification_add_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: Icon(
                  Icons.more_horiz_rounded,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //initial image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.cover)),
            ),
            //profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lana Marandina",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            "online",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.circle,color: Colors.green,size: 15,),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                            AssetImage("assets/profile.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //spending
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '\$270.6k',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Spending",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "1.7M",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Transactions",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "18.6k",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "18.6k",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //publication below
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Publications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>SecondPage()));
                  }, child: Text(
                    'Addresses',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey),
                  )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.003,
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Container(
                      color: Colors.grey.withOpacity(0.20),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    color: Color(0xffCCCCCC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Latest",
                      style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 12
                      ),
                    ),
                  ),
                  TextButton(
                    // color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      "Spend",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 12
                      ),
                    ),
                  ),
                  TextButton(
                    // color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      "Track",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 12
                      ),
                    ),
                  ),
                  TextButton(
                    // color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      "Marketplace",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //spending
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
              width: double.infinity,
              child: Container(
                color: Colors.grey.withOpacity(0.20),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //what's new
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.20),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "What's new with you?",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.003,
                width: double.infinity,
                child: Container(
                  color: Colors.grey.withOpacity(0.20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10
              ),              child: bottom_post(),
            ),
            bottom_post(),

          ],
        ),
      ),
    );
  }
}
