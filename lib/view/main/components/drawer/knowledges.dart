import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'PHP Native Backend'),
        KnowledgeText(knowledge: 'Mysql , Sqflite , Firebase'),
        KnowledgeText(knowledge: 'Hosting, Cloud Hosting'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Mobile Networks , CCNA , Networking'),
      ],
    );
  }
}
