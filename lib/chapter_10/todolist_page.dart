//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:junsuk5fluuterbasic/chapter_10/todo.dart';
/*
* 3월에 만든 코드여서 현재 버전과 다르며
* 파이어 베이스 해당 프로젝트를 삭제하여
* 현재는 작동하지않음
*/

//class TodoListPage extends StatefulWidget {
//  @override
//  _TodoListPageState createState() => _TodoListPageState();
//}
//
//class _TodoListPageState extends State<TodoListPage> {
//  //할 일 문자열 조작을 위한 컨트롤러
//  var _todoController = TextEditingController();
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    _todoController.dispose(); // 사용 끝나면 닫기
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('남은 할 일'),
//      ),
//      body: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Column(
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Expanded(
//                    child: TextField(
//                  controller: _todoController,
//                )),
//                RaisedButton(
//                  onPressed: () => _addTodo(Todo(_todoController.text)),
//                  child: Text("추가"),
//                )
//              ],
//            ),
//            StreamBuilder<QuerySnapshot>(
//                stream: Firestore.instance.collection('todo').snapshots(),
//                builder: (context, snapshot) {
//                  if (!snapshot.hasData) return CircularProgressIndicator();
//
//                  final documents = snapshot.data.documents;
//
//                  return Expanded(
//                    child: ListView(
//                      children:
//                          documents.map((doc) => _buildListTile(doc)).toList(),
//                    ),
//                  );
//                })
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget _buildListTile(DocumentSnapshot doc) {
//    final todo = Todo(doc['title'], isDone: doc['isDone']);
//
//    return ListTile(
//      onTap: () => _toggleTodo(doc),
//      title: Text(
//        todo.title,
//        style: (todo.isDone)
//            ? TextStyle(decoration: TextDecoration.lineThrough)
//            : null,
//      ),
//      trailing: IconButton(
//        icon: Icon(Icons.delete_forever),
//        onPressed: () => _deleteTodo(doc),
//      ),
//    );
//  }
//
//  void _addTodo(Todo todo) {
//    Firestore.instance
//        .collection('todo')
//        .add({'title': todo.title, 'isDone': todo.isDone});
//    _todoController.text = '';
//  }
//
//  void _deleteTodo(DocumentSnapshot doc) {
//    Firestore.instance.collection('todo').document(doc.documentID).delete();
//  }
//
//  void _toggleTodo(DocumentSnapshot doc) {
//    Firestore.instance
//        .collection('todo')
//        .document(doc.documentID)
//        .updateData({'isDone': !doc['isDone']});
//  }
//}
