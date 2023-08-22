import 'package:flutter/material.dart';
import 'package:mangarimpo/src/bottomnavigation/bottom.chat.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(preferredSize: const Size(0, 60),
            child: AppBar(
              title: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Chat', style: TextStyle(
                  color: Color(0XFF245B60),
                  fontSize: 26,
                  fontFamily: 'FjallaOne',
                    ),
                  ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    //FUNÇÃO DE PESQUISA
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 63),
                    child: Container(
                      width: 225,
                      height: 30,
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
                              'Pesquisar suas conversas',
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
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 36, right: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18),
                Text('3 mensagens em 2 conversas', style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                ),),
                
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/chatgaleria');
                  },
                  child: Container(
                    width: 350,
                    height: 72,
                    decoration: BoxDecoration(
                      color: const Color(0XFF245B60),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Row(children: [
                           const SizedBox(width: 14),
                          Container(
                            width: 53,
                            height: 53,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/images/perfilsebo/galeria.png')),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0XFFBB2946),
                                width: 3,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 12),
                              Text('Sebo da Galeria', style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DMSans-Bold',
                                fontSize: 16,
                              ),),
                              Text('Como posso te ajudar?', style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DMSans',
                                fontSize: 14,
                              ),),
                            ],
                          ),
                        ],),
                        const Positioned(
                          right: 15, top: 18,
                              child: Text('18h45', style: TextStyle(
                                fontFamily: 'DMSans', fontSize: 10,
                                color: Colors.white,
                            ),),
                          ),
                          Positioned( right: 22, top: 36,
                            child: Container(
                            width: 16, height: 16,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Center(child: Text('2', style: TextStyle(
                              fontSize: 10, color: Color(0XFF245B60),
                            ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: 350,
                  height: 72,
                  decoration: BoxDecoration(
                    color: const Color(0XFF245B60),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Row(children: [
                         const SizedBox(width: 14),
                        Container(
                          width: 53,
                          height: 53,
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage('assets/images/perfilsebo/cogumelito.png')),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0XFFBB2946),
                              width: 3,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text('Cogumelito', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'DMSans-Bold',
                              fontSize: 16,
                            ),),
                            Text('Não temos mais esse ex...', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                              fontSize: 14,
                            ),),
                          ],
                        ),                       
                      ],),
                      const Positioned(
                        right: 15, top: 18,
                            child: Text('16h23', style: TextStyle(
                              fontFamily: 'DMSans', fontSize: 10,
                              color: Colors.white,
                            ),),
                            ),
                          Positioned( right: 22, top: 36,
                            child: Container(
                            width: 16, height: 16,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Center(child: Text('1', style: TextStyle(
                              fontSize: 10, color: Color(0XFF245B60),
                            ),),
                            ),
                          ),
                        ),
                    ],),
                ),
                const SizedBox(height: 25),
                Container(
                  width: 350,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Row(children: [
                         const SizedBox(width: 14),
                        Container(
                          width: 53,
                          height: 53,
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage('assets/images/perfilsebo/branco.png')),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0XFFBB2946),
                              width: 3,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text('Papiro Branco', style: TextStyle(
                              color: Color(0XFF245B60),
                              fontFamily: 'DMSans-Bold',
                              fontSize: 16,
                            ),),
                            Text('Estamos aberto das 9...', style: TextStyle(
                              color: Color(0XFF245B60),
                              fontFamily: 'DMSans',
                              fontSize: 14,
                            ),),
                          ],
                        ),                       
                      ],),
                          const Positioned( 
                            right: 15, top: 25,
                            child: Text('Ontem', style: TextStyle(
                              fontSize: 10, color: Color(0XFF245B60),
                            ),),
                          ),
                    ],),
                ),
                const SizedBox(height: 25),
                Container(
                  width: 350,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Row(children: [
                         const SizedBox(width: 14),
                        Container(
                          width: 53,
                          height: 53,
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage('assets/images/perfilsebo/fauno.png')),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0XFFBB2946),
                              width: 3,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text('Casa do Fauno', style: TextStyle(
                              color: Color(0XFF245B60),
                              fontFamily: 'DMSans-Bold',
                              fontSize: 16,
                            ),),
                            Text('Obrigado você!', style: TextStyle(
                              color: Color(0XFF245B60),
                              fontFamily: 'DMSans',
                              fontSize: 14,
                            ),),
                          ],
                        ),                       
                      ],),
                          const Positioned( 
                            right: 15, top: 25,
                            child: Text('Ontem', style: TextStyle(
                              fontSize: 10, color: Color(0XFF245B60),
                            ),),
                          ),
                    ],),
                ),
                const SizedBox(height: 40),
                  Row(
                    children: [
                      const SizedBox(width: 55),
                      const Image(image: AssetImage('assets/images/perfilsebo/mais.png')),
                      const SizedBox(width: 10),
                      Container(
                        child: const Center(child: Text('Converse com mais sebos', style: TextStyle(
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
                    ],
                  ),
                
              ],
            ),
          ),
        ),
        BottomChat(),
      ],
    );
  }
}