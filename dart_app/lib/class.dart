class Student {
  int id;
  String name;

  Student([this.id, this.name]);
  // Student([int id, String name]) {
  //   // print("wwoshi我是构造函数 ");
  //   this.id = id;
  //   this.name = name;
  // }

  Student.myConstructor([this.id, this.name]);
  void study() {
    print(this.name);
  }

  // set  get
  void set setName(String nums) {
    this.name = nums;
  }

  String get getName => this.name;
}
