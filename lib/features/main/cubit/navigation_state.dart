part of 'navigation_cubit.dart';

class NavigationState extends Equatable {
  const NavigationState({
    required this.title,
    required this.viewIndex,
    required this.activeWidget,
  });

  final String title;
  final int viewIndex;
  final Widget activeWidget;

  @override
  List<Object> get props => [title, viewIndex, activeWidget];
}
