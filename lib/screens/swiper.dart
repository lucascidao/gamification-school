// ignore_for_file: avoid_print

import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({Key? key}) : super(key: key);

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  void initState() {
    super.initState();
    liquidController = LiquidController();
  }

  LiquidController? liquidController;

  bool sideReveal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          //Home
          Container(
            color: Colors.amber,
            child: Builder(builder: ((context) => const HomePage())),
          ),
          //Rank
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffA3238E),
              child: SafeArea(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: const Text(
                        'Classificação',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top -
                          MediaQuery.of(context).padding.bottom -
                          100,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 50,
                            left: 80,
                            child: Image.asset(
                              'assets/images/Ouro.png',
                              scale: 2.5,
                            ),
                          ),
                          Positioned(
                            top: 220,
                            left: 200,
                            child: Image.asset(
                              'assets/images/Prata.png',
                              scale: 2.5,
                            ),
                          ),
                          Positioned(
                            top: 310,
                            left: 20,
                            child: Image.asset(
                              'assets/images/Bronze.png',
                              scale: 2.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 305,
                        height: 305,
                        padding: const EdgeInsets.only(top: 15),
                        margin: const EdgeInsets.only(
                            bottom: 10, left: 30, right: 30),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView.builder(itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(9),
                            margin: const EdgeInsets.only(bottom: 5),
                            child: ListTile(
                              tileColor: const Color.fromRGBO(186, 40, 162, 1),
                              leading: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/joao_victor.png'),
                              ),
                              trailing: Container(
                                width: 100,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    '$index Pontos',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              title: const Text(
                                'Joao Victor',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        })),
                  ],
                ),
              )),
          //Profile
          Container(
            color: Colors.orange,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: ListView(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 40),
                    child: const Text(
                      'Perfil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/joao_victor.png'),
                      radius: 100,
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 40),
                    child: const Text(
                      'Nome Sobrenome',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 20, bottom: 20),
                    child: const Text(
                      'contato1@email.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 20, bottom: 10),
                    child: const Text(
                      'contato2@email.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 40),
                    child: const Text(
                      'Conquistas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 40),
                    child: const Text(
                      'Produtividade',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: ListView(
                      padding: const EdgeInsets.all(15),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset('assets/images/Bronze-1.png'),
                        Image.asset('assets/images/Silver.png'),
                        Image.asset('assets/images/Gold.png'),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 40),
                    child: const Text(
                      'Compartilhamento',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: ListView(
                      padding: const EdgeInsets.all(15),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset('assets/images/Bronze-1.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        liquidController: liquidController,
        enableSideReveal: sideReveal,
        enableLoop: false,
        positionSlideIcon: 0.24,
        slideIconWidget: Container(
            height: 100,
            width: 45,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(155),
                    bottomLeft: Radius.circular(155))),
            child: Row(
              children: [
                if (sideReveal == true) ...[
                  const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.white),
                ] else ...[
                  const Icon(Icons.arrow_back_ios_outlined,
                      color: Colors.white),
                ],
              ],
            )),
        onPageChangeCallback: (page) {
          if (liquidController!.currentPage == 2) {
            setState(() {
              sideReveal = false;
            });
          } else {
            setState(() {
              sideReveal = true;
            });
            return print('object');
          }
        },
        currentUpdateTypeCallback: (update) => print(update),
      ),
    );
  }
}
