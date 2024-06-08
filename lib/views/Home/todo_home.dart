import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 45, 82),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 82),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Row(
                      children: [
                        Text("HI",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sahal",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Your To-dos",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5.0,
                    color: Colors.green,
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                        ),
                      ),
                      title: const Text(
                        "Todo 1",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Text(
                        "Wakw up in 5",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.teal,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
