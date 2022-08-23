import 'dart:ui';

import 'package:flutter/material.dart';

const bgColorFaint = Color.fromRGBO(22, 24, 27, 1);
const bgColor = Color.fromRGBO(11, 12, 14, 1);

class FrostView extends StatelessWidget {
  const FrostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> data = [
      {
        "title": "Naruto",
        "image":
            "https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
        "description":
            "Naruto is an orphan who has a dangerous fox-like entity known as Kurama the Nine-Tailed Fox sealed within his body by his father, the Fourth Hokage Minato Namikaze, the leader of Konoha's ninja force, at the cost of his own life and that of his wife, Kushina Uzumaki."
      },
      {
        "title": "Naruto",
        "image":
            "https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
        "description":
            "Naruto is an orphan who has a dangerous fox-like entity known as Kurama the Nine-Tailed Fox sealed within his body by his father, the Fourth Hokage Minato Namikaze, the leader of Konoha's ninja force, at the cost of his own life and that of his wife, Kushina Uzumaki."
      },
      {
        "title": "Naruto",
        "image":
            "https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
        "description":
            "Naruto is an orphan who has a dangerous fox-like entity known as Kurama the Nine-Tailed Fox sealed within his body by his father, the Fourth Hokage Minato Namikaze, the leader of Konoha's ninja force, at the cost of his own life and that of his wife, Kushina Uzumaki."
      }
    ];
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          backgroundColor: bgColorFaint, title: const Text('Frost View')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            width: 500,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return FrostedCardWidget(
                    data: data[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class FrostedCardWidget extends StatelessWidget {
  final Map data;

  const FrostedCardWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
              child: Stack(
            children: [
              SizedBox(
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  data['image'],
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: SizedBox(
                      height: 280.0,
                      width: 500.0,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              data['title'],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              data['description'],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Chip(
                                backgroundColor: Colors.red,
                                label: Text(
                                  'Buy Item',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      )),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
