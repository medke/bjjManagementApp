part of member_page;

class MemberDetailsPage extends StatefulWidget {
  const MemberDetailsPage({super.key});

  @override
  _MemberDetailsPageState createState() => _MemberDetailsPageState();
}

class _MemberDetailsPageState extends State<MemberDetailsPage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final MemberCubit _memberCubit = MemberCubit();
  String? _selectedAgeGroup;
  List<String> belts = ['White', 'Blue', 'Purple', 'Brown', 'Black'];

  void _handleAgeGroupChange(String? value) {
    setState(() {
      _selectedAgeGroup = value;
    });
    // update bjjBelt dropdown based on age group
    switch (_selectedAgeGroup) {
      case 'kids':
        belts = ['White', 'Grey', 'Yellow', 'Orange', 'Green'];
        break;
      case 'juvenile':
        belts = ['White', 'Blue', 'Purple', 'Brown'];
        break;
      case 'adult':
      case 'master':
      default:
        belts = ['White', 'Blue', 'Purple', 'Brown', 'Black'];
        break;
    }
    _fbKey.currentState?.fields['bjjBelt']?.didChange(belts.first);
    _fbKey.currentState?.fields['bjjBelt']?.setValue(belts.first);
  }

  @override
  Widget build(BuildContext context) {
    print(">>>> $belts");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Details'),
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
                  enabled: false,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderDateTimePicker(
                  name: "membershipStartDate",
                  inputType: InputType.date,
                  decoration: const InputDecoration(labelText: "Membership Start Date"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderDateTimePicker(
                  name: "membershipEndDate",
                  inputType: InputType.date,
                  decoration: const InputDecoration(labelText: "Membership End Date"),
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
                FormBuilderDropdown(
                  name: "bjjBelt",
                  decoration: const InputDecoration(labelText: "BJJ Belt"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                  items: belts
                      .map((belt) => DropdownMenuItem(
                    value: belt,
                    child: Text("$belt Belt"),
                  ))
                      .toList(),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderDateTimePicker(
                  name: "beltObtainedDate",
                  inputType: InputType.date,
                  decoration: const InputDecoration(labelText: "Belt Obtained Date"),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderDateTimePicker(
                  name: "lastPaymentDate",
                  inputType: InputType.date,
                  decoration: const InputDecoration(labelText: "Last Payment Date"),
                  validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FormBuilderDropdown(
                  name: "age_group",
                  decoration: const InputDecoration(labelText: "Select Age Group"),
                  initialValue: "adult",
                  items: const [
                    DropdownMenuItem(
                      value: "kids",
                      child: Text("Kids"),
                    ),
                    DropdownMenuItem(
                      value: "juvenile",
                      child: Text("Juvenile"),
                    ),
                    DropdownMenuItem(
                      value: "adult",
                      child: Text("Adult"),
                    ),
                    DropdownMenuItem(
                      value: "master",
                      child: Text("Master"),
                    ),
                  ],
                  onChanged: _handleAgeGroupChange,
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
                  enabled: false,
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
                        membershipStartDate: _fbKey.currentState?.value['membershipStartDate'],
                        membershipEndDate: _fbKey.currentState?.value['membershipEndDate'],
                        membershipType: _fbKey.currentState?.value['membershipType'],
                        bjjBelt: _fbKey.currentState?.value['bjjBelt'],
                        beltObtainedDate: _fbKey.currentState?.value['beltObtainedDate'],
                        lastPaymentDate: _fbKey.currentState?.value['lastPaymentDate'],
                        ageGroup: _fbKey.currentState?.value['age_group'],
                        phoneNumber: _fbKey.currentState?.value['phone_number'],
                        email: _fbKey.currentState?.value['email'],
                      );
                      _memberCubit.add(member);
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
