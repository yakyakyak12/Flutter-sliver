import 'package:flutter/material.dart';

class MySecondSliver extends StatelessWidget {
  const MySecondSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          // 일반 위젯을 슬리버 위젯으로 치한해준다.
          child: Container(
            height: 500,
            color: Colors.red,
          ),
        ),
        // 일반적인 sliverList를 사용한다는 것은 itme의 높이가 가변적이다는 것
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Text("$index"),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
