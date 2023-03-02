library member_details;

import 'package:bjj_members_management/features/member/member.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';

part 'member_details_cubit.dart';

part 'member_details_state.dart';
