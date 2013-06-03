import 'dart:html';

import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

class MemberSignIn extends WebComponent {
  Members members;
  @observable
  Member signedInMember;
  @observable
  bool showSignIn = true;
  @observable
  bool showSignUp = false;
  @observable
  bool showSignOut = false;

  signIn() {
    InputElement code = query("#signin-code");
    InputElement password = query("#signin-password");
    LabelElement message = query("#message");
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
          signedInMember = member;
          showSignIn = false;
          showSignUp = false;
          showSignOut = true;
        } else {
          message.text = 'not valid sign in';
        }
      } else {
        message.text = 'not valid sign in';
      }
    }
  }

  signUp() {
    LabelElement message = query("#message");
    message.text = '';
    showSignUp = true;
  }

  signOut() {
    signedInMember = null;
    showSignIn = true;
    showSignUp = false;
    showSignOut = false;
  }
}
