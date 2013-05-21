import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

class MemberSignInList extends WebComponent {
  Members members;

  bool get adminSignedIn {
    var signInComponent = query('#member-sign-in').xtag;
    Member member = signInComponent.signedInMember;
    if (member != null && member.admin) {
      return true;
    }
    return false;
  }

  bool get memberSignedIn {
    var signInComponent = query('#member-sign-in').xtag;
    Member member = signInComponent.signedInMember;
    if (member != null && !member.admin) {
      return true;
    }
    return false;
  }
}
