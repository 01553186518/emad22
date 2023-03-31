import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
final _firestore= FirebaseFirestore.instance;

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final massageTextEditingController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  String? massageText; //will give use the message
 TextEditingController massagecontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            Image.asset('lib/image/Untitled design (4).jpg', height: 25),
            SizedBox(width: 10),
            Text('MassageMe')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Massagestreambilder(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: massageTextEditingController,
                      onChanged: (value) {
                        setState(() {
                          massageText = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                       massageTextEditingController.clear();
                      _firestore.collection('massage').add({
                        'text': massageText,
                        'sender' :signedInUser.email,
                      });

                    },
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Massagestreambilder extends StatelessWidget {
  const Massagestreambilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('massage').snapshots(),
      builder: (context, snaphot) {
        List<massageLine> massagewidgets = [];
        if (!snaphot.hasData) {}
        final massages = snaphot.data!.docs;
        for (var massage in massages) {
          final massageText = massage.get('text');
          final massagesender = massage.get('sender');
          final massagewidget = massageLine(
            sender: massagesender,
            text: massageText,
          );

          massagewidgets.add(massagewidget);
        }

        return Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: massagewidgets,
          ),
        );
      },
    );
  }
}

class massageLine extends StatelessWidget {
  const massageLine({this.text, this.sender, Key? key}) : super(key: key);

  final String? sender;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$sender',
            style: TextStyle(fontSize: 12, color: Colors.black45),
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue[800],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                '$text',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
