import 'package:flutter/material.dart';

class MessageBubble extends CustomPainter{
  final Color color;
  final Alignment alignment;
  final bool tail;

//<editor-fold desc="Data Methods">
  const MessageBubble({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageBubble &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          alignment == other.alignment &&
          tail == other.tail);

  @override
  int get hashCode => color.hashCode ^ alignment.hashCode ^ tail.hashCode;

  @override
  String toString() {
    return 'MessageBubble{' +
        ' color: $color,' +
        ' alignment: $alignment,' +
        ' tail: $tail,' +
        '}';
  }

  MessageBubble copyWith({
    Color? color,
    Alignment? alignment,
    bool? tail,
  }) {
    return MessageBubble(
      color: color ?? this.color,
      alignment: alignment ?? this.alignment,
      tail: tail ?? this.tail,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'color': this.color,
      'alignment': this.alignment,
      'tail': this.tail,
    };
  }

  factory MessageBubble.fromMap(Map<String, dynamic> map) {
    return MessageBubble(
      color: map['color'] as Color,
      alignment: map['alignment'] as Alignment,
      tail: map['tail'] as bool,
    );
  }
  final double _radius=10.0;
  @override
  void paint(Canvas canvas, Size size) {
    var h=size.height;
    var w=size.width;
    if(alignment==Alignment.topRight){
      if(tail){
        var path=Path();
        // Starting point
        path.moveTo(_radius * 2, 0);
        // top-left corner
        path.quadraticBezierTo(0, 0, 0, _radius*1.5);
        // left line
        path.lineTo(0, h-_radius*1.5);
        // bottom left corner
        path.quadraticBezierTo(0, h, _radius*2, h);
        // bottom line
        path.lineTo(w - _radius*3, h);
        // bottom_right bubble curve
        path.quadraticBezierTo(w- _radius*1.5, h, w-_radius*1.5, h-_radius*0.6);
        // bottom_right tail curve 1
        path.quadraticBezierTo(w - _radius*1, h, w, h);
        // bottom_right tail curve 2
        path.quadraticBezierTo(w-_radius*0.8, h, w-_radius, h-_radius*1.5);
        // right line
        path.lineTo(w-_radius, _radius*1.5);
        // top-right curve
        path.quadraticBezierTo(w-_radius, 0, w-_radius*3, 0);

        canvas.clipPath(path);
        canvas.drawRRect(
          RRect.fromLTRBR(0, 0, w, h, Radius.zero),
          Paint()
            ..color=color
            ..style=PaintingStyle.fill,
        );
      }else{
        var path=Path();
        // Starting point
        path.moveTo(_radius * 2, 0);
        // top-left corner
        path.quadraticBezierTo(0, 0, 0, _radius*1.5);
        // left line
        path.lineTo(0, h-_radius*1.5);
        // bottom left corner
        path.quadraticBezierTo(0, h, _radius*2, h);
        // bottom line
        path.lineTo(w - _radius*3, h);
        // bottom_right curve
        path.quadraticBezierTo(w- _radius, h, w-_radius, h-_radius*1.5);
        // right line
        path.lineTo(w-_radius, _radius*1.5);
        // top-right curve
        path.quadraticBezierTo(w-_radius, 0, w-_radius*3, 0);

        canvas.clipPath(path);
        canvas.drawRRect(
          RRect.fromLTRBR(0, 0, w, h, Radius.zero),
          Paint()
            ..color=color
            ..style=PaintingStyle.fill,
        );
      }
    }else{
      if(tail){
        var path=Path();
        // Starting point
        path.moveTo(_radius * 3, 0);
        // top-left corner
        path.quadraticBezierTo(_radius, 0, _radius, _radius*1.5);
        // left line
        path.lineTo(_radius, h-_radius*1.5);
        // bottom_right tail curve 1
        path.quadraticBezierTo(_radius*.8, h, 0, h);
        // bottom_right tail curve 2
        path.quadraticBezierTo(_radius*1, h,_radius*1.5, h-_radius*0.6);
        // bottom_left bubble curve
        path.quadraticBezierTo(_radius*1.5, h, _radius*3, h);
        // bottom line
        path.lineTo(w-_radius*2, h);
        // bottom-right curve
        path.quadraticBezierTo(w, h, w, h-_radius*1.5);
        // right line
        path.lineTo(w, _radius*1.5);
        // top-right curve
        path.quadraticBezierTo(w, 0, w-_radius*2, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
          RRect.fromLTRBR(0, 0, w, h, Radius.zero),
          Paint()
            ..color=color
            ..style=PaintingStyle.fill,
        );
      }else{
        var path=Path();
        // Starting point
        path.moveTo(_radius * 3, 0);
        // top-left corner
        path.quadraticBezierTo(_radius, 0, _radius, _radius*1.5);
        // left line
        path.lineTo(_radius, h-_radius*1.5);
        // bottom_left curve
        path.quadraticBezierTo(_radius*1.5, h, _radius*3, h);
        // bottom line
        path.lineTo(w-_radius*2, h);
        // bottom-right curve
        path.quadraticBezierTo(w, h, w, h-_radius*1.5);
        // right line
        path.lineTo(w, _radius*1.5);
        // top-right curve
        path.quadraticBezierTo(w, 0, w-_radius*2, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
          RRect.fromLTRBR(0, 0, w, h, Radius.zero),
          Paint()
            ..color=color
            ..style=PaintingStyle.fill,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
    throw UnimplementedError();
  }

//</editor-fold>
}