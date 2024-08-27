import 'package:jaspr/jaspr.dart';

Component dl(List<Component> children,
    {Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events}) {
  return DomComponent(
    tag: 'dl',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component dt(List<Component> children,
    {Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events}) {
  return DomComponent(
    tag: 'dl',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component dd(List<Component> children,
    {Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events}) {
  return DomComponent(
    tag: 'dd',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component time(List<Component> children,
    {String? dateTime,
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events}) {
  return DomComponent(
    tag: 'time',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: {
      ...attributes ?? {},
      if (dateTime != null) 'dateTime': dateTime,
    },
    events: events,
    children: children,
  );
}
