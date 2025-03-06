import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SeriesDetailsScreen(),
    );
  }
}


class SeriesDetailsScreen extends StatelessWidget {
  final List<String> episodeImages = [
    'assets/images/episode1.png',
    'assets/images/episode2.png',
    'assets/images/episode3.png',
    'assets/images/episode4.png',
    'assets/images/episode5.png',
    'assets/images/episode6.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [Icon(Icons.search, color: Colors.white)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/series_banner.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jivachi Hotiya Kahili',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '1972  •  Crime/Drama  •  2h 55m',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      minimumSize: Size(double.infinity, 50),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0)
                        ),
                      ),
                    ),
                    child: Text(
                      'FIRST EPISODE IS FREE',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      minimumSize: Size(double.infinity, 50),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                    child: Text(
                      'SUBSCRIBE',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan.',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [Icon(Icons.add, color: Colors.white), SizedBox(height: 5), Text('Watch Later', style: TextStyle(color: Colors.white),),],),
                      Column(children: [Icon(Icons.thumb_up_alt_outlined, color: Colors.white), SizedBox(height: 5), Text('Like', style: TextStyle(color: Colors.white),),],),
                      Column(children: [Icon(Icons.share, color: Colors.white), SizedBox(height: 5), Text('Share', style: TextStyle(color: Colors.white),),],),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(color: Colors.white24,),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("EPISODES",
                            style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 3,
                            width: 84,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Text("MORE LIKE THIS", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Season 1", style: TextStyle(color: Colors.white,),),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: episodeImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  episodeImages[index],
                                  width: 160,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Name-${index + 1}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                                      Text("S-1, P${index + 1}", style: TextStyle(color: Colors.grey)),
                                      // Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(color: Colors.white70)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan.", style: TextStyle(color: Colors.white70)),
                            SizedBox(height: 10,),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




























