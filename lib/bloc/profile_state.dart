part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class ProfileInitial extends ProfileState {
  final TalentProfileModel profile;
  ProfileInitial({this.profile});
  @override
  List<Object> get props => [profile];
}

class TalentProfileState extends ProfileState {
  final TalentProfileModel profile;
  TalentProfileState({this.profile});
  @override
  List<Object> get props => [profile];
}
