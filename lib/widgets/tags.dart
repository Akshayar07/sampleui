import 'package:flutter/material.dart';



class Actor {
  const Actor(this.name);
  final String name;
  // final String initials;
}

class CastList2 extends StatefulWidget {
  const CastList2({super.key});

  @override
  State createState() => CastList2State();
}

class CastList2State extends State<CastList2> {
  final List<Actor> _cast = <Actor>[
    const Actor('movies'),
    const Actor('podcast'),
    const Actor('UXdesign'),
    const Actor('spendtraackTeam'),
    const Actor('tech'),
  ];

  Iterable<Widget> get actorWidgets {
    return _cast.map((Actor actor) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
          backgroundColor: Colors.grey.withOpacity(0.5),
          // avatar: CircleAvatar(child: Text(
          //   actor.initials,style: TextStyle(color: Colors.black),),
          //   backgroundColor: Colors.grey,),
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
