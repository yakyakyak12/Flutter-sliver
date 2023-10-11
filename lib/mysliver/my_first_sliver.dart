import 'package:flutter/material.dart';

class MyFirstSliver extends StatelessWidget {
  const MyFirstSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 500,
          color: Colors.red,
        ),
        SizedBox(
          height: 525,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(), // 자식 스크롤을 무력화한다.
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
