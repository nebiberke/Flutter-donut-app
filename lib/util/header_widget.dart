import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Menu and profil ıcon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              size: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2.5)),
                  child: const Icon(
                    Icons.person_outline,
                    size: 35,
                  )),
            ),
          ],
        ),
        // I want to eat
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: const TextSpan(
            text: "I want to ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: "Eat",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
