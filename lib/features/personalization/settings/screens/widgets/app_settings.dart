import 'package:flutter/material.dart';
import 'package:r_store/core/components/list_tiles/settings_menu_tile.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_icons.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/spacing.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySectionHeading(
          title: MyStrings.appSettings,
        ),
        verticalSpace(16),
        SettingsMenuTile(
          image: MyIcons.uploading,
          title: MyStrings.loadDataTitle,
          subtitle: MyStrings.loadDataSubtitle,
        ),
        SettingsMenuTile(
          image: MyIcons.placeholder,
          title: MyStrings.geolocationTitle,
          subtitle: MyStrings.geolocationSubtitle,
          trailing: Switch(
            value: true,
            onChanged: (value) {},
          ),
        ),
        SettingsMenuTile(
          image: MyIcons.safeMode,
          title: MyStrings.safeModeTitle,
          subtitle: MyStrings.safeModeSubtitle,
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        SettingsMenuTile(
          image: MyIcons.image,
          title: MyStrings.imageQualityTitle,
          subtitle: MyStrings.imageQualitySubtitle,
          trailing: Switch(
            value: true,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
