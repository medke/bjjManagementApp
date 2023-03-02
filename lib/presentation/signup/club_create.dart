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
      body: BlocConsumer<ClubCubit, ClubState>(
        listener: (context, state) {
          if (state is ClubCreatedSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('BJJ club created successfully')),
            );
            context.goNamed(Routes.home);
          } else if (state is ClubCreatedError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Failed to create BJJ club : ${state.error}')),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
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
                          final logo = _fbKey.currentState?.fields['logoUrl']?.value as String?;
                          final Member admin = getIt<MemberCubit>().state.member!;
                          final Club club = Club(
                            id: const Uuid().v4(),
                            name: name,
                            address: address,
                            logo: logo,
                            adminId: admin.id!,
                          );
                          getIt<ClubCubit>().createClub(
                            club: club,
                            admin: admin,
                          );
                          context.goNamed(Routes.home);
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
