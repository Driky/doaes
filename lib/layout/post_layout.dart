import 'package:doaes/components/missing_html_components.dart';
import 'package:doaes/components/page_title.dart';
import 'package:doaes/core/author.dart';
import 'package:jaspr/jaspr.dart';

class PostLayout extends StatelessComponent {
  final DateTime date;
  final String title;
  final List<Author> authors;
  final List<Component> children;
  final List<String> tags;

  PostLayout({
    super.key,
    required this.date,
    required this.title,
    this.authors = const [],
    this.children = const [],
    this.tags = const [],
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield article(
      [
        div(
          classes: 'xl:divide-y xl:divide-gray-200 xl:dark:divide-gray-700',
          [
            header(
              classes: 'pt-6 xl:pb-6',
              [
                div(
                  classes: 'space-y-1 text-center',
                  [
                    dl(
                      classes: 'space-y-10',
                      [
                        div(
                          [
                            dt(
                              classes: 'sr-only',
                              [
                                dd(
                                  classes:
                                      'text-base font-medium leading-6 text-gray-500 dark:text-gray-400',
                                  [
                                    time(
                                      dateTime: date.toIso8601String(),
                                      [
                                        text(date.toString()),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    div(
                      [
                        PageTitle(
                          children: [text(title)],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ), // header
            div(
              classes:
                  'grid-rows-[auto_1fr] divide-y divide-gray-200 pb-8 dark:divide-gray-700 xl:grid xl:grid-cols-4 xl:gap-x-6 xl:divide-y-0',
              [
                dl(
                  classes:
                      'pb-10 pt-6 xl:border-b xl:border-gray-200 xl:pt-11 xl:dark:border-gray-700',
                  [
                    dt(classes: 'sr-only', [
                      text('Authors'),
                    ]),
                    dd([
                      ul(
                        classes:
                            'flex flex-wrap justify-center gap-4 sm:space-x-12 xl:block xl:space-x-0 xl:space-y-8',
                        [
                          //////
                          for (final author in authors)
                            li(
                              classes: 'flex items-center space-x-2',
                              attributes: {'key': author.name},
                              key: Key(author.name),
                              [
                                img(
                                  classes: 'h-10 w-10 rounded-full',
                                  attributes: {'alt': 'avatar'},
                                  src: author.avatar,
                                  width: 38,
                                  height: 38,
                                ),
                                dl(
                                  classes:
                                      'whitespace-nowrap text-sm font-medium leading-5',
                                  [
                                    dt(classes: 'sr-only', [text('Name')]),
                                    dd(
                                        classes:
                                            'text-gray-900 dark:text-gray-100',
                                        [text(author.name)]),
                                  ],
                                )
                              ],
                            )
                        ],
                      )
                    ]),
                  ],
                ),
                div(
                  classes:
                      'divide-y divide-gray-200 dark:divide-gray-700 xl:col-span-3 xl:row-span-2 xl:pb-0',
                  [
                    div(
                      classes: 'prose max-w-none pb-8 pt-10 dark:prose-invert',
                      children,
                    ),
                    // Todo: put comments here
                  ],
                ),
                footer(
                  [
                    div(
                      classes:
                          'divide-gray-200 text-sm font-medium leading-5 dark:divide-gray-700 xl:col-start-1 xl:row-start-2 xl:divide-y',
                      [
                        if (tags.isNotEmpty)
                          div(
                            classes: 'py-4 xl:py-8',
                            [
                              h2(
                                classes:
                                    'text-xs uppercase tracking-wide text-gray-500 dark:text-gray-400',
                                [text('Tags')],
                              ),
                              div(
                                classes: 'flex flex-wrap',
                                [],
                              )
                            ],
                          )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
