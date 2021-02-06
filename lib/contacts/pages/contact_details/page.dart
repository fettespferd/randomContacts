import 'package:flutter/material.dart';
import 'package:randomContacts/user/models.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage(this.user) : assert(User != null);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Stack(alignment: AlignmentDirectional.topCenter, children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(user.largePicture)),
          Positioned(top: 150, child: InformationCard(user))
        ]),
      ),
    );
  }
}

class InformationCard extends StatelessWidget {
  const InformationCard(this.user, {Key key}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(user.firstName + ' ' + user.lastName,
                style: TextStyle(fontSize: 40)),
            Row(
              children: [
                Icon(Icons.email),
                Text(user.email),
              ],
            ),
            Text(user.city + user.country),
            Row(
              children: [
                Icon(Icons.phone),
                Text(user.cellNumber),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
