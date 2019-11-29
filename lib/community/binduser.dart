import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bindhouse.dart';

class BindUser extends StatefulWidget {
  @override
  _BindUserState createState() => _BindUserState();

  const BindUser({Key key}) : super(key: key);
  static const String routeName = '/binduser';
}

class _BindUserState extends State<BindUser> {
  @override
  Widget build(BuildContext context) {
    BorderSide _outBorderSide = BorderSide(color: Colors.grey[500], width: 0);
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          '绑定账号',
          style:
              new TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: new Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: new Container(
          height: 400.0,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.white10,
            border: Border(
              left: _outBorderSide,
              right: _outBorderSide,
              top: _outBorderSide,
              bottom: _outBorderSide,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _usernameWidget(),
              _passwordWidget(),
              _phoneWidget(),
              _smsCodeWidget(),
              const SizedBox(
                height: 20.0,
              ),
              _bindUserButton(context),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * 账号输入框
   */
  Widget _usernameWidget() {
    return new Row(
      children: <Widget>[
        new Text(
          '用户名：',
          style: new TextStyle(
              fontSize: 16, color: Colors.teal, fontWeight: FontWeight.w500),
        ),
        new Expanded(
          child: new TextField(
            decoration: InputDecoration(
//              border: OutlineInputBorder(),
//              hintText: '请输入账号',
//              prefixIcon: Icon(Icons.person),
              hintText: '请输入用户名',
              hintStyle: new TextStyle(fontSize: 14, color: Colors.grey[400]),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * 密码输入框
   */
  Widget _passwordWidget() {
    return new Row(
      children: <Widget>[
        new Text(
          '密    码：',
          style: new TextStyle(
              fontSize: 16, color: Colors.teal, fontWeight: FontWeight.w500),
        ),
        new Expanded(
          child: new TextField(
            decoration: InputDecoration(
//              border: OutlineInputBorder(),
              hintText: '请输入密码',
              hintStyle: new TextStyle(fontSize: 14, color: Colors.grey[400]),
//              labelText: '',
//              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * 手机输入框
   */
  Widget _phoneWidget() {
    return new Row(
      children: <Widget>[
        new Text(
          '手    机：',
          style: new TextStyle(
              fontSize: 16, color: Colors.teal, fontWeight: FontWeight.w500),
        ),
        new Expanded(
          child: new TextField(
            decoration: InputDecoration(
//              border: OutlineInputBorder(),
              hintText: '请输入手机号',
              hintStyle: new TextStyle(fontSize: 14, color: Colors.grey[400]),
//              labelText: '',
//              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        new MaterialButton(
          minWidth: 110.0,
          color: Colors.teal,
          onPressed: () {},
          child: new Text(
            '发送验证码',
            style: new TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * 验证码输入框
   */
  Widget _smsCodeWidget() {
    return new Row(
      children: <Widget>[
        new Text(
          '验证码：',
          style: new TextStyle(
              fontSize: 16, color: Colors.teal, fontWeight: FontWeight.w500),
        ),
        new Expanded(
          child: new TextField(
            decoration: InputDecoration(
//              border: OutlineInputBorder(),
              hintText: '请输入验证码',
              hintStyle: new TextStyle(fontSize: 14, color: Colors.grey[400]),
//              labelText: '',
//              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: slash_for_doc_comments
  /**
   * 绑定用户按钮
   */
  Widget _bindUserButton(BuildContext context) {
    return new MaterialButton(
      minWidth: double.infinity,
      height: 50.0,
      color: Colors.teal,
      textColor: Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, BindHouse.routeName);
      },
      child: Text(
        "绑定",
        style: new TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
