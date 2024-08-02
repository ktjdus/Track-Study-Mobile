import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String content;

  TodoItem({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: Color(0xFFF5F5F5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(content, textAlign: TextAlign.start),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {Navigator.pushNamed(context, '/edit-todo', arguments: content);}, child: Text('수정')),
              TextButton(onPressed: () {}, child: Text('완료')),
            ],
          )
        ],
      ),
    );
  }
}