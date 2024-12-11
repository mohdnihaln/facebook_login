import 'package:flutter/material.dart';
import 'package:flutter_application_2/Counter/counter.dart';
import 'package:get/get.dart';


class Login extends StatelessWidget {
  Login({super.key});

  logincontroller c = Get.put(logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 16, 56),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text(
            "COUNTER APP",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        leading: const Icon(Icons.arrow_back, size: 17),
        actions: const [
          Icon(Icons.qr_code, size: 17),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.question_mark_outlined, size: 17),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Obx(() 
            => GestureDetector( onLongPress: () => c.count.value = 0 ,
              child: Text( '${c.count.value}', style: TextStyle(fontSize: 48.0 + (c.count.value * 2), color: Colors.white),
              ),
            )
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
                  onPressed: ()
                  => c.increment(),
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.add),
                ),
                         
             FloatingActionButton(
                  onPressed: ()
                  => c.decrement(),
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.minimize),
                ),
        ],
      ),
    );
  }
}
