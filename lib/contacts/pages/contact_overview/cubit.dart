import 'package:randomContacts/app/module.dart';
import 'package:http/http.dart' as http;
import 'package:randomContacts/user/models.dart';
import 'dart:convert';

part 'cubit.freezed.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactState.initial()) {
    _loadUsers();
  }

  List<User> currentContactList = [];
  User currentUser;

  void _loadUsers() async {
    emit(ContactState.loading());
    var dataFromAPI = await http.get("https://randomuser.me/api/?results=10");
    var jsonData = json.decode(dataFromAPI.body);
    for (var user in jsonData['results']) {
      currentContactList.add(User.fromJson(user));
    }
    emit(ContactState.success(currentContactList));
  }
}

@freezed
abstract class ContactState with _$ContactState {
  const factory ContactState.initial() = _InitialState;
  const factory ContactState.loading() = _LoadingState;
  const factory ContactState.success(List<User> contactList) = _SuccessState;
}
