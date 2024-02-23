import 'package:flutter/material.dart';
import 'package:mangarimpo/src/chat/chatsebogaleria.dart';
import 'package:mangarimpo/src/home/home_page.dart';
import 'package:mangarimpo/src/chat/chatpage.dart';
import 'package:mangarimpo/src/profilesebos/arquivocultural.dart';
import 'package:mangarimpo/src/profilesebos/fauno.dart';
import 'package:mangarimpo/src/profilesebos/papirobranco.dart';
import 'package:mangarimpo/src/profilesebos/sebariacultural.dart';
import 'package:mangarimpo/src/profilesebos/sebodagaleria.dart';
import 'package:mangarimpo/src/profilesebos/sebodaperiferia.dart';
import 'package:mangarimpo/src/profileuser/config/config.dart';
import 'package:mangarimpo/src/profileuser/config/theme/appcontroller.dart';
import 'package:mangarimpo/src/profileuser/profilepage.dart';
import 'package:mangarimpo/src/searchbar/result.dart';
import 'package:mangarimpo/src/searchbar/search.dart';
import 'package:mangarimpo/src/splash/splashpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance, 
      builder: (context, child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: AppController.instance.isDartTheme 
        ? Brightness.dark 
        : Brightness.light,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/profile': (context) => const ProfilePage(),
        '/chat': (context) => const ChatPage(),
        '/perfilgaleria': (context) => const PerfilSeboGaleria(),
        '/perfilbranco': (context) => const PerfilPapiroBranco(),
        '/perfilfauno': (context) => const PerfilFauno(),
        '/perfilperiferia': (context) => const PerfilPeriferia(),
        '/perfilcultural': (context) => const PerfilArquivoCultural(),
        '/perfilsebaria': (context) => const PerfilSebariaCultural(),
        '/result': (context) => const ResultPage(),
        '/config': (context) => const ConfigPage(),
        '/chatgaleria': (context) => const ChatGaleria(),
        },
      );
    });
  }
}

