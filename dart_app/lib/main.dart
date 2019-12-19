import "./func.dart";
import './excep.dart';
import './class.dart';

void main() {
  print("object helow");
  // 注释
  /*
    注释注释注释注释 
  */

  // Number: int/double
  int score = 23;
  double per = 1.234;
  print(score);
  print(per);

  // String
  String name = "hehe";
  print(name);

  // Boolean
  bool isv = false;
  print(isv);

  //---------------
  // String 转译
  String s1 = 'i\'m ss1';
  String s2 = "i'm ss2";
  print(s1);
  print(s2);

  // 拼接 （同类型）
  print(s1 + s2);
  // 拼接 （不同类型）
  print(s1 + s1.length.toString());
  print(s2 + "${s2.length}");

  // $变量

  int a = 20;
  int b = 30;
  print("11$a 1111 $b 1111 is ${a + b} 222 $a+$b ");

  // ??
  String na = null;
  String mm = na ?? "123123123123";
  print(mm);

  // List
  List prople = [1, 2, 4, "22"];
  print(prople);

  // for loop
  for (int i = 0; i < prople.length; i++) {
    print(prople[i]);
  }

  // for in
  List prople2 = [1, 2, 4, 66];
  for (int pe in prople2) {
    print(pe);
  }
  print("-------------");
  // 中断循环关键字  outerLoop  innerLoop
  outerLoop:
  for (int i = 0; i <= 3; i++) {
    innerLoop:
    for (int j = 0; j <= 3; j++) {
      print("$i $j");

      if (i == 2 && j == 2) {
        break outerLoop;
      }
    }
  }
  print("func======");
  print(func('哈哈哈'));
  jiantoufunc('jiantoufuncjiantoufunc');
  kxfunc("qq");
  kxfunc2("qq2");
  mmfunc2(q: "qq2", e: "ee2", w: "ww2"); // 顺序随意
  mrfunc(q: "as");

  try {
    depositMoney(-200);
  } catch (e) {
    print(e.errorMessage());
  }

  var student = Student(11, "weiguifei");
  print("${student.id} =-= ${student.name}");
  student.study();

  var student2 = Student.myConstructor();
  print("${student2.id} =-=====--= ${student2.name}");
  // set
  student.setName = "wwggff";
  print("name: ${student.name}");
  print("name22: ${student.getName}");
}
