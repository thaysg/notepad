import 'package:flutter/material.dart';
import 'package:notepad/components/user_tile.dart';
import 'package:notepad/models/user.dart';
import 'package:notepad/provider/users.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UseProvider users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Agenda'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.person_add),
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (context, index) => UserTile(users.byIndex(index)),
        ));
  }
}
