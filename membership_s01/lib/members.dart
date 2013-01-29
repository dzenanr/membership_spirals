library membership;

class Member {
  String code;
  String password = '';

  Member(this.code);
}

class Members {
  var _members = new List<Member>();

  Iterator<Member> get iterator => _members.iterator;

  add(Member member) {
    _members.add(member);
  }
}
