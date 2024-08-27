import 'package:jaspr/jaspr.dart';

class SectionContainer extends StatelessComponent {
  const SectionContainer({this.children = const [], super.key});
  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(
        classes: 'mx-auto max-w-3xl px-4 sm:px-6 xl:max-w-5xl xl:px-0',
        [...children]);
  }
}
