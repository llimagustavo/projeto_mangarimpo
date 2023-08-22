import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/search');
                  },
                  child: Container(
                    width: 25,
                    height: 30,
                    child: Image.asset('assets/images/icons/voltar.png'),
                  ),
                ),
                const SizedBox(width: 35),
                Container(
                width: 250,
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
                    decoration: InputDecoration(
                      hintText: '    Crepúsculo', hintStyle: TextStyle(
                        fontSize: 14, color: Color(0XFF245B60),
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(onPressed: () {}, 
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
            SizedBox(height: 30),
            Text('6 sebos no Mangarimpo ofertam o item', style: TextStyle(
              color: Color(0XFF245B60), 
              fontFamily: 'DMSans-Bold',
            ),),
            SizedBox(height: 12),
            Text('"Crepúsculo"', style: TextStyle(
              color: Color(0XFFBB2946), 
              fontFamily: 'FjallaOne', fontSize: 26,
            ),),
            SizedBox(height: 15),
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 110,
                      height: 150,
                      child: Image.asset('assets/images/crep1.png'),
                    ),
                    Container(
                      width: 110,
                      height: 150,
                      child: Image.asset('assets/images/crep2.png'),
                    ),
                    Container(
                      width: 110,
                      height: 150,
                      child: Image.asset('assets/images/crep1.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Text('Vendido por:', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 10,
                        ),),
                        Text('Sebo da Galeria', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 11, fontFamily: 'DMSans-Bold',
                        ),),
                        SizedBox(height: 7),
                        Container(
                          width: 67,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFF2F545C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('R\$ 21,35', style: TextStyle(
                              color: Colors.white, fontSize: 11,
                            ),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      children: [
                        Text('Vendido por:', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 10,
                        ),),
                        Text('Casa do Fauno', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 11, fontFamily: 'DMSans-Bold',
                        ),),
                        SizedBox(height: 7),
                        Container(
                          width: 67,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFF2F545C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('R\$ 20,00', style: TextStyle(
                              color: Colors.white, fontSize: 11,
                            ),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 42),
                    Column(
                      children: [
                        Text('Vendido por:', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 10,
                        ),),
                        Text('Papiro Branco', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 11, fontFamily: 'DMSans-Bold',
                        ),),
                        SizedBox(height: 7),
                        Container(
                          width: 67,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFF2F545C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('R\$ 32,55', style: TextStyle(
                              color: Colors.white, fontSize: 11,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 110,
                      height: 150,
                      child: Image.asset('assets/images/crep1.png'),
                    ),
                    Container(
                      width: 110,
                      height: 150,
                      child: Image.asset('assets/images/crep1.png'),
                    ),
                    Container(
                      width: 110,
                      height: 150,
                      child: Image.asset('assets/images/crep3.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Text('Vendido por:', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 10,
                        ),),
                        Text('Arquivo Cultural', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 11, fontFamily: 'DMSans-Bold',
                        ),),
                        SizedBox(height: 7),
                        Container(
                          width: 67,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFF2F545C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('R\$ 13,40', style: TextStyle(
                              color: Colors.white, fontSize: 11,
                            ),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Text('Vendido por:', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 10,
                        ),),
                        Text('Cogumelito', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 11, fontFamily: 'DMSans-Bold',
                        ),),
                        SizedBox(height: 7),
                        Container(
                          width: 67,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFF2F545C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('R\$ 9,90', style: TextStyle(
                              color: Colors.white, fontSize: 11,
                            ),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        Text('Vendido por:', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 10,
                        ),),
                        Text('Seboso Livraria', style: TextStyle(
                          color: Color(0XFF245B60), fontSize: 11, fontFamily: 'DMSans-Bold',
                        ),),
                        SizedBox(height: 7),
                        Container(
                          width: 67,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0XFF2F545C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('R\$ 12,00', style: TextStyle(
                              color: Colors.white, fontSize: 11,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}