import 'package:jaspr/server.dart';
import 'dart:html' as html;

class ScrollTopAndCOmment extends StatelessComponent {
  final bool show;
  final bool withComments;
  final bool withToTop;

  ScrollTopAndCOmment({
    super.key,
    required this.show,
    required this.withComments,
    required this.withToTop,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes:
          'fixed bottom-8 right-8 hidden flex-col gap-3 ${show ? 'md:flex' : 'md:hidden'}',
      [
        if (withComments)
          button(
            attributes: {
              'aria-label': 'Scroll To Comment',
            },
            onClick: () => html.querySelector('comment')?.scrollIntoView(),
            [
              svg(classes: 'h-5 w-5', viewBox: '0 0 20 20', attributes: {
                'fill': 'currentColor',
              }, [
                path(
                  attributes: {
                    'fillRule': 'evenodd',
                    'clipRule': 'evenodd',
                  },
                  d: 'M18 10c0 3.866-3.582 7-8 7a8.841 8.841 0 01-4.083-.98L2 17l1.338-3.123C2.493 12.767 2 11.434 2 10c0-3.866 3.582-7 8-7s8 3.134 8 7zM7 9H5v2h2V9zm8 0h-2v2h2V9zM9 9h2v2H9V9z',
                  [],
                ),
              ]),
            ],
          ),
        if (withToTop)
          button(
            attributes: {
              'aria-label': 'Scroll To Top',
            },
            onClick: () => html.window.scrollTo(0),
            [
              svg(classes: 'h-5 w-5', viewBox: '0 0 20 20', attributes: {
                'fill': 'currentColor',
              }, [
                path(
                  attributes: {
                    'fillRule': 'evenodd',
                    'clipRule': 'evenodd',
                  },
                  d: 'M3.293 9.707a1 1 0 010-1.414l6-6a1 1 0 011.414 0l6 6a1 1 0 01-1.414 1.414L11 5.414V17a1 1 0 11-2 0V5.414L4.707 9.707a1 1 0 01-1.414 0z',
                  [],
                ),
              ]),
            ],
          )
      ],
    );
  }
}
