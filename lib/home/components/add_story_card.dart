import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          width: 80,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 7),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/add.svg',
                height: 25,
                width: 25,
              ),
              const SizedBox(height: 8),
              const Text(
                'Add\nstory',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
