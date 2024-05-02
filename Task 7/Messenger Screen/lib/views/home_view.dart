import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widgets/chats_sliver_list.dart';
import '../widgets/search_container.dart';
import '../widgets/stories_sliver_list.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<UserModel> models = [
    UserModel(
        accName: 'Harry',
        lastMessage: Message(
          text: 'I don\'t want to come, sorry',
          date: '1:30 am',
        ),
        accImage: 'assets/avatar2.jpg'),
    UserModel(
        accName: 'Ahmed',
        lastMessage: Message(
          text: 'Busey now',
          date: '2:00 am',
        ),
        accImage: 'assets/avatar3.jpg'),
    UserModel(
      accName: 'Ahmed',
      lastMessage: Message(
        text: 'nice',
        date: '2:00 am',
      ),
    ),
    UserModel(
        accName: 'Ahmed',
        lastMessage: Message(
          text: 'nice',
          date: '2:00 am',
        ),
        accImage: 'assets/avatar4.jpg'),
    UserModel(
        accName: 'Ahmed',
        lastMessage: Message(
          text: 'nice',
          date: '2:00 am',
        ),
        accImage: 'assets/avatar5.jpg'),
    UserModel(
        accName: 'Ahmed',
        lastMessage: Message(
          text: 'Busey now',
          date: '2:00 am',
        ),
        accImage: 'assets/avatar6.jpg'),
    UserModel(
        accName: 'Ahmed',
        lastMessage: Message(
          text: 'nice',
          date: '2:00 am',
        ),
        accImage: 'assets/avatar7.jpg'),
    UserModel(
      accName: 'Ahmed',
      accImage: 'assets/avatar2.jpg',
      lastMessage: Message(
        text: 'Busey now',
        date: '2:00 am',
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        accImage: 'assets/avatar1.jpg',
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SearchContainer(),
          ),
          StoriesSliverList(models: models),
          ChatsSliverList(models: models)
        ],
      ),
    );
  }

  AppBar myAppBar({String? accImage}) {
    return AppBar(
      title: const Text(
        " Chats",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
      ),
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: CircleAvatar(
          backgroundImage: (accImage == null)
              ? const AssetImage('assets/noPhoto.png')
              : AssetImage(accImage),
        ),
      ),
      actions: const [
        Icon(
          Icons.camera_alt,
          size: 28,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.edit,
          size: 28,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
