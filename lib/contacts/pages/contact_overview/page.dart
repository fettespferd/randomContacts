import 'package:flutter/material.dart';
import 'cubit.dart';
import 'package:randomContacts/app/cubit.dart';
import 'package:randomContacts/user/models.dart';

//TODO: Import Lint

class ContactOverviewPage extends StatefulWidget {
  @override
  _ContactOverviewPageState createState() => _ContactOverviewPageState();
}

class _ContactOverviewPageState extends State<ContactOverviewPage>
    with StateWithCubit<ContactCubit, ContactState, ContactOverviewPage> {
  ContactCubit cubit = ContactCubit();
  List<User> currentContactList = [];
  bool _isLoading = false;

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
              colors: [Colors.lightBlue, Colors.blue]),
        ),
        child: ContactList(currentContactList),
      ),
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
          User contact = contactList[idx];
          return ListTile(
            title: Text(contact.email),
          );
        });
  }
}

//lass Contact extends StatelessWidget {
// const Contact({
//   @required this.name,
//   @required this.email,
// })  : assert(name != null),
//       assert(email != null);
//
// final String name;
// final String email;
//
// @override
// Widget build(BuildContext context) {
//   return Column();
// }
//
