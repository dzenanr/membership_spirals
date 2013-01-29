library membership;

class Member {
  String code;
  String password = '';

  Member(this.code);

  display() {
    print(code);
  }
}

class Members {
  var _members = new List<Member>();

  Iterator<Member> get iterator => _members.iterator;

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
