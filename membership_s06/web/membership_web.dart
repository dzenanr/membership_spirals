import 'package:web_ui/web_ui.dart';
import 'package:membership/membership.dart';

Members members;

main() {
  useShadowDom = true;

  members = new Members();
  var administrator = new Member('dr');
  administrator.password = 'dr';
  administrator.firstName = 'Dzenan';
  administrator.lastName = 'Ridjanovic';
  administrator.admin = true;
  members.add(administrator);
}
