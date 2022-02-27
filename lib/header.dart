import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: size.height / 5,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(45),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 35,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/user.png"),
                            radius: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Wanted Jack",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black54),
                              child: const Text(
                                "Gold Member",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "154 \$ Can",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 50,
                    width: size.width,
                    child: Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: "What Does Your Belly want to eat?",
                            suffix: Icon(Icons.search),
                            contentPadding: EdgeInsets.only(left: 20)),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
