part of session_page;

class SessionAddPage extends StatelessWidget {
  const SessionAddPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a session')),
      body: BlocListener<SessionCubit, SessionState>(
        listener: (context, state) {
          if (state is SessionAdded) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message.toString())),
            );
            getIt<SessionCubit>().reset();
            context.pop();
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  Text('Add a session on ${daysOfWeek[index]}', style: const TextStyle(fontSize: 24.0)),
                  const SizedBox(height: 16.0),
                  _SessionAddForm(
                    index: index,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SessionAddForm extends StatefulWidget {
  const _SessionAddForm({required this.index});

  final int index;

  @override
  State<_SessionAddForm> createState() => _SessionAddFormState();
}

class _SessionAddFormState extends State<_SessionAddForm> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final TextEditingController _dayIndex = TextEditingController();

  final TextEditingController _typeController = TextEditingController();

  final TextEditingController _instructorController = TextEditingController();

  final TextEditingController _startTimeController = TextEditingController();

  final TextEditingController _endTimeController = TextEditingController();

  SessionLevel _level = SessionLevel.beginner;

  SessionType _type = SessionType.Gi;

  _handleLevelChange(SessionLevel? level) {
    setState(() {
      _level = level ?? _level;
    });
  }

  _handleTypeChange(String? type) {
    setState(() {
      _type = SessionType.fromString(type) ?? _type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: _fbKey,
        initialValue: {
          'level': _level,
          'type': _type.value,
        },
        child: _buildForm(context));
  }

  _buildForm(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: 'instructor',
          controller: _instructorController,
          decoration: const InputDecoration(labelText: 'Instructor'),
        ),
        FormBuilderDropdown(
          name: 'level',
          onChanged: _handleLevelChange,
          items: SessionLevel.values
              .map((level) => DropdownMenuItem(
                    value: level,
                    child: Text(level.name),
                  ))
              .toList(),
          decoration: const InputDecoration(labelText: 'Level'),
        ),
        FormBuilderDropdown(
          name: 'type',
          onChanged: _handleTypeChange,
          items: SessionType.values
              .map((type) => DropdownMenuItem(
                    value: type.value,
                    child: Text(type.name),
                  ))
              .toList(),
          decoration: const InputDecoration(labelText: 'Type'),
          validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
        ),
        // add form builder for day index, which is the list of days of the week, 0-6, Sunday-Saturday,
        // and return an integer value for the day of the week
        FormBuilderChoiceChip(
          name: 'dayIndex',
          options: [
            FormBuilderChipOption(
              value: widget.index,
              child: Text(daysOfWeek[widget.index]),
            ),
          ],
          decoration: const InputDecoration(labelText: 'Day of the week'),
          enabled: false,
        ),
        FormBuilderDateTimePicker(
          name: 'startTime',
          decoration: const InputDecoration(labelText: 'Start Time'),
          controller: _startTimeController,
          inputType: InputType.time,
          format: DateFormat('HH:mm'),
        ),
        FormBuilderDateTimePicker(
          name: 'endTime',
          decoration: const InputDecoration(labelText: 'End Time'),
          controller: _endTimeController,
          inputType: InputType.time,
          format: DateFormat('HH:mm'),
          validator: (value) {
            if (value == null) {
              return 'End time is required';
            }
            // Parse the time from startTimeController
            final startTimeValue = DateFormat('HH:mm').parse(_startTimeController.text);
            // Convert parsed time to DateTime for today's date
            final startDateTime = DateTime(2000, 01, 01, startTimeValue.hour, startTimeValue.minute);
            final endTimeValue = DateTime(2000, 01, 01, value.hour, value.minute);

            final difference = endTimeValue.difference(startDateTime).inMinutes;

            if (difference <= 29) {
              return 'End time should be at least 29 minutes after start time';
            }

            return null;
          },
        ),

        const SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                color: Theme.of(context).primaryColor,
                child: const Text('Submit', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  if (_fbKey.currentState!.saveAndValidate()) {
                    final session = Session(
                      startTime: _startTimeController.text,
                      endTime: _endTimeController.text,
                      instructor: _instructorController.text,
                      type: _type,
                      level: _level,
                      dayIndex: widget.index,
                      id: const Uuid().v4(),
                      clubId: getIt<MemberCubit>().state.member!.clubId!,
                    );
                    getIt<SessionCubit>().addSession(session);
                  }
                },
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: MaterialButton(
                color: Theme.of(context).primaryColor,
                child: const Text('Reset', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  _fbKey.currentState!.reset();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
