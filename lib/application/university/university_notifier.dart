part of 'university_provider.dart';

class UniversityNotifier extends StateNotifier<UniversityState> {
  UniversityNotifier(this.mainFacade) : super(const UniversityState());
  final MainFacade mainFacade;

  getInfo(String name) async {
    state = state.copyWith(isLoading: true);
    var univer=  await mainFacade.getInfo(name: name);
    state = state.copyWith(
      listOfUniversity:univer,
      isLoading: false,
    );
  }
}
