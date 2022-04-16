import 'package:flutter/material.dart';
import 'package:flutter_second_week/add_book/add_book_page.dart';
import 'package:flutter_second_week/login/login_page.dart';
import 'package:flutter_second_week/profile/profile_page.dart';
import 'package:flutter_second_week/settings/settings_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text(
          "Anasayfa",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _body(),
      drawer: _drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddBookPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _body() {
    // return ListView(
    //   children: const [
    //     Card(
    //       child: Padding(
    //         padding: EdgeInsets.all(20.0),
    //         child: Text("Nutuk"),
    //       ),
    //     ),
    //     Card(
    //       child: Padding(
    //         padding: EdgeInsets.all(20.0),
    //         child: Text("Nutuk"),
    //       ),
    //     ),
    //   ],
    // );

    List<String> _books = ["Gurur ve Önyargı", "Nutuk", "Kanatlar ve Küller Sarayı", "Dikenler ve Güller Sarayı"];

    return ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _listViewOnTap(index),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const CircleAvatar(),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(_books[index]),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _listViewOnTap(int index) {
    print(index);
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Bu kitabı silmek istediğinize emin misiniz?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  print("Evete basıldı");

                  Navigator.pop(context);
                },
                child: const Text("Evet"),
              ),
              TextButton(
                onPressed: () {
                  print("Hayıra basıldı");

                  Navigator.pop(context);
                },
                child: const Text("Hayır"),
              )
            ],
          );
        });
  }

  Widget _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Kadriye"),
            accountEmail: Text("kadriye@gmail.com"),
            currentAccountPicture: CircleAvatar(
              //backgroundColor: Colors.purple,
              backgroundImage: AssetImage("assets/images/manti.png"),
            ),
          ),
          ListTile(
            title: Text("Anasayfa"),
            leading: Icon(Icons.skip_next),
            trailing: Icon(Icons.snooze),
            subtitle: Text("Anasayfa yapısı"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            title: Text("Profilim"),
            leading: Icon(Icons.skip_next),
            trailing: Icon(Icons.person),
            subtitle: Text("Profil sayfa yapısı"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: Text("Ayarlar"),
            leading: Icon(Icons.skip_next),
            trailing: Icon(Icons.settings),
            subtitle: Text("Ayarlar sayfa yapısı"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: Text("Çıkış yap"),
            leading: Icon(Icons.skip_next),
            trailing: Icon(Icons.logout),
            subtitle: Text("Çıkış yap sayfa yapısı"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
