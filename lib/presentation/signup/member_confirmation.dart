part of signup_page;

class MemberConfirmation extends StatelessWidget {
  MemberConfirmation({super.key});

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Confirmation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _fbKey,
            child: Column(
              children: <Widget>[
                FormBuilderTextField(
                  name: "invitation_code",
                  decoration: const InputDecoration(labelText: "invitation_code"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  child: const Text('Save'),
                  onPressed: () {
                    if (_fbKey.currentState!.saveAndValidate()) {
                      // getIt<MemberCubit>().confirm(inviteCode: _fbKey.currentState?.value['invitation_code']).then(
                      //   (value) {
                      //     if (value) {
                      //       context.goNamed(Routes.home);
                      //     } else {
                      //       ScaffoldMessenger.of(context).showSnackBar(
                      //         const SnackBar(
                      //           content: Text("Error: Invitation Code is Wrong"),
                      //         ),
                      //       );
                      //     }
                      //   },
                      // );
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
