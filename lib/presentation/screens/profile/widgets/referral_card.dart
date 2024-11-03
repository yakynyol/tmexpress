import 'package:flutter/material.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/profile.dart';
import '../../../theme/app_theme.dart';

import '../../../widgets/app_confirm_dialog.dart';
import '../../../widgets/card_wrapper.dart';

class ReferralCard extends StatelessWidget {
  const ReferralCard(this.profile, {super.key});
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.fromLTRB(20, 20, 20, 10);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CardWrapper(
            padding: padding,
            child: _referralItem(context, S.current.referralUsers,
                '${profile.referralCount} ${S.current.count}'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: CardWrapper(
            padding: padding,
            child: _referralItem(context, S.current.referralEarning,
                '${profile.referralEarning.toStringAsFixed(2)} m.'),
          ),
        )
      ],
    );
  }

  Column _referralItem(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.grey14),
        Text(content, style: AppTextStyle.bold24),
        Center(
          child: TextButton(
            onPressed: () => showDialog<void>(
              context: context,
              builder: (_) => _aboutReferralItem(title),
            ),
            child: Text(S.current.whatIsThis, style: AppTextStyle.grey14),
            style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
          ),
        )
      ],
    );
  }

  Widget _aboutReferralItem(String title) => AppDialog(
        title: title,
        content: title == S.current.referralUsers
            ? S.current.referralUsersDescription
            : S.current.referralEarningDescription,
        showNegativeButton: false,
        positiveButtonLabel: S.current.ok,
      );
}
