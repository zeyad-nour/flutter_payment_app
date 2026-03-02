import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: ShapeDecoration(
              color: Color(0xffd9d9d9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            left: 20 + 16,
            right: 20 + 16,
            child: Row(
              children: List.generate(
                30,
                (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(color: Color(0xffb8b8b8), height: 2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: MediaQuery.of(context).size.width * 0.2,
            child: CircleAvatar(radius: 50, backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            left: MediaQuery.of(context).size.width * 0.2,
            child: CircleAvatar(radius: 50, backgroundColor: Colors.white),
          ),

          Positioned(
            left: 0,
            height: 0,
            top: -50,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xffd9d9d9),
              child: CircleAvatar(
                backgroundColor: Color(0xff34a853),
                child: Icon(Icons.check, color: Colors.white, size: 54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
