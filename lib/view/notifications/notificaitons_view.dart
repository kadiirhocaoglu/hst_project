import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/view_models/controllers/notifications/notifications_view_model.dart';

class NotificaitonsView extends GetView<NotificationsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bildirimler"), ),
        body:ListView(
            children: [
              ListTile(
                title: Text("Ödeme Gerçekleşti"),
                subtitle:
                    Text("Hasan Ulubatlı kişisi tarafından yapılan ödeme ulaştı."),
              ),
              ListTile(
                title: Text("Ödeme Gerçekleşti"),
                subtitle:
                    Text("Hasan Ulubatlı kişisi tarafından yapılan ödeme ulaştı."),
              ),
              ListTile(
                title: Text("Ödeme Gerçekleşti"),
                subtitle:
                    Text("Hasan Ulubatlı kişisi tarafından yapılan ödeme ulaştı."),
              ),
              ListTile(
                title: Text("Ödeme Gerçekleşti"),
                subtitle:
                    Text("Hasan Ulubatlı kişisi tarafından yapılan ödeme ulaştı."),
              ),
            ],
        )
    );
  }
}
