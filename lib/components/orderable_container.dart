import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './orderable_stack.dart';
import './orderable.dart';

/// internal stack
class OrderableContainer extends StatefulWidget {
  final List<OrderableWidget> uiItems;

  Size itemSize;
  OrderItDirection direction;
  final double margin;

  OrderableContainer(
      {@required this.uiItems,
      @required this.itemSize,
      this.margin = kMargin,
      this.direction = OrderItDirection.Horizontal})
      : super(key: new Key('OrderableContainer'));

  @override
  State<StatefulWidget> createState() => new OrderableContainerState();
}

class OrderableContainerState extends State<OrderableContainer> {
  @override
  Widget build(BuildContext context) => new ConstrainedBox(
      constraints: new BoxConstraints.loose(stackSize),
      child: new Stack(
        children: widget.uiItems,
      ));

  Size get stackSize => widget.direction == OrderItDirection.Horizontal
      ? new Size(
          (widget.itemSize.width + widget.margin) * widget.uiItems.length,
          widget.itemSize.height)
      : new Size(widget.itemSize.width,
          (widget.itemSize.height + widget.margin) * widget.uiItems.length);
}

/// Content Widget wrapper : add animation and gestureDetection to itemBuilder
/// widgets
class OrderableWidget<T> extends StatefulWidget {
  final Orderable<T> data;
  Size itemSize;
  double maxPos;
  OrderItDirection direction;
  bool isRotated;
  VoidCallback onMove;
  VoidCallback onDrop;
  double step;
  final WidgetFactory itemBuilder;

  OrderableWidget(
      {Key key,
      @required this.data,
      @required this.itemBuilder,
      @required this.maxPos,
      @required this.itemSize,
      this.onMove,
      this.onDrop,
      bool isDragged = false,
      this.isRotated = false,
      this.direction = OrderItDirection.Horizontal,
      this.step = 0.0})
      : super(key: key) {}
  @override
  State<StatefulWidget> createState() => new OrderableWidgetState(data: data);

  @override
  String toString({DiagnosticLevel minLevel: DiagnosticLevel.debug}) =>
      'DraggableText{data: $data, position: ${data.currentPosition}}';
}

class OrderableWidgetState<T> extends State<OrderableWidget>
    with SingleTickerProviderStateMixin {
  /// item
  Orderable<T> data;

  bool get isHorizontal => widget.direction == OrderItDirection.Horizontal;

  OrderableWidgetState({this.data});

  @override
  Widget build(BuildContext context) => new AnimatedPositioned(
        duration: new Duration(milliseconds: data.selected ? 1 : 200),
        left: data.x,
        top: data.y,
        child: buildGestureDetector(horizontal: isHorizontal),
      );

  /// build horizontal or verticak drag gesture detector
  Widget buildGestureDetector({bool horizontal}) => horizontal
      ? new GestureDetector(
          onHorizontalDragStart: startDrag,
          onHorizontalDragEnd: endDrag,
          onHorizontalDragUpdate: (event) {
            setState(() {
              if (moreThanMin(event) && lessThanMax(event))
                data.currentPosition = widget.isRotated
                    ? new Offset(data.x - event.primaryDelta, data.y)
                    : new Offset(data.x + event.primaryDelta, data.y);
              ;
              widget.onMove();
            });
          },
          child: widget.itemBuilder(data: data, itemSize: widget.itemSize),
        )
      : new GestureDetector(
          onVerticalDragStart: startDrag,
          onVerticalDragEnd: endDrag,
          onVerticalDragUpdate: (event) {
            setState(() {
              if (moreThanMin(event) && lessThanMax(event))
                data.currentPosition = widget.isRotated
                    ? new Offset(data.x, data.y - event.primaryDelta)
                    : new Offset(data.x, data.y + event.primaryDelta);
              widget.onMove();
            });
          },
          child: widget.itemBuilder(data: data, itemSize: widget.itemSize),
        );

  void startDrag(DragStartDetails event) {
    setState(() {
      data.selected = true;
    });
  }

  void endDrag(DragEndDetails event) {
    setState(() {
      data.selected = false;
      widget.onDrop();
    });
  }

  bool moreThanMin(DragUpdateDetails event) =>
      (isHorizontal ? data.x : data.y) + event.primaryDelta > 0;

  bool lessThanMax(DragUpdateDetails event) =>
      (isHorizontal ? data.x : data.y) +
          event.primaryDelta +
          (isHorizontal ? widget.itemSize.width : widget.itemSize.height) <
      widget.maxPos;

  @override
  String toString({DiagnosticLevel minLevel: DiagnosticLevel.debug}) =>
      'OrderableWidgetState{data: $data}';
}
