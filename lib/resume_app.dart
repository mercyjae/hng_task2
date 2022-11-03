import 'package:flutter/material.dart';

class ResumeApp extends StatefulWidget {
  const ResumeApp({Key? key}) : super(key: key);

  @override
  State<ResumeApp> createState() => _ResumeAppState();
}

class _ResumeAppState extends State<ResumeApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0xFFFA624F),
              ),
              Positioned(
                top: 120,
                left: 15,
                right: 15,
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                  top: 75,
                  left: 120,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage("assets/Tatiana.jpg"),
                            fit: BoxFit.cover),
                      ))),
              Positioned(
                top: 190,
                left: (MediaQuery.of(context).size.width / 2) - 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Anuoluwapo Famakinwa",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mobile developer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildCounters(context, '1.6K', 'Likes'),
                        SizedBox(
                          width: 12,
                        ),
                        buildCounters(context, '3.5K', 'Following'),
                        SizedBox(
                          width: 12,
                        ),
                        buildCounters(context, '15K', 'Followers'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('LOCATION',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                Row(
                  children: [Icon(Icons.location_on), Text("Lagos, Nigeria",

                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 15),)],
                ),
                SizedBox(height: 10),
                Text('ON THE WEB',

                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                Row(
                  children: [
                    BuildLogo('assets/twitter.png'),
                    BuildLogo('assets/linkedin.png'),
                    BuildLogo('assets/github.jpg')
                  ],
                ),
                SizedBox(height: 10),
                Text("ABOUT",

                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                Text("I'm an active, dynamic mobile developer (flutter and dart), "
                    "capable of creating excellent analytical skills with good problem-solving attitude'"
                    " and who is able to  perform in a team environment of talented IT professional in "
                    "creating mobile apps to the highest standards.",

                  style:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 40),
                          backgroundColor: Color(0xFFFA624F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text("Chat"),
                        onPressed: () {}),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 40),
                          backgroundColor: Color(0xFFFA624F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text("Message"),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildCounters(
    context,
    String firstLine,
    String secondLine,
  ) {
    return Column(
      children: [
        Text(
          firstLine,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Text(
          secondLine,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }

    Widget BuildLogo (String image){
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: AssetImage(image),


              fit: BoxFit.cover),
        ));
  }
}
