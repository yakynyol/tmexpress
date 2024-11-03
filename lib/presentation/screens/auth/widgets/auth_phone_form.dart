import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../app/generated/l10n.dart';
import '../../../utils/app_validator.dart';
import '../../../widgets/app_button.dart';
import '../bloc/auth_bloc.dart';

class AuthPhoneForm extends StatefulWidget {
  const AuthPhoneForm(this.state, {super.key});

  final AuthState state;

  @override
  State<AuthPhoneForm> createState() => _AuthPhoneFormState();
}

class _AuthPhoneFormState extends State<AuthPhoneForm> {
  late TextEditingController _phoneC;
  late TextEditingController _referrerC;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _phoneC = TextEditingController();
    _referrerC = TextEditingController();
  }

  @override
  void dispose() {
    _phoneC.dispose();
    _referrerC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _phoneC,
            validator: AppValidator.phone,
            onFieldSubmitted: (_) => _submit(),
            inputFormatters: [MaskTextInputFormatter(mask: '## ######')],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text(S.current.phone),
              prefix: const Text('+993 '),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _referrerC,
            onFieldSubmitted: (_) => _submit(),
            inputFormatters: [MaskTextInputFormatter(mask: '## ######')],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text(S.current.referrersPhone),
              prefix: const Text('+993 '),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
          const SizedBox(height: 16),
          AppButton(
            label: S.current.sendSms,
            onPressed: _submit,
            type: ButtonType.black,
          ),
        ],
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
          AuthSMSSignInStarted(phone: _phoneC.text, referrer: _referrerC.text));
    }
  }
}
