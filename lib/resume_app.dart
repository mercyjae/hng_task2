
import 'package:flutter/material.dart';
import 'package:hng_task2/web_view_page.dart';


class ResumeApp extends StatefulWidget {
  const ResumeApp({Key? key}) : super(key: key);

  @override
  State<ResumeApp> createState() => _ResumeAppState();
}
 
class _ResumeAppState extends State<ResumeApp> {
  int selectedIndex = 0;
  void _handleURLButtonPress(
    BuildContext context,
    String url,
  ) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WebViewPage(
                  url,
                )));
  }

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
                color: const Color(0xFFFA624F),
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
                        image: const DecorationImage(
                            image: AssetImage("assets/Tatiana.jpg"),
                            fit: BoxFit.cover),
                      ))),
              Positioned(
                top: 190,
                left: (MediaQuery.of(context).size.width / 2) - 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Anuoluwapo Famakinwa",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Mobile developer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildCounters(context, '1.6K', 'Likes'),
                        const SizedBox(
                          width: 12,
                        ),
                        buildCounters(context, '3.5K', 'Following'),
                        const SizedBox(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'LOCATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    const Text(
                      "Lagos, Nigeria",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'ON THE WEB',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Row(children: [
      
                  BuildLogo(
                      'assets/twitter.png', 'https://twitter.com/_mercyjae'),
                  BuildLogo('assets/linkedin.png',
                      'https://www.linkedin.com/in/famakinwa-anuoluwapo'),
                  BuildLogo('assets/github.jpg', 'https://github.com/mercyjae')
                  //  )],
                ]),
                const SizedBox(height: 10),
                const Text(
                  "ABOUT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const Text(
                  "I'm an active, dynamic mobile developer (flutter and dart), "
                  "capable of creating excellent analytical skills with good problem-solving attitude'"
                  " and who is able to  perform in a team environment of talented IT professional in "
                  "creating mobile apps to the highest standards.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 40),
                          backgroundColor: selectedIndex == 0 ? const Color(0xFFFA624F) : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text("Chat"),
                        onPressed: () {selectedIndex == 0;}),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 40),
                          backgroundColor:selectedIndex == 1? Colors.white: const Color(0xFFFA624F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text("Message"),
                        onPressed: () {selectedIndex == 1;}),
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
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Text(
          secondLine,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  Widget BuildLogo(String image, String url) {
    return InkWell(
      onTap: () {
        _handleURLButtonPress(
          context,
          url,
        );
      },
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          )),
    );
  }
}

