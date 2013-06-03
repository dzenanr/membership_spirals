import 'package:membership/membership.dart';
import 'package:web_ui/web_ui.dart';

@observable // can be removed after watchers are out
Members members;

main() {
  members = new Members();
  members.internalList = toObservable(members.internalList);
}
