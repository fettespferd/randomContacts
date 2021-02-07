import 'package:flutter/material.dart';
import 'cubit.dart';
import 'package:randomContacts/app/cubit.dart';
import 'package:randomContacts/user/models.dart';
import '../contact_details/page.dart';

//TODO: Import Lint

class ContactOverviewPage extends StatefulWidget {
  @override
  _ContactOverviewPageState createState() => _ContactOverviewPageState();
}

class _ContactOverviewPageState extends State<ContactOverviewPage>
    with StateWithCubit<ContactCubit, ContactState, ContactOverviewPage> {
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
              colors: [Colors.lightBlue[300], Colors.lightBlue[100]]),
        ),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ContactList(currentContactList),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          child: Icon(Icons.refresh),
          onPressed: cubit.refreshUsers),
    );
  }
}

class ContactList extends StatelessWidget {
  const ContactList(this.contactList) : assert(contactList != null);

  final List<User> contactList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, idx) {
          User user = contactList[idx];
          return ListTile(
            title: Text(user.firstName + ' ' + user.lastName),
            subtitle: Text(user.email),
            leading: ImageIcon(user.thumbnail),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserDetailsPage(user)),
              );
            },
          );
        });
  }
}

class ImageIcon extends StatelessWidget {
  const ImageIcon(this.pictureLink);
  final String pictureLink;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 35, backgroundImage: Image.network(pictureLink).image);
  }
}
