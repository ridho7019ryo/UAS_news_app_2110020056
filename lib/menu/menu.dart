import 'package:flutter/material.dart';
import '../pages/otomotif.dart';
import '../pages/profile.dart';
import '../pages/sports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Heading",
          ),
          leading: const Icon(
            Icons.reorder,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                )),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Otomotive()),
                      ),
                      child: Container(
                        color: Colors.white,
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                            const Icon(
                              Icons.car_repair_rounded,
                              color: Colors.black,
                              size: 120,
                            ),
                            const Text(
                              "Automotive",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0, // Set the desired font size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sports()),
                      ),
                      child: Container(
                        color: Colors.white,
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                            const Icon(
                              Icons.sports_baseball_rounded,
                              color: Colors.black,
                              size: 120,
                            ),
                            const Text(
                              "Sports",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0, // Set the desired font size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      ),
                      child: Container(
                        color: Colors.white,
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                            const Icon(
                              Icons.person_outline_rounded,
                              color: Colors.black,
                              size: 120,
                            ),
                            const Text(
                              "Profile",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0, // Set the desired font size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    InkWell(
                      //onTap: () => Navigator.pushNamed(context, ""),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                              width: 3.0,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.bookmark_add,
                              color: Colors.transparent,
                              size: 140,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Favorite",
                      style: TextStyle(
                        color: Colors.transparent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0, // Set the desired font size
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}