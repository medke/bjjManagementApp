part of signup_page;

class MemberSignupPage extends StatefulWidget {
  const MemberSignupPage({super.key});

  @override
  _MemberSignupPageState createState() => _MemberSignupPageState();
}

class _MemberSignupPageState extends State<MemberSignupPage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final MemberCubit _memberCubit = MemberCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _fbKey,
            child: Column(
              children: <Widget>[
                FormBuilderTextField(
                  name: "name",
                  decoration: const InputDecoration(labelText: "Name"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderTextField(
                  name: "membershipType",
                  decoration: const InputDecoration(labelText: "Membership Type"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderTextField(
                  name: "phone_number",
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.maxLength(10),
                  ]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderTextField(
                  name: "email",
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: "Email"),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.email(),
                      FormBuilderValidators.required(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderTextField(
                  name: "password",
                  obscureText: true,
                  decoration: const InputDecoration(labelText: "Password"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderTextField(
                  name: "repeatPassword",
                  obscureText: true,
                  decoration: const InputDecoration(labelText: "Repeat Password"),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    (val) {
                      if (val != _fbKey.currentState?.fields['password']?.value) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  child: const Text('Save'),
                  onPressed: () {
                    if (_fbKey.currentState!.saveAndValidate()) {
                      final Member member = Member(
                        name: _fbKey.currentState?.value['name'],
                        membershipType: _fbKey.currentState?.value['membershipType'],
                        phoneNumber: _fbKey.currentState?.value['phone_number'],
                        email: _fbKey.currentState?.value['email'],
                        password: _fbKey.currentState?.value['password'],
                      );
                      _memberCubit.signup(member: member);
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
