import 'package:jaspr/jaspr.dart';

class PageTitle extends StatelessComponent {
  final List<Component> children;

  PageTitle({super.key, required this.children});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h1(
      classes:
          'text-3xl font-extrabold leading-9 tracking-tight text-gray-900 dark:text-gray-100 sm:text-4xl sm:leading-10 md:text-5xl md:leading-14',
      [...children],
    );
  }
}
