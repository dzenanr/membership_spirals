// Auto-generated from member_list.html.
// DO NOT EDIT.

library x_member_item;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'package:web_ui/web_ui.dart';

import 'package:membership/members.dart';

class MemberList extends WebComponent {
  
  /** Autogenerated from the template. */
  
  /**
  * Shadow root for this component. We use 'var' to allow simulating shadow DOM
  * on browsers that don't support this feature.
  */
  var _root;
  autogenerated.LIElement __e3;
  autogenerated.Template __t;
  
  MemberList.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    _root.innerHtml = '''
    <li id="__e-3"></li>
    ''';
    __e3 = _root.query('#__e-3');
    var __binding2 = __t.contentBind(() => ( member.code ));
    __e3.nodes.add(__binding2);
    
    __t.create();
  }
  
  void inserted_autogenerated() {
    __t.insert();
  }
  
  void removed_autogenerated() {
    __t.remove();
    __e3 = __t = null;
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
  }
  
  /** Original code from the component. */
  
  Member member;
}

