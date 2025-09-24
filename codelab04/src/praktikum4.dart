void main() {
  var list1 = <dynamic>[1, 2, 3];
  var list2 = [0, ...list1];
  var list3 = [0, ...list1];
  var nimList = [...'2341720118'.split('')];

  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  var login = 'staff';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];

  list1 = [1, 2, null];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  print(list1);
  print(list1);
  print(list2);
  print(list2.length);
  print(list3.length);
  print(nimList);
  print(nav);
  print(nav2);
  print(listOfStrings);
}
