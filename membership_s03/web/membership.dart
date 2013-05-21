import 'package:membership/membership.dart';

var members = new Members();

main() {
  var member1 = new Member('dzenanr');
  member1.firstName = 'Dzenan';
  member1.lastName = 'Ridjanovic';
  member1.admin = true;

  var member2 = new Member('davidc');
  member2.firstName = 'David';
  member2.lastName = 'Curtis';

  var member3 = new Member('timr');
  member3.firstName = 'Timur';
  member3.lastName = 'Ridjanovic';

  members.add(member1);
  members.add(member2);
  members.add(member3);
}
