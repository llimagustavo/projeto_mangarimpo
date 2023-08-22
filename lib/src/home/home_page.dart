import 'package:flutter/material.dart';
import 'package:mangarimpo/src/bottomnavigation/bottom.navigation.dart';
import 'package:mangarimpo/src/home/basecontainer/sebosverif.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(0, 65),
        child: AppBar(
          title: Image.asset('assets/images/logo.png', width: 241, height: 50),
          centerTitle: true,        
         ),
        ),
      body: Stack( 
        children: [
          SingleChildScrollView(
            child: Column(
                  children: [
                    Padding(
                  padding: const EdgeInsets.only(top: 20, left: 75, right: 75),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/search');
                      },
                      child: Container(
                        width: 266,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0XFF245B60),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                'Encontre o que procura',
                                style: TextStyle(
                                  color: Color(0XFF6E6D69),
                                  fontFamily: 'DM Sans',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 11),
                              child: Container(
                                width: 14,
                                height: 14,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/busca.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                ),
                      const SizedBox(height: 25),
                      Container(
                        width: 360,
                        height: 174,
                        decoration: const BoxDecoration(image: DecorationImage(
                          image: AssetImage('assets/images/map.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          SizedBox(width: 20),
                          Text('Sebos Verificados', style: TextStyle(
                            fontFamily: 'FjallaOne',
                            color: Color(0XFF245B60),
                            fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                      const SebosVerificados(),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          SizedBox(width: 20),
                          Text('Populares no Mangarimpo', style: TextStyle(
                            fontFamily: 'FjallaOne',
                            color: Color(0XFF245B60),
                            fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                      const SebosVerificados(),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          SizedBox(width: 20),
                          Text('Recomendados para Você', style: TextStyle(
                            fontFamily: 'FjallaOne',
                            color: Color(0XFF245B60),
                            fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                      const SebosVerificados(),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          SizedBox(width: 20),
                          Text('Bem Avaliados', style: TextStyle(
                            fontFamily: 'FjallaOne',
                            color: Color(0XFF245B60),
                            fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                      const SebosVerificados(),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          SizedBox(width: 20),
                          Text('Garimpos Online', style: TextStyle(
                            fontFamily: 'FjallaOne',
                            color: Color(0XFF245B60),
                            fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                      const SebosVerificados(),
                      const SizedBox(height: 50),
                      Container(
                        child: const Center(child: Text('Descubra todos os sebos', style: TextStyle(
                          fontFamily: 'DMSans-Bold',
                          fontSize: 11,
                          color: Color(0XFF245B60),
                        ),)),
                        width: 172,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: const Color(0XFF245B60),
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                  ],
                ),
              ),
            BottomNavigation(),
        ],
      ),
    );
  }
}