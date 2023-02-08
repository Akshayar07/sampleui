import 'package:flutter/material.dart';


class Actor {
  const Actor(this.name, this.initials);
  final String name;
  final String initials;
}

class CastList extends StatefulWidget {
  const CastList({super.key});

  @override
  State createState() => CastListState();
}

class CastListState extends State<CastList> {
  final List<Actor> _cast = <Actor>[
    const Actor('Llya Fisuk', 'LF'),
    const Actor('Sasha Tikhonov', 'ST'),
    const Actor('VIC', 'VIC'),
    const Actor('Jordan Kay', 'JK'),
  ];

  Iterable<Widget> get actorWidgets {
    return _cast.map((Actor actor) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
          backgroundColor: Colors.grey.withOpacity(0.5),
          avatar: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpg"),
            // child: Text(actor.initials,
            //   style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.grey,),
          label: Text(actor.name),
          onDeleted: () {
            setState(() {
              _cast.removeWhere((Actor entry) {
                return entry.name == actor.name;
              });
            });
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: actorWidgets.toList(),
    );
  }
}
