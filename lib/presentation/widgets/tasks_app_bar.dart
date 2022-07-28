import 'package:flutter/material.dart';

class TasksAppBar extends StatelessWidget {
  const TasksAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            child: Icon(
              size: 30.0,
              Icons.list,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Todoey',
            style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w700),
          ),
          Text(
            '12 Tasks',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}
