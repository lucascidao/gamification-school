import 'package:app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class TutorialOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => const Color.fromRGBO(21, 22, 38, 0.9);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // This makes sure that text and other content follows the material style
    return Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: SafeArea(child: _buildOverlayContent(context)),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image.asset('assets/images/victory.png'),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: const Text("Essa missão te rendeu:",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(249, 249, 249, 0.8),
                    letterSpacing: 1.8)),
          ),
          const Text(
            "250 Pontos",
            style: TextStyle(
                color: Color.fromRGBO(190, 208, 255, 1),
                fontSize: 34.7,
                fontWeight: FontWeight.w400),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 15),
            child: const Text(
              'Lorem descrição da missão que você fez o seguinte da seguinte maneira',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Colors.white38),
            ),
          ),
          const Text(
            'Sua classificação:\n1º lugar',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: 152,
            height: 41,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(187, 198, 219, 1),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(56.0),
                  ),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Continuar',
                style: TextStyle(
                    color: Color.fromRGBO(
                      40,
                      42,
                      56,
                      1,
                    ),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}

class CardOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => const Color.fromRGBO(21, 22, 38, 0.9);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // This makes sure that text and other content follows the material style
    return Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: SafeArea(child: _buildOverlayCard(context)),
    );
  }

  Widget _buildOverlayCard(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 450,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Container(
            height: 169,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xff63F7A1), Color(0xff27AE60)],
              ),
            ),
            child: Column(
              children: [
                Center(child: Image.asset('assets/images/notebook.png')),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 180,
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.black,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "PRODUTIVIDADE",
                      style: TextStyle(
                          color: Color(0xff6E798C),
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Feita a 5 dias\n250 pontos",
                      style: TextStyle(
                          color: Color(0xff6E798C),
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        "Lorem missão de hoje é fazer os seguinte.",
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        "Lorem você deverá fazer a seguinte tarefa para cumprir o seguinte objetivo da seguinte forma da seguinte maneira da seguinte introdução.",
                        style: TextStyle(
                            color: Color(0xff374A59),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("N"),
                  ),
                  title: Text("Nome Sobrenome"),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;

  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(TutorialOverlay());
  }

  void _showCardOverlay(BuildContext context) {
    Navigator.of(context).push(CardOverlay());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(left: 13),
            child: const Text(
              'Missões',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IfrjTab(
              tabs: const ['Abertas', 'Concluidas'],
              currentTab: _currentTab,
              onTap: (index) {
                setState(() {
                  _currentTab = index;
                });
              }),
          if (_currentTab == 0) ...[
            SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _showCardOverlay(context);
                    },
                    onDoubleTap: () {
                      _showOverlay(context);
                    },
                    child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xff63F7A1),
                                Color(0xff27AE60)
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        margin: const EdgeInsets.only(
                            right: 150, top: 18, left: 10),
                        padding: const EdgeInsets.only(
                            bottom: 5, left: 5, top: 5, right: 5),
                        height: 114,
                        width: 350,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Produtividade',
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.white)),
                                Container(
                                  margin: const EdgeInsets.only(top: 17),
                                  child: const SizedBox(
                                    width: 145,
                                    child: Text(
                                        ' Lorem missão de hoje é fazer os seguinte.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 30, right: 0),
                                          width: 90,
                                          height: 5,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text("Faltam 3 dias\n250 potnos",
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.white)),
                                Container(
                                  margin: const EdgeInsets.only(top: 45),
                                  width: 68,
                                  height: 25,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Mais',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  );
                }))
          ] else ...[
            SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xffED1651),
                              Color(0xffFFB199)
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      margin:
                          const EdgeInsets.only(right: 150, top: 18, left: 10),
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 5, top: 5, right: 5),
                      height: 114,
                      width: 350,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Produtividade',
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white)),
                              Container(
                                margin: const EdgeInsets.only(top: 17),
                                child: const SizedBox(
                                  width: 145,
                                  child: Text(
                                      ' Lorem missão de hoje é fazer os seguinte.',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Faltam 3 dias\n250 potnos",
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white)),
                              Container(
                                margin: const EdgeInsets.only(top: 45),
                                width: 68,
                                height: 25,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Mais',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ));
                }))
          ]
        ]),
      ),
    );
  }
}
