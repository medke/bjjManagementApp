library member_page;

import 'dart:math';

import 'package:bjj_members_management/di/di.dart';
import 'package:bjj_members_management/features/features.dart';
import 'package:bjj_members_management/presentation/presentation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

part 'member_details.dart';

part 'members_page.dart';
