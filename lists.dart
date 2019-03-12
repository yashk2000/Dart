void main() {
  var list = [1, 2, 3];
  var sublist = [[1, 2, 3], [1, 2]];
  print(sublist[0]);//[1, 2, 3]
  print(sublist[0][1]);//2
  var f = ["4", 5, 6];
  print(f[0]);
  //var tmp = f[0] + f[2];//error
  print(f[2]);//will print 6
  //print(tmp);
  print(sublist.length);//2
  print(list.length);//3
  print(sublist[0].length);//3
}
