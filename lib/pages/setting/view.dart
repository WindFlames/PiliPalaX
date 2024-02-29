import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PiliPalaX/pages/setting/index.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingController settingController = Get.put(SettingController());
    final TextStyle subTitleStyle = Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(color: Theme.of(context).colorScheme.outline);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          '设置',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () => Get.toNamed('/privacySetting'),
            dense: false,
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('隐私设置'),
            subtitle: Text('黑名单、access_key刷新、无痕模式', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/recommendSetting'),
            dense: false,
            leading: const Icon(Icons.grid_view_outlined),
            title: const Text('推荐流设置'),
            subtitle: Text('推荐来源（web/app）、刷新保留内容、过滤器', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/playSetting'),
            leading: const Icon(Icons.play_arrow_outlined),
            dense: false,
            title: const Text('播放设置'),
            subtitle: Text('弹幕、播放器行为与手势、画质、音质、解码、底部进度条等', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/styleSetting'),
            leading: const Icon(Icons.style_outlined),
            dense: false,
            title: const Text('外观设置'),
            subtitle: Text('横屏适配、列宽、首页、主题、字号、图片、动态红点、帧率等', style: subTitleStyle),
          ),
          ListTile(
            onTap: () => Get.toNamed('/extraSetting'),
            leading: const Icon(Icons.extension_outlined),
            dense: false,
            title: const Text('其他设置'),
            subtitle: Text('震动、搜索、收藏、ai、评论、动态、代理、更新检查等', style: subTitleStyle),
          ),
          Obx(
            () => Visibility(
              visible: settingController.hiddenSettingUnlocked.value,
              child: ListTile(
                leading: const Icon(Icons.developer_mode_outlined),
                onTap: () => Get.toNamed('/hiddenSetting'),
                dense: false,
                title: const Text('开发人员选项'),
              ),
            ),
          ),
          Obx(
            () => Visibility(
              visible: settingController.userLogin.value,
              child: ListTile(
                leading: const Icon(Icons.logout_outlined),
                onTap: () => settingController.loginOut(),
                dense: false,
                title: const Text('退出登录'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            onTap: () => Get.toNamed('/about'),
            dense: false,
            title: const Text('关于'),
          ),
        ],
      ),
    );
  }
}
