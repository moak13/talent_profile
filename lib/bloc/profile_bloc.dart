import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/talent_profile_model.dart';
import '../data/talent_profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is GetProfile) {
      yield* _generateProfile(event);
    }
  }

  Stream<ProfileState> _generateProfile(GetProfile event) async* {
    var profile = await TalentProfileModel.load();
    yield TalentProfileState(profile: profile);
  }

  @override
  // TODO: implement initialState
  ProfileState get initialState => ProfileInitial();
}
