import 'package:flutter/material.dart';
import 'package:flutter_explore_freezed/model_with_freezed/dart/user_model.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  _FruitListScreenState createState() => _FruitListScreenState();
}

class _FruitListScreenState extends State<UserListScreen> {
  late List<UserModel> userModel = [];

  @override
  void initState() {
    userModel
      ..add(UserModel(
          firstName: 'Leanne',
          lastName: 'Graham',
          emailId: 'Sincere@april.biz',
          isActive: false))
      ..add(UserModel(
          firstName: 'Ervin',
          lastName: 'Howell',
          emailId: 'Shanna@melissa.tv',
          isActive: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Freezed Example"),
        ),
        body: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: userModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(userModel[index].firstName + " " + userModel[index].lastName),
                      subtitle: Text(userModel[index].emailId),
                      trailing: Transform.scale(
                          scale: 1,
                          child: Switch(
                            onChanged: (val) {
                              _updateActiveUser(index);
                            },
                            value: userModel[index].isActive,
                            activeColor: Colors.blue,
                            activeTrackColor: Colors.grey.shade700,
                            inactiveThumbColor: Colors.white12,
                            inactiveTrackColor: Colors.grey.shade700,
                          )),
                    ),
                  );
                }),
          ],
        ));
  }

  void _updateActiveUser(int index) {
    // userModel[index].isActive = false;
    userModel[index] = userModel[index].copyWith(
        isActive: !userModel[index].isActive);
    setState(() {});
  }
}
