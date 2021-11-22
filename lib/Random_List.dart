
import 'package:flutter/cupertino.dart';
import 'dart:math';

class Random_List extends StatefulWidget {

  //Input list given by the user to randomize from
  List list;

  //Number of random selections; Output list's length.
  int iterations;

  Random_List({
    required this.list,
    required this.iterations,
  });


  //Input list's item can be randomly selected more than once
  List randInclude(){
    List listRand=[];
    List listUser=this.list;
    Random random=Random();
    int r;

    for(int i=1;i<=this.iterations;i=i+1){
      r=random.nextInt(listUser.length);
      listRand.add(listUser[r]);
    }

    return listRand;
  }


  //Input list's item can be randomly selected only once
  List randExclude(){
    List listRand=[];
    List listUser=this.list;
    Random random=Random();
    int r;
    int listUserLength=this.list.length;

    if(this.iterations<=listUserLength)
      for(int i=1;i<=this.iterations;i=i+1){
        r=random.nextInt(listUser.length);
        listRand.add(listUser[r]);
        listUser.removeAt(r);
      }
    else
      for(int i=1;i<=listUserLength;i=i+1){
        r=random.nextInt(listUser.length);
        listRand.add(listUser[r]);
        listUser.removeAt(r);
      }

    return listRand;
  }

  @override
  _Random_ListState createState() => _Random_ListState();
}

class _Random_ListState extends State<Random_List> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
