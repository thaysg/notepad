import 'package:flutter/material.dart';
import 'package:notepad/components/user_tile.dart';
import 'package:notepad/provider/users.dart';
import 'package:notepad/routes/app_routes.dart';
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
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
          },
          child: Icon(Icons.person_add),
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (context, index) => UserTile(users.byIndex(index)),
        ));
  }
}
