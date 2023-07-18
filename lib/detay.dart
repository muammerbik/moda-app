import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;
  Detay({this.imgPath, super.key});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            right: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: const DecorationImage(
                                image: AssetImage('assets/dress.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'LAMİNATED',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Louis Vuitton',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width - 170,
                            child: const Text(
                              'One button V-neck sling long -sliweed waisit female stithing dress',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ]),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 10,
                        bottom: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\$650',
                            style: TextStyle(fontSize: 22),
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  child: const Icon(Icons.arrow_forward_ios),
                                  backgroundColor: Colors.brown)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    Positioned(top: MediaQuery.of(context).size.height/2,
    left:50,
    child: Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.black.withOpacity(0.4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text('LAMİNATED',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
          Icon(Icons.arrow_forward_ios,color: Colors.white,size:18,)
        ],
      ),
    ),
    ),

      
        
        ],
      ),
    );
  }
}
