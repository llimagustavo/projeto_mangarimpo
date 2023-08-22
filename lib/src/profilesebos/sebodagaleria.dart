import 'package:flutter/material.dart';

class PerfilSeboGaleria extends StatefulWidget {
  const PerfilSeboGaleria({super.key});

  @override
  State<PerfilSeboGaleria> createState() => _PerfilSeboGaleriaState();
}

class _PerfilSeboGaleriaState extends State<PerfilSeboGaleria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(0, 65),
        child: AppBar(
          title: Image.asset('assets/images/logo.png', width: 241, height: 50),
          centerTitle: true,
         ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 470,
                height: 178,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/capa/galeria.png'),
                    alignment: Alignment.topCenter, 
                    fit: BoxFit.fitWidth),
                ),
              ),
              Positioned(
                top: 114, left: 20,
                child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0XFFBB2946),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(image: AssetImage('assets/images/perfilsebo/perfilgaleria.jpeg'), fit: BoxFit.cover)
                ),
              )),
              Positioned( left: 172, top: 133,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Sebo da Galeria', style: TextStyle(
                      fontFamily: 'FjallaOne', fontSize: 32, color: Colors.white,
                    ),),
                  const SizedBox(height: 11),
                  const Image(image: AssetImage('assets/images/cincoestrelas.png'),),
                  const SizedBox(height: 11),
                  Container(
                    width: 144,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0XFF2F545C),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 12),
                        Icon(Icons.group_add_outlined, color: Colors.white),
                        SizedBox(width: 7),
                        Text('Adicionar', style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DMSans', fontSize: 16,
                        ),),
                      ],
                    ),
                  ),
                ],),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 280, left: 20, right: 20),
                child: Column(children: [
                  const Row(children: [
                    Text('Nossa História', style: TextStyle(
                      color: Color(0XFF2F545C),
                      fontFamily: 'DMSans-Bold', fontSize: 20,
                    ),),
                    SizedBox(width: 6),
                    Image(image: AssetImage('assets/images/book.png')),
                  ],),
                  const SizedBox(height: 22),
                  Container(
                    width: 380,
                    height: 102,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      border: Border.all(
                        color: const Color(0XFF245B60),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                      child: SelectableText('O Sebo da Galeria foi fundado em uma galeria da Presidente Vargas como um negócio familiar, em 1983, e segue operante até os dias atuais.', 
                      style: TextStyle(
                        color: Color(0XFF245B60),
                        fontFamily: 'DMSans-Bold', fontSize: 14,
                      )),
                    ),
                  ),
                  const SizedBox(height: 22),
                  const Row(children: [
                    Text('Localização', style: TextStyle(
                      color: Color(0XFF2F545C),
                      fontFamily: 'DMSans-Bold', fontSize: 20,
                    ),),
                    SizedBox(width: 6),
                    Image(image: AssetImage('assets/images/location.png')),
                  ],),
                  const SizedBox(height: 22),
                  Container(
                    width: 380,
                    height: 67,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      border: Border.all(
                        color: const Color(0XFF245B60),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                      child: SelectableText('Av. Pres. Vargas, 560 - Campina, Belém - PA, 66017-000', 
                      style: TextStyle(
                        color: Color(0XFF245B60),
                        fontFamily: 'DMSans-Bold', fontSize: 14,
                      )),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Container(
                    width: 167,
                    height: 32,
                    decoration: BoxDecoration(
                      color: const Color(0XFF2F545C),
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: const Center(
                      child: Text('Ir para o chat', style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DMSans', fontSize: 16,
                      ),),
                    ),
                  ),
                  const SizedBox(height: 35),
                ],),
              ),
            ],
          ),
        ),
    );
  }
}







