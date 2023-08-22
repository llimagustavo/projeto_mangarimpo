import 'package:flutter/material.dart';
import 'package:mangarimpo/src/bottomnavigation/bottom.profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 67, top: 80),
              child: Row(children: [
                Container(
                  width: 104,
                  height: 104,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/images/iconsprofile/perfil.png')),
                    border: Border.all(
                      color: const Color(0XFFBB2946),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Manuela Araújo', style: TextStyle(
                      fontFamily: 'FjallaOne', fontSize: 26,
                      color: Color(0XFF245B60),
                    ),),
                    const Text('@manuuarj', style: TextStyle(
                      fontFamily: 'DMSans', fontSize: 20,
                      color: Color(0XFF245B60),
                    ),),
                    SizedBox(height: 5),
                    const Row(
                      children: [
                        Image(image: AssetImage('assets/images/iconsprofile/lapis.png')),
                        SizedBox(width: 4),
                        Text('Editar perfil', style: TextStyle(
                          fontFamily: 'DMSans', fontSize: 15,
                          color: Color(0XFF245B60),
                        ),),
                      ],
                    ),
                    Container(width: 105, height: 1,
                      color: const Color(0XFF245B60),
                    ),
                  ],
                  ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Column(children: [
                const SizedBox(height: 50),
                Container(
                  width: 353,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child:
                  Row(children: [
                    SizedBox(width: 45),
                    Container(
                      width: 28,
                      height: 24,
                      child: Image(image: AssetImage('assets/images/iconsprofile/love.png')
                      ),
                    ),
                    SizedBox(width: 20),
                    Text('Meus favoritos', style: TextStyle(
                      fontFamily: 'DMSans', fontSize: 20,
                      color: Color(0XFF245B60),
                    ),)
                  ],),
                ),
                
                const SizedBox(height: 20),
                Container(
                  width: 353,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child:
                  Row(children: [
                    SizedBox(width: 45),
                    Container(
                      width: 28,
                      height: 24,
                      child: Image(image: AssetImage('assets/images/iconsprofile/friends.png')
                      ),
                    ),
                    SizedBox(width: 20),
                    Text('Sebos amigos', style: TextStyle(
                      fontFamily: 'DMSans', fontSize: 20,
                      color: Color(0XFF245B60),
                    ),)
                  ],),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 353,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child:
                  Row(children: [
                    SizedBox(width: 45),
                    Container(
                      width: 28,
                      height: 24,
                      child: Image(image: AssetImage('assets/images/iconsprofile/notif.png')
                      ),
                    ),
                    SizedBox(width: 21),
                    Text('Notificações', style: TextStyle(
                      fontFamily: 'DMSans', fontSize: 20,
                      color: Color(0XFF245B60),
                    ),)
                  ],),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 353,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child:
                  Row(children: [
                    SizedBox(width: 45),
                    Container(
                      width: 28,
                      height: 24,
                      child: Image(image: AssetImage('assets/images/iconsprofile/eye.png')
                      ),
                    ),
                    SizedBox(width: 21),
                    Text('Vistos recentemente', style: TextStyle(
                      fontFamily: 'DMSans', fontSize: 20,
                      color: Color(0XFF245B60),
                    ),)
                  ],),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/config');
                  },
                  child: Container(
                    width: 353,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0XFF245B60),
                      ),
                    ),
                    child:
                    Row(children: [
                      SizedBox(width: 45),
                      Container(
                        width: 28,
                        height: 24,
                        child: Image(image: AssetImage('assets/images/iconsprofile/config.png')
                        ),
                      ),
                      SizedBox(width: 21),
                      Text('Configurações', style: TextStyle(
                        fontFamily: 'DMSans', fontSize: 20,
                        color: Color(0XFF245B60),
                      ),)
                    ],),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 353,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0XFF245B60),
                    ),
                  ),
                  child:
                  Row(children: [
                    SizedBox(width: 42),
                    Container(
                      width: 28,
                      height: 24,
                      child: Image(image: AssetImage('assets/images/iconsprofile/out.png')
                      ),
                    ),
                    SizedBox(width: 25),
                    Text('Sair', style: TextStyle(
                      fontFamily: 'DMSans', fontSize: 20,
                      color: Color(0XFF245B60),
                    ),),
                  ],),
                ),
              ],),
            ),
          ],
        ),
        BottomProfile(),
      ],),
    );
  }
}