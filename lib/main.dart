import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.grey,
            controller: tabController,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.home, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.location_on, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.message_sharp, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.account_box, color: Colors.grey, size: 22),
              ),
            ]),
      ),
      appBar: AppBar(
        title: const Text(
          'Moda Uygulaması',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              color: Colors.grey),
        ],
      ),
      body: //üst taraftaki profil listesi
          ListView(padding: const EdgeInsets.only(top: 10), children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          //  color: Colors.blueAccent,
          height: 140,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 20,
              ),
              listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
              const SizedBox(
                width: 20,
              ),
              listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 20,
              ),
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 20,
              ),
              listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
              const SizedBox(
                width: 20,
              ),
              listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            //  color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(16),
            elevation: 4,
            child: Container(
              height: 500,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Daisy',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '34 Mins ago',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.more_vert, color: Colors.grey),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'This offical website feature a ribbed knit zipper jacket that is'
                    'modern  and stylish. It looks very temparament and is recommend to friends',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: 'assets/modelgrid1.jpeg')));
                        },
                        child: Hero(
                          tag: 'assets/modelgrid1.jpeg',
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                  image: AssetImage('assets/modelgrid1.jpeg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => Detay(
                                        imgPath: 'assets/modelgrid2.jpeg',
                                      ))));
                            },
                            child: Hero(
                              tag: 'assets/modelgrid2.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/modelgrid2.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid3.jpeg',
                                      )));
                            },
                            child: Hero(
                              tag: 'assets/modelgrid3.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/modelgrid3.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2),
                      ),
                      child: const Center(
                          child: Text(
                        '# Louis vuitton',
                        style: TextStyle(fontSize: 10, color: Colors.brown),
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2),
                      ),
                      child: const Center(
                          child: Center(
                              child: Text(
                        '# Chole',
                        style: TextStyle(fontSize: 10, color: Colors.brown),
                      ))),
                    ),
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.grey.withOpacity(0.2),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '1.7k',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.grey.withOpacity(0.2),
                        size: 25,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '325',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 235,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '2.3k',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: const Center(
              child: Text(
            'FOLLOW',
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
        ),
      ],
    );
  }
}
