import 'package:flutter/material.dart';

class BottomProfile extends StatelessWidget {
  const BottomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
              bottom: -45,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
            Positioned(
              bottom: 10, left: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/chat');
                },
                child: Container(
                  width: 76,
                  height: 59,
                  decoration: BoxDecoration(
                    color: const Color(0XFF245B60),
                    borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Container( width: 39, height: 35,
                    child: Image.asset('assets/images/icons/chat.png'),
                  ),
                ),
              ),
            ),
          ),
            Positioned(
              bottom: 10, left: 167,
                child: GestureDetector(
                  onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: Container(
                    width: 76,
                    height: 59,
                    decoration: BoxDecoration(
                      color: const Color(0XFF245B60),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(Icons.home, size: 45, color: Colors.white),
                              ),
                ),
          ),
            Positioned(
              bottom: 10, left: 282,
              child: Container(
                width: 76,
                height: 59,
                decoration: BoxDecoration(
                  color: const Color(0XFFBB2946),
                  borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                  child: Container( width: 39, height: 35,
                    child: Image.asset('assets/images/icons/contacts.png'),
                ),
              ),
            ),
          ),
      ],
    );
  }
}