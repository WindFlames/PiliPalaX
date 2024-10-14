import 'package:PiliPalaX/common/widgets/network_img_layer.dart';
import 'package:PiliPalaX/pages/collect/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CollectPage extends StatelessWidget {
  const CollectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CollectController collectController = Get.put(CollectController());
    final TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;
    final TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          '收藏UP',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: collectController.collectedList.list == null
          ? ListView(
              children: [
                for (var i in collectController.collectedList.list!) ...[
                  ListTile(
                    onTap: () => Get.toNamed('/member?mid=${i.mid!}',
                        parameters: {"heroTag": i.heroTag ?? ""}),
                    dense: false,
                    leading: NetworkImgLayer(
                      width: 19,
                      height: 19,
                      type: 'avatar',
                      src: i.face!,
                    ),
                    title: Text(i.nickname!, style: titleStyle),
                    subtitle:
                        Text((i.mid ?? 0).toString(), style: subTitleStyle),
                  ),
                ]
              ],
            )
          : const Text("没有收藏的UP"),
    );
  }
}
