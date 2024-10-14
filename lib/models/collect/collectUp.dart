import 'package:hive/hive.dart';

part 'collectUp.g.dart';

@HiveType(typeId: 50)
class CollectUpModel {
  CollectUpModel({
    this.list,
  });

  @HiveField(0)
  List<CollectUpItem>? list;

  CollectUpModel.fromJson(Map<String, dynamic> json) {
    list = json['list']
        .map<CollectUpItem>((e) => CollectUpItem.fromJson(e))
        .toList();
  }
}

@HiveType(typeId: 51)
class CollectUpItem {
  CollectUpItem({this.mid, this.heroTag, this.face, this.nickname});

  @HiveField(0)
  int? mid;
  @HiveField(1)
  String? heroTag;
  @HiveField(2)
  String? face;
  @HiveField(3)
  String? nickname;

  CollectUpItem.fromJson(Map<String, dynamic> json) {
    mid = json['mid'];
    heroTag = json['heroTag'];
    face = json['word_typfacee'];
    nickname = json['nickname'];
  }
}
