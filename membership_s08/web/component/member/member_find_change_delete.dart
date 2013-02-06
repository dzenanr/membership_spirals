import 'dart:html';

import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

class MemberFindChangeDelete extends WebComponent {
  Member member;
  Members members;

  find() {
    LabelElement message = query("#find-change-delete-message");
    InputElement code = query("#code");
    InputElement password = query("#password");
    InputElement firstName = query("#firstName");
    InputElement lastName = query("#lastName");
    var error = false;
    message.text = '';
    if (code.value.trim() == '') {
      message.text = 'code is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      member = members.find(code.value);
      if (member != null) {
        message.text = 'found';
        password.value = member.password;
        firstName.value =  member.firstName;
        lastName.value =  member.lastName;
      } else {
        message.text = 'not found';
      }
    }
  }

  change() {
    LabelElement message = query("#find-change-delete-message");
    if (member != null) {
      InputElement password = query("#password");
      InputElement firstName = query("#firstName");
      InputElement lastName = query("#lastName");
      var error = false;
      message.text = '';
      if (password.value.trim() == '') {
        message.text = 'password is mandatory; ${message.text}';
        error = true;
      }
      if (firstName.value.trim() == '') {
        message.text = 'first name is mandatory; ${message.text}';
        error = true;
      }
      if (lastName.value.trim() == '') {
        message.text = 'last name is mandatory; ${message.text}';
        error = true;
      }
      if (!error) {
        member.password = password.value;
        member.firstName = firstName.value;
        member.lastName = lastName.value;
        message.text = 'changed';
      }
    } else {
      message.text = 'first find a member';
    }
  }

  delete() {
    LabelElement message = query("#find-change-delete-message");
    if (member != null) {
      message.text = '';
      if (members.remove(member)) {
        message.text = 'deleted';
      } else {
        message.text = 'not deleted';
      }
    } else {
      message.text = 'first find a member';
    }
  }

}