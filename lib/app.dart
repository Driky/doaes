import 'package:doaes/core/author.dart';
import 'package:doaes/layout/post_layout.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

const data = """
# doaes

A new jaspr project.

## Prerequisites

Make sure you have the Jaspr CLI installer, if you don't use the following:

```bash
dart pub global activate jaspr_cli
```

## Running the project

Run your project using `jaspr serve`.

The development server will be available on `http://localhost:8080`.

## Building the project

Build your project using `jaspr build`.

The output will be located inside the `build/jaspr/` directory.

## Architecture

Started to implement [this template](https://github.com/timlrx/tailwind-nextjs-starter-blog).
""";

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // This method is rerun every time the component is rebuilt.
    //
    // Each build method can return multiple child components as an [Iterable]. The recommended approach
    // is using the [sync* / yield] syntax for a streamlined control flow, but its also possible to simply
    // create and return a [List] here.

    // Renders a <div class="main"> html element with children.
    yield div(classes: 'main', [
      const Header(),
      Router(routes: [
        Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
        Route(path: '/about', title: 'About', builder: (context, state) => const About()),
        Route(path: '/post', title: 'Post', builder: (context, state) => PostLayout(content: data, tags: ['Alpha', 'test'], date: DateTime.now(), title: 'Un titre d\'article', authors: [Author(name: 'Driky', occupation: 'blog magician', email: 'email@email.com',),],),),
      ]),
    ]);
  }

  // Defines the css styles for elements of this component.
  //
  // By using the @css annotation, these will be rendered automatically to css inside the <head> of your page.
  // Must be a variable or getter of type [List<StyleRule>].
  @css
  static final styles = [
    css('.main', [
      // The '&' refers to the parent selector of a nested style rules.
      css('&').box(height: 100.vh).flexbox(direction: FlexDirection.column, wrap: FlexWrap.wrap),
      css('section').flexItem(flex: Flex(grow: 1)).flexbox(
        direction: FlexDirection.column,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
    ]),
  ];
}
