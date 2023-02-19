part of signup_page;

class ClubCreatePage extends StatelessWidget {
  ClubCreatePage({super.key});

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClubCreate'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _fbKey,
            child: Column(
              children: [
                FormBuilderImagePicker(
                  name: 'logoUrl',
                  decoration: const InputDecoration(labelText: 'Logo'),
                  maxImages: 1,
                ),
                FormBuilderTextField(
                  name: 'name',
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                FormBuilderTextField(
                  name: 'address',
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_fbKey.currentState?.saveAndValidate() ?? false) {
                      final name = _fbKey.currentState?.fields['name']?.value as String;
                      final address = _fbKey.currentState?.fields['address']?.value as String;
                      final logo = _fbKey.currentState?.fields['logoUrl']?.value as String;
                      final Club club = Club(name: name, address: address, logo: logo);
                      getIt<ClubCubit>().createClub(club);
                      context.goNamed(Routes.home);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
