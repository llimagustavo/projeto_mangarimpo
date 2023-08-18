import 'package:flutter/material.dart';

class SebosVerificados extends StatefulWidget {
  const SebosVerificados({super.key});

  @override
  State<SebosVerificados> createState() => _SebosVerificadosState();
}

class _SebosVerificadosState extends State<SebosVerificados> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/perfilgaleria'),
              child: Container(
                width: 100,
                height: 134,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/fotosebo/sebodagaleria.png')),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/perfilbranco'),
              child: Container(
                width: 100,
                height: 134,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/fotosebo/papirobranco.png')),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/perfilfauno'),
              child: Container(
                width: 100,
                height: 134,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/fotosebo/fauno.png'),),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/perfilperiferia'),
              child: Container(
                width: 100,
                height: 134,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/sebodaperiferia.png')),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/perfilcultural'),
              child: Container(
                width: 100,
                height: 134,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/arquivocultural.png')),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/perfilsebaria'),
              child: Container(
                width: 100,
                height: 134,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/fotosebo/sebariacultural.png')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}