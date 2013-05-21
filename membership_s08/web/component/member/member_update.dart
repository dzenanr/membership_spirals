import 'dart:html';

import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

class MemberUpdate extends WebComponent {
  Member member;
  Members members;

  change() {
    InputElement password = query("#password");
    LabelElement message = query("#message");
    var error = false;
    message.text = '';
    if (password.value.trim() == '') {
      message.text = 'password is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      member.password = password.value;
      var signInComponent = document.query('#member-sign-in').xtag;
      signInComponent.showMember = false;
    }
  }

  delete() {
    members.remove(member);
    var signInComponent = document.query('#member-sign-in').xtag;
    signInComponent.signOut();
  }

}