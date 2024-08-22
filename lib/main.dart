import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 1,
          backgroundColor: const Color(0xff5a9aaa),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color(0xff57afc7),
                      Color(0xff81d8ee),
                    ],
                  ),
                ),
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          AssetImage('images/profile_picture.jpeg'),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Megan Allison',
                      style: TextStyle(
                        fontFamily: 'SourceSans3',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Traveller, Dreamer, Photographer',
                      style: TextStyle(
                        fontFamily: 'SourceSans3',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildStatColumn('Photos', '160'),
                        buildStatColumn('Followers', '1543'),
                        buildStatColumn('Following', '250'),
                      ],
                    ),
                    const SizedBox(height: 70),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'ABOUT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 3,
                                color: const Color(0xff3d6a9f),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'POSTS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                height: 3,
                                color: Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView(
                      children: <Widget>[
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: [
                                buildInfoTile(Icons.phone_android, 'Mobile',
                                    '+91 6584339202'),
                                const SizedBox(height: 20),
                                buildInfoTile(
                                    Icons.phone, 'Work', '+91 9984659240'),
                                const SizedBox(height: 20),
                                buildInfoTile(Icons.email, 'Email',
                                    'meganAllison@gmail.com')
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 2,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: ListTile(
                              title: Text(
                                'Status',
                                style: TextStyle(
                                  color: Color(0xff2292b0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'Available',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatColumn(String title, String count) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff3d6a9f),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          count,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget buildInfoTile(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 20),
      leading: Icon(icon, size: 28, color: Color(0xff2292b0)),
      title: Padding(
        padding: const EdgeInsets.only(left: 16), // فاصله قبل از title
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2292b0),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 16), // فاصله قبل از subtitle
        child: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
