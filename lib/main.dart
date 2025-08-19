import 'package:flutter/material.dart';

void main() {
  runApp(const Task3());
}

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Dashboard",
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemOfListview(
                      number: "120",
                      text: "Users",
                      color: Colors.red,
                    ),
                    itemOfListview(
                      number: "55",
                      text: "Sales",
                      color: Colors.green,
                    ),
                    itemOfListview(
                      number: "30",
                      text: "Orders",
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Report(),
              SizedBox(height: 24),
              Text(
                "Recent Users",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Users(),
              Text(
                "Recent Orders",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Orders(),
            ],
          ),
        ),
      ),
    );
  }
}

class itemOfListview extends StatelessWidget {
  itemOfListview({
    super.key,
    required this.number,
    required this.text,
    required this.color,
  });
  final String number;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 8,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        ),
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffF7F2FA),
          ),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text(
                "Monthly Repot",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Icon(Icons.bar_chart, color: Colors.grey, size: 40),
            ),
          ),
        ),
      ),
    );
  }
}

class Users extends StatelessWidget {
  Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 16),
      child: SizedBox(
        height: 300,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple[100],
                  child: Text("A"),
                ),
                title: Text("Alice", style: TextStyle(fontSize: 20)),
                subtitle: Text(
                  "alice@gmail.com",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(thickness: .4),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple[100],
                  child: Text("B"),
                ),
                title: Text("Bob", style: TextStyle(fontSize: 20)),
                subtitle: Text("bob@gmail.com", style: TextStyle(fontSize: 16)),
              ),
              Divider(thickness: .4),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple[100],
                  child: Text("C"),
                ),
                title: Text("Charlie", style: TextStyle(fontSize: 20)),
                subtitle: Text(
                  "charlie@gmail.com",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 16),
      child: SizedBox(
        height: 230,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("#1001", style: TextStyle(fontSize: 20)),
                trailing: Text(
                  "shipped",
                  style: TextStyle(fontSize: 16, color: Color(0xff58545E)),
                ),
              ),
              Divider(thickness: .4),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("#1002", style: TextStyle(fontSize: 20)),
                trailing: Text(
                  "pending",
                  style: TextStyle(fontSize: 16, color: Color(0xff58545E)),
                ),
              ),
              Divider(thickness: .4),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("#1003", style: TextStyle(fontSize: 20)),
                trailing: Text(
                  "Delivered",
                  style: TextStyle(fontSize: 16, color: Color(0xff58545E)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
