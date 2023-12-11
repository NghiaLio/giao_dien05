import 'dart:math';

import 'package:flutter/material.dart';


class test{
  Color e;
  String d;
  int c;
  test(this.c, this.d, this.e);
}

List x = [
  test(1,'hi', Colors.blue),
  test(2,'he;', Colors.red),
  test(3,'hh', Colors.purple),
  test(4,'hh', Colors.yellow),
  test(5,'hh', Colors.green),
  test(6,'hh', Colors.pink),
  test(7,'hh', Colors.amber),
  test(8,'hh', Colors.orange),
];


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Animation Hero',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                height: size.height *8.5/10,
                child: Task()
              )
            ],
          ),
        ),
      ),
    );
  }
}
class Task extends StatelessWidget {
  
  Task({super.key,});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2 ,
        childAspectRatio: 3/4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20
      ), 
      itemCount: x.length,
      itemBuilder: (context, index){
        return InkWell(
          onTap: ()=>_routePage(context, index),
          child: Hero(
            tag: 'task-2-${x[index].c}',
            child:Container(
              decoration: BoxDecoration(
                color:x[index].e,
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              
            ),
          ),
        );
      }
    );
  }

  void _routePage(BuildContext context, index){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context)=>PageRoute(index: index,)
      )
    );
  }
}

class PageRoute extends StatelessWidget {
  PageRoute({super.key, required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: 'task-2-${x[index].c}',
          child: Container(
            height: size.height*1,
            width: size.width*1,
            color:x[index].e,
          ),
        )
      ),
    );
  }
}