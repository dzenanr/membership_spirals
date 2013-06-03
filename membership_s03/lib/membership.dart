library membership;

class Member {
  String code;
  String password = '';
  String firstName;
  String lastName;
  bool admin = false;

  Member(this.code);

  display() {
    print(code);
  }
}

class Members {
  var _members = new List<Member>();

  Iterator<Member> get iterator => _members.iterator;

  List<Member> get internalList => _members;
  set internalList(List<Member> observableList) => _members = observableList;

  add(Member member) {
    _members.add(member);
  }

  List<Member> toList() => _members;

  display() {
    _members.forEach((m) {
      m.display();
    });
  }
}
