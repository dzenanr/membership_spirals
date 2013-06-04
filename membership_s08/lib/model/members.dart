part of membership;

class Member {
  String code;
  String password = '';
  @observable
  String firstName;
  @observable
  String lastName;
  bool admin = false;

  Member(this.code);

  /**
   * Compares two members based on last names, then on first names.
   * If the result is less than 0 then the first member is less than the second,
   * if it is equal to 0 they are equal and
   * if the result is greater than 0 then the first is greater than the second.
   */
  int compareTo(Member member) {
    if (lastName != null && firstName != null) {
      int comparison = lastName.compareTo(member.lastName);
      if (comparison == 0) {
        comparison = firstName.compareTo(member.firstName);
      }
      return comparison;
    }
  }

  /**
   * Returns a string that represents this member.
   */
  String toString() {
    return '${lastName}, ${firstName}';
  }

  display() {
    print(toString);
  }
}

class Members {
  var _members = new List<Member>();

  Iterator<Member> get iterator => _members.iterator;

  List<Member> get internalList => _members;
  set internalList(List<Member> observableList) => _members = observableList;

  bool add(Member member) {
    if (contain(member.code)) {
      return false;
    } else {
      _members.add(member);
      return true;
    }
  }

  List<Member> toList() => _members;

  order() {
    // in place sort
    _members.sort((m,n) => m.compareTo(n));
  }

  bool contain(String code) {
    if (code != null) {
      for (Member member in _members) {
        if (member.code == code) {
          return true;
        }
      }
    }
    return false;
  }

  Member find(String code) {
    if (code != null) {
      for (Member member in _members) {
        if (member.code == code) {
          return member;
        }
      }
    }
  }

  bool remove(Member member) {
    for (Member m in _members) {
      if (m.code == member.code) {
        int index = _members.indexOf(m, 0);
        _members.removeAt(index);
        return true;
      }
    }
    return false;
  }

  display() {
    _members.forEach((m) {
      m.display();
    });
  }
}
