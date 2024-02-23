import 'package:flutter/material.dart';
import 'package:mangarimpo/src/profileuser/config/theme/appcontroller.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/profile');
                  },
                  child: Container(
                    width: 25,
                    height: 30,
                    child: Image.asset('assets/images/icons/voltar.png'),
                  ),
                ),
                const SizedBox(width: 72),
                Container(
                  width: 167,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0XFF245B60),
                    ),
                  ),
                  child: Center(
                    child: Text('Configurações', style: TextStyle(
                      fontFamily: 'FjallaOne', fontSize: 24,
                      color: Color(0XFF245B60),
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Acessibilidade', style: TextStyle(
              color: Color(0XFF6E6D69),
            ),),
            SizedBox(height: 10),
            Container(
              width: 353,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0XFF245B60),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container( width: 28, height: 28,
                    child: Image.asset('assets/images/night.png')),
                  SizedBox(width: 15),
                  Text('Modo noturno', style: TextStyle(
                    fontFamily: 'DMSans-Bold', fontSize: 18,
                    color: Color(0XFF245B60),
                  ),),
                  SizedBox(width: 80),
                  Switch(
                    activeColor: Color(0XFF245B60),
                    value: AppController.instance.isDartTheme, 
                    onChanged: (value){
                      AppController.instance.changeTheme();
                      setState(() {});
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}