import 'package:membership/members.dart';

var members = new Members();

main() {
  // create several members
  var member1 = new Member('dzenanr');
  var member2 = new Member('davidc');
  var member3 = new Member('timr');
  members.add(member1);
  members.add(member2);
  members.add(member3);
}
