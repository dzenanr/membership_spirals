import 'package:membership/membership.dart';

Members members;

main() {
  members = new Members();
  var administrator = new Member('dr');
  administrator.password = 'dr';
  administrator.firstName = 'Dzenan';
  administrator.lastName = 'Ridjanovic';
  administrator.admin = true;
  members.add(administrator);

  var member = new Member('acr');
  member.password = 'acr';
  member.firstName = 'Amra';
  member.lastName = 'Curovac Ridjanovic';
  members.add(member);

  members.order();
}
