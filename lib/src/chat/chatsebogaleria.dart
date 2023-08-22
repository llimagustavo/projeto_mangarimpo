import 'package:flutter/material.dart';

class ChatGaleria extends StatelessWidget {
  const ChatGaleria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/chat');
                      },
                      child: Container(
                        width: 25,
                        height: 30,
                        child: Image.asset('assets/images/icons/voltar.png'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 67,
                      height: 67,
                      decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage('assets/images/perfilsebo/galeria.png')),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0XFFBB2946),
                          width: 3,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Text('Sebo da Galeria', style: TextStyle(
                        color: Color(0XFF245B60),
                        fontFamily: 'FjallaOne', fontSize: 20,
                      ),),
                      Text('Ativo há 32 minutos.', style: TextStyle(
                        color: Color(0XFFBB2946),
                        fontFamily: 'DMSans-Bold', fontSize: 11,
                      ),),
                    ],),
                    SizedBox(width: 25),
                    Container( height: 24,
                        child: Image.asset('assets/images/3.png'),
                      ),
                  ],
                ),
                SizedBox(height: 28),
                Center(
                  child: Container( width: 98, height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0XFF245B60),
                  ),
                    child: Center(child: Text('Hoje', style: TextStyle(
                      color: Colors.white,
                    ),)),
                  ),
                ),
                SizedBox(height: 34),
                Container(
                  width: 260,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(20)),
                    border: Border.all(
                      color: Color(0XFF245B60),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Oi, tudo bem? Seja bem-vindo ao Sebo da Galeria, aqui é o Thomas!', style: TextStyle(
                        color: Color(0XFF245B60),
                        fontFamily: 'DMSans', fontSize: 14,
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(children: [
                  Container(
                    width: 8, height: 8,
                    child: Image.asset('assets/images/confirm.png'),
                  ),
                  SizedBox(width: 3),
                  Text('18h45', style: TextStyle(color: Color(0XFFBB2946)),)
                ],),
                SizedBox(height: 5),
                Container(
                  width: 190,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(20)),
                    border: Border.all(
                      color: Color(0XFF245B60),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Como posso te ajudar?', style: TextStyle(
                        color: Color(0XFF245B60),
                        fontFamily: 'DMSans', fontSize: 14,
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(children: [
                  Container(
                    width: 8, height: 8,
                    child: Image.asset('assets/images/confirm.png'),
                  ),
                  SizedBox(width: 3),
                  Text('18h45', style: TextStyle(color: Color(0XFFBB2946)),)
                ],),
              ],
            ),
          ),
          Positioned( bottom: 90, left: 20,
            child: Container(
              width: 200,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0XFFBB2946),
                ),
              ),
              child: Center(
                child: Text('Oi! Tenho interesse em um item.', style: TextStyle(
                  color: Color(0XFFBB2946),
                  fontFamily: 'DMSans', fontSize: 11,
                ),),
              ),
            ),
          ),
          Positioned( bottom: 90, right: 25,
            child: Container(
            width: 150,
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Color(0XFFBB2946),
              ),
            ),
            child: Center(
              child: Text('Oi! Podemos negociar?', style: TextStyle(
                color: Color(0XFFBB2946),
                fontFamily: 'DMSans', fontSize: 11,
              ),),
            ),
          ),
        ),
        Positioned( bottom: 30, left: 20,
          child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0XFF245B60),
          ),
          child: Icon(Icons.add_circle_outline, size: 30, color: Colors.white),
        ),
      ),
        Positioned( bottom: 30, right: 20,
            child: Container(
            width: 310,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0XFF245B60),
              ),
            ),
            child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text('Digite uma mensagem aqui...', style: TextStyle(
                      color: Color(0XFF245B60),
                    ),),
                  ),
                  Icon(Icons.emoji_emotions_outlined, color: Color(0XFFBB2946),),
                ],
              ),
          ),
        ),
        ],
      ),
    );
  }
}