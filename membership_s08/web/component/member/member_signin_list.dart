import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

class MemberSigninList extends WebComponent {
  Members members;

  bool get adminSignedin {
    var signinComponent = query('#member-signin').xtag;
    Member member = signinComponent.signedinMember;
    if (member != null && member.admin) {
      return true;
    }
    return false;
  }

  bool get memberSignedin {
    var signinComponent = query('#member-signin').xtag;
    Member member = signinComponent.signedinMember;
    if (member != null && !member.admin) {
      return true;
    }
    return false;
  }
}
