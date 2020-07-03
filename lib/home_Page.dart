import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Instakilogram',
          style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),
        ),
      ),
      body:_buildBody() ,
    );
  }

Widget  _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(child:
      SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Instakilogram에 오신 것을 환영합니다.',
                style: TextStyle(fontSize: 24.0),),
              Padding(padding: EdgeInsets.all(8.0),),
              Text('사진과 동영상을 보려면 팔로우하세요',),
              Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 2.0,
                  child: Column(

                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8.0),),
                      SizedBox(
                      width:80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://lh3.googleusercontent.com/proxy/c_J6pAE1FVsSjcMRMT8cJBqQw-Wvai_hA_1mD5bHz9KySqWO69IbGJgMia3XuVnfyJB_DgzA5yty0DmCABKVPtHH86QZex45HwJhbnivDbi-wd0Jw5pU09oVu19KvVM'),
                    ),
                  ),
                      Padding(padding: EdgeInsets.all(8.0),),
                      Text('이메일 주소',style: TextStyle(fontWeight: FontWeight.bold  ),),
                      Text('이름'),
                      Padding(padding: EdgeInsets.all(8.0),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network('https://img4.yna.co.kr/photo/cms/2019/05/02/02/PCM20190502000402370_P2.jpg', fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(2.0),),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network('https://img4.yna.co.kr/photo/cms/2019/05/02/02/PCM20190502000402370_P2.jpg', fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(2.0),),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network('https://img4.yna.co.kr/photo/cms/2019/05/02/02/PCM20190502000402370_P2.jpg', fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(4.0),),
                      Text('Facebook 친구'),
                      Padding(padding: EdgeInsets.all(4.0),),
                      RaisedButton(
                        child: Text('팔로우'),
                        onPressed: (){},
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                      ),
                  Padding(padding: EdgeInsets.all(8.0),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
}
}
