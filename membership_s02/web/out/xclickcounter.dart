// Auto-generated from xclickcounter.html.
// DO NOT EDIT.

library x_click_counter;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'package:web_ui/web_ui.dart';

class CounterComponent extends WebComponent {
  
  /** Autogenerated from the template. */
  
  /**
  * Shadow root for this component. We use 'var' to allow simulating shadow DOM
  * on browsers that don't support this feature.
  */
  var _root;
  autogenerated.ButtonElement __e0;
  autogenerated.SpanElement __e2;
  autogenerated.Template __t;
  
  CounterComponent.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    _root.innerHtml = '''
    <div>
    <button id="__e-0">Click me</button><br>
    <span id="__e-2"></span>
    </div>
    ''';
    __e0 = _root.query('#__e-0');
    __t.listen(__e0.onClick, ($event) { increment(); });
    __e2 = _root.query('#__e-2');
    var __binding1 = __t.contentBind(() => (count));
    __e2.nodes.addAll([
      new autogenerated.Text('(click count: '),
      __binding1,
      new autogenerated.Text(')')
    ]);
    
    __t.create();
  }
  
  void inserted_autogenerated() {
    __t.insert();
  }
  
  void removed_autogenerated() {
    __t.remove();
    __e0 = __e2 = __t = null;
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
  }
  
  /** Original code from the component. */
  
  int count = 0;
  void increment() { count++; }
}

