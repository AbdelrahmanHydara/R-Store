import 'package:flutter/material.dart';
import 'package:r_store/core/components/list_tiles/settings_menu_tile.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/constants/my_icons.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/routing/routes.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySectionHeading(
          title: MyStrings.settingsBodyTitle,
        ),
        verticalSpace(16),
        SettingsMenuTile(
          image: MyIcons.myAddress,
          title: MyStrings.myAddressesTitle,
          subtitle: MyStrings.myAddressesSubtitle,
          onTap: () {
            context.pushNamed(Routes.userAddressScreen);
          },
        ),
        SettingsMenuTile(
          image:  MyIcons.myCart,
          title: MyStrings.myCartTitle,
          subtitle: MyStrings.myCartSubtitle,
        ),
        SettingsMenuTile(
          image:  MyIcons.myOrder,
          title: MyStrings.myOrdersTitle,
          subtitle: MyStrings.myOrdersSubtitle,
          onTap: () {
            context.pushNamed(Routes.orderScreen);
          },
        ),
        SettingsMenuTile(
          image:  MyIcons.myBank,
          title: MyStrings.bankAccountTitle,
          subtitle: MyStrings.bankAccountSubtitle,
        ),
        SettingsMenuTile(
          image:  MyIcons.myCoupons,
          title: MyStrings.myCouponsTitle,
          subtitle: MyStrings.myCouponsSubtitle,
        ),
        SettingsMenuTile(
          image:  MyIcons.notifications,
          title: MyStrings.notificationsTitle,
          subtitle: MyStrings.notificationsSubtitle,
        ),
        SettingsMenuTile(
          image:  MyIcons.accountSecurity,
          title: MyStrings.accountPrivacyTitle,
          subtitle: MyStrings.accountPrivacySubtitle,
        ),
        verticalSpace(32),
      ],
    );
  }
}
