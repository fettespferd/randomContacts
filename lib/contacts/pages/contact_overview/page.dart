import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:randomContacts/app/cubit.dart';
import 'package:randomContacts/user/models.dart';

import '../contact_details/page.dart';
import 'cubit.dart';

class ContactOverviewPage extends StatefulWidget {
  @override
  _ContactOverviewPageState createState() => _ContactOverviewPageState();
}

class _ContactOverviewPageState extends State<ContactOverviewPage>
    with StateWithCubit<ContactCubit, ContactState, ContactOverviewPage> {
  @override
  ContactCubit cubit = ContactCubit();
  List<User> currentContactList = [];
  bool _isLoading = true;

  @override
  void onCubitData(ContactState state) {
    state.maybeWhen(
      loading: () => _isLoading = true,
      success: (contactList) {
        currentContactList = contactList;
        _isLoading = false;
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlue[300],
              Colors.lightBlue[100],
            ],
          ),
        ),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ContactList(currentContactList),
      ),
      floatingActionButton: CustomActionButton(cubit: cubit),
    );
  }
}

//Contact List Widget
class ContactList extends StatelessWidget {
  const ContactList(this.contactList) : assert(contactList != null);

  final List<User> contactList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, idx) {
          final user = contactList[idx];
          return ListTile(
            title: Text('${user.firstName} ${user.lastName}'),
            subtitle: Text(user.email),
            leading: ImageIcon(user.thumbnail),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => UserDetailsPage(user)),
              );
            },
          );
        });
  }
}

//Image Icon Widget for Contact List
class ImageIcon extends StatelessWidget {
  const ImageIcon(this.pictureLink) : assert(pictureLink != null);

  final String pictureLink;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 35, backgroundImage: Image.network(pictureLink).image);
  }
}

//Custom Action Button Widget
class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    Key key,
    @required this.cubit,
  }) : super(key: key);

  final ContactCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      marginEnd: 18,
      marginBottom: 20,
      icon: Icons.list,
      activeIcon: Icons.remove,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 8,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
          child: Icon(Icons.sort_by_alpha),
          backgroundColor: Colors.white,
          label: 'Sort',
          labelStyle: TextStyle(fontSize: 18),
          onTap: cubit.sortUsers,
        ),
        SpeedDialChild(
          child: Icon(Icons.refresh),
          backgroundColor: Colors.white,
          label: 'Refresh',
          labelStyle: TextStyle(fontSize: 18),
          onTap: cubit.refreshUsers,
        ),
      ],
    );
  }
}
