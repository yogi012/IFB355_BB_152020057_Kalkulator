// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Messages",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/100/200/300",
              title: "Yogi",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/200/200/300",
              title: "Faisal",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/300/200/300",
              title: "Nopal",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/400/200/300",
              title: "Hadi",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/500/200/300",
              title: "Tams",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/600/200/300",
              title: "Winter",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/700/200/300",
              title: "Joko",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/800/200/300",
              title: "Rehan",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/900/200/300",
              title: "A ul",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/110/200/300",
              title: "Salsa",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/120/200/300",
              title: "May",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/130/200/300",
              title: "Alya",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/140/200/300",
              title: "John",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/15/200/300",
              title: "Rendi",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/16/200/300",
              title: "Rahma",
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/17/200/300",
              title: "Wendy",
              subtitle: faker.lorem.sentence(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("10:00"),
    );
  }
}
