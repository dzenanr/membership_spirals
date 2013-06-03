import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

Members members;

main() {
  members = new Members();
  var administrator = new Member('dr');
  administrator.password = 'dr';
  administrator.firstName = 'Dzenan';
  administrator.lastName = 'Ridjanovic';
  administrator.admin = true;
  members.add(administrator);

  members.internalList = toObservable(members.internalList);
}
