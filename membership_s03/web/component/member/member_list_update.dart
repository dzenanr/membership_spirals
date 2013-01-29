import 'dart:html';

import 'package:web_ui/web_ui.dart';
import 'package:membership/membership.dart';

class MemberListUpdate extends WebComponent {
  Members members;

  addMember() {
    InputElement code = query("#code");
    Member member = new Member(code.value);
    InputElement password = query("#password");
    InputElement firstName = query("#firstName");
    InputElement lastName = query("#lastName");
    member.password = password.value;
    member.firstName = firstName.value;
    member.lastName = lastName.value;
    members.add(member);
    code.value = "";
    password.value = "";
    firstName.value = "";
    lastName.value = "";
  }
}