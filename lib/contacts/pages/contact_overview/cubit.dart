import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:randomContacts/app/module.dart';
import 'package:randomContacts/user/models.dart';

part 'cubit.freezed.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactState.initial()) {
    refreshUsers();
  }

  List<User> currentContactList = [];

  //Method for retrieving Users from the RandomUser-API
  Future<void> refreshUsers() async {
    emit(ContactState.loading());

    //Clear current ContactList and retrieve new contacts
    currentContactList.clear();
    final dataFromAPI = await http.get('https://randomuser.me/api/?results=20');
    final jsonData = json.decode(dataFromAPI.body) as Map<String, dynamic>;
    final userList = jsonData['results'] as List;
    currentContactList = userList
        .map((dynamic user) => User.fromJson(user as Map<String, dynamic>))
        .toList();
    emit(ContactState.success(currentContactList));
  }

  //Method for sorting the users in alphabetical order
  Future<void> sortUsers() async {
    emit(ContactState.loading());
    Comparator<User> alphabeticalComparator;
    alphabeticalComparator = (a, b) => a.firstName.compareTo(b.firstName);
    currentContactList.sort(alphabeticalComparator);
    emit(ContactState.success(currentContactList));
  }
}

@freezed
abstract class ContactState with _$ContactState {
  const factory ContactState.initial() = _InitialState;
  const factory ContactState.loading() = _LoadingState;
  const factory ContactState.success(List<User> contactList) = _SuccessState;
}
