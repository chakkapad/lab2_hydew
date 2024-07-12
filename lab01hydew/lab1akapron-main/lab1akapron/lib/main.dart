import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart'; // Assuming Student class is defined in student.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 54, 130, 244)),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("จักรพรรดิ์ อนุไพร", "ุ643450065-4", "image/D.jpg", "About ดิว", "chakkapad.a@kkumail.com", "https://shorturl.at/saGIV"),
      Student("นริศรา วงค์บุตรศรี", "ุ643450328-8", "image/narisara.jpg", "About เมย์ Birthday 27 DEC 2002 ", "naritsara.w@kkumail.com.com", "https://shorturl.at/WOUrM"),
      Student("วรรณภา เบ้านาค", "ุ643450330-1", "image/wannapa.jpg", "About มอลล่า Birthday 14 FEB 2002", "wannapa.ba@kkumail.com", "https://shorturl.at/gsxm2"),
      Student("อฆพร ไร่ขาม", "ุ643450334-3", "image/akapron.jpg", "About นิ่ม Birthday 17 FEB 2003", "akapron.r@kkumail.com", "https://shorturl.asia/q6ic9"),
            
            
                  
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Image(
              width: 100,
              image: AssetImage(student.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}