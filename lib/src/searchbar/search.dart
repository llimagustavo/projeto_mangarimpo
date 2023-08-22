import 'package:flutter/material.dart';
import 'package:mangarimpo/src/home/home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isOverlayVisible = false;
  String result = '';

  void toggleOverlay() {
    setState(() {
      isOverlayVisible = !isOverlayVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePage(),
          IgnorePointer(
            ignoring: isOverlayVisible,
          ),
          Opacity(opacity: 0.95, 
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0XFF245B60),
              ),
            ),
          ),
          
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 115),
                  child: Row(
                    children: [
                      Container( 
                        width: 27, 
                        height: 39,
                        child: Image.asset('assets/images/splash.png')),
                      SizedBox(width: 13),
                      Container(
                        width: 280,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ]
                        ),
                        child: 
                          TextField(
                            onChanged: (text) {
                              result = text;
                            },
                            decoration: InputDecoration(
                              hintText: 'Encontre o que procura', hintStyle: TextStyle(
                                fontSize: 14, color: Color(0XFF6E6D69),
                              ),
                              border: InputBorder.none,
                              suffixIcon: IconButton(onPressed: () {
                                if (result.contains('Crepúsculo')) {
                                  Navigator.of(context).pushReplacementNamed('/result');
                                } else {
                                  (result.contains('Crepúsculo ')); {
                                    Navigator.of(context).pushReplacementNamed('/result');
                                  }
                                } if (result.isEmpty) {
                                  Navigator.of(context).pushReplacementNamed('/search');
                                }
                              }, 
                              icon: Icon(Icons.search_rounded,
                              color: Color(0XFFBB2946),
                              size: 30,
                                ),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text('+ Leitura', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Ficção', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Não Ficção', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Infantil', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Infanto Juvenil', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Mangás e HQs', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Graphic Novels', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Revistas', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Raros', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text('+ Audiovisual', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Discos', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- CDs', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- DVDs', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Raros', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text('+ Sebos', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Belém', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                      Text('- Ananindeua', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned( top: 60, right: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Icon(Icons.close, size: 35, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

