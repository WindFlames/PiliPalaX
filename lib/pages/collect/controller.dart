import 'package:PiliPalaX/models/collect/collectUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:PiliPalaX/http/init.dart';
import 'package:PiliPalaX/models/common/theme_type.dart';
import 'package:PiliPalaX/utils/feed_back.dart';
import 'package:PiliPalaX/utils/login.dart';
import 'package:PiliPalaX/utils/storage.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../models/common/dynamic_badge_mode.dart';
import '../../models/common/nav_bar_config.dart';
import '../main/index.dart';

class CollectController extends GetxController {
  Box collectUp = GStorage.collectUp;
  late CollectUpModel collectedList;
  @override
  void onInit() {
    super.onInit();

    collectedList = collectUp.get('collectedUps');
  }
}
