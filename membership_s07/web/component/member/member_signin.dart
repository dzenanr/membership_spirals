import 'dart:html';

import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

class MemberSignin extends WebComponent {
  Members members;
  @observable
  Member signedinMember;
  @observable
  bool showSignin = true;
  @observable
  bool showSignup = false;
  @observable
  bool showMember = false;
  @observable
  bool showSignout = false;

  signin() {
    InputElement code = query("#signin-code");
    InputElement password = query("#signin-password");
    LabelElement message = query("#signin-message");
    message.text = '';
    var error = false;
    if (code.value.trim() == '') {
      message.text = 'code is mandatory; ${message.text}';
      error = true;
    }
    if (password.value.trim() == '') {
      message.text = 'password is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      var member = members.find(code.value.trim());
      if (member != null) {
        if (member.password == password.value.trim()) {
          signedinMember = member;
          showSignin = false;
          showSignup = false;
          showSignout = true;
        } else {
          message.text = 'not valid sign in';
        }
      } else {
        message.text = 'not valid sign in';
      }
    }
  }

  signup() {
    LabelElement message = query("#signin-message");
    message.text = '';
    showSignup = true;
  }

  member() {
    showMember = true;
  }

  signout() {
    signedinMember = null;
    showSignin = true;
    showSignup = false;
    showMember = false;
    showSignout = false;
  }
}
