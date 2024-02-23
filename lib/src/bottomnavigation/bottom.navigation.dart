import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

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
              bottom: 10, left: 40,
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
              bottom: 10, left: 157,
                child: Container(
                  width: 76,
                  height: 59,
                  decoration: BoxDecoration(
                    color: const Color(0XFFBB2946),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Icons.home, size: 45, color: Colors.white),
              ),
          ),
            Positioned(
              bottom: 10, left: 272,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/profile');
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
                    child: Image.asset('assets/images/icons/contacts.png'),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
