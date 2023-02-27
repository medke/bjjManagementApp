library member;

import 'dart:math';

import 'package:bjj_members_management/data/mappers/mapper.dart';
import 'package:bjj_members_management/di/di.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_cubit.dart';

part 'member_state.dart';

part 'models/member.dart';

part 'member.g.dart';

part 'member.freezed.dart';
