import 'package:app_1point2_store/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({
    Key? key,
    required this.controller,
    this.activeColor = const Color(0xFF4CAF50),
    this.activeThumbColor = const Color(0xFF4CAF50),
    this.inactiveColor = const Color(0xFF9E9E9E),
    this.inactiveThumbColor = const Color(0xFF9E9E9E),
    this.activeChild,
    this.inactiveChild,
    this.activeImage,
    this.inactiveImage,
    this.borderRadius = const BorderRadius.all(const Radius.circular(15)),
    this.width = 50.0,
    this.height = 30.0,
    this.enabled = true,
    this.disabledOpacity = 0.5,
    this.thumb,
    this.initialValue = false,
    this.onChanged,
  }) : super(key: key);

  /// Determines if widget is enabled
  final bool enabled;

  /// Determines current state.
  final ValueNotifier<bool> controller;

  /// Determines background color for the active state.
  final Color activeColor;
  final Color activeThumbColor;

  /// Determines background color for the inactive state.
  final Color inactiveColor;
  final Color inactiveThumbColor;

  /// Determines label for the active state.
  final Widget? activeChild;

  /// Determines label for the inactive state.
  final Widget? inactiveChild;

  /// Determines background image for the active state.
  final ImageProvider? activeImage;

  /// Determines background image for the inactive state.
  final ImageProvider? inactiveImage;

  /// Determines border radius.
  final BorderRadius borderRadius;

  /// Determines width.
  final double width;

  /// Determines height.
  final double height;

  /// Determines opacity of disabled control.
  final double disabledOpacity;

  /// Thumb widget.
  final Widget? thumb;

  /// The initial value.
  final bool initialValue;

  /// Called when the value of the switch should change.
  final ValueChanged? onChanged;

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  // ...
// 1. Create a controller in the state of the StatefulWidget

// 2. In case, you want to call setState on switch changes.
// 2.1. Add event listener, for example in the initState() method.
// ...
  bool _checked = true;

// ...
  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(() {
      setState(() {
        widget.controller.value = false;
        widget.controller.value = true;
        widget.controller.notifyListeners();
        if (widget.controller.value) {
          widget.controller.value = true;

          _checked = true;
        } else {
          widget.controller.value = false;

          _checked = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      controller: widget.controller,
      activeColor: widget.activeColor,
      inactiveColor: widget.inactiveColor,
      activeChild: widget.activeChild ??
          Text(
            'Call on',
            style: TextStyle(
              color: Color(0xff157B11),
            ),
          ),
      inactiveChild: widget.inactiveChild ??
          Text(
            'Call off',
            style: TextStyle(
              color: Color(0xffE73035),
            ),
          ),
      borderRadius: BorderRadius.all(const Radius.circular(15)),
      width: widget.width ?? 100.w,
      height: widget.height ?? 30.h,
      enabled: widget.enabled,
      disabledOpacity: 0.5,
      thumb: ValueListenableBuilder(
        valueListenable: widget.controller,
        builder: (_, value, __) {
          var boolValue = value as bool;
          return Container(
            width: 50.h,
            height: 50.h,
            decoration: BoxDecoration(
              color: boolValue
                  ? widget.activeThumbColor
                  : widget.inactiveThumbColor,
              borderRadius: BorderRadius.circular(100),
            ),
          );
        },
      ),
    );
  }
}

// class CustomToggle extends StatefulWidget {
//   @required
//   final bool value;
//   final double width;

//   @required
//   final Function(bool) onChanged;
//   final String textOff;
//   final Color textOffColor;
//   final String textOn;
//   final Color textOnColor;
//   final Color colorOn;
//   final Color colorOff;
//   final double textSize;
//   final Duration animationDuration;
//   final IconData iconOn;
//   final IconData iconOff;
//   final Function onTap;
//   final Function onDoubleTap;
//   final Function onSwipe;

//   CustomToggle({
//     this.value = false,
//     this.width = 130,
//     this.textOff = "Off",
//     this.textOn = "On",
//     this.textSize = 14.0,
//     this.colorOn = Colors.green,
//     this.colorOff = Colors.red,
//     this.iconOff = Icons.flag,
//     this.iconOn = Icons.check,
//     this.animationDuration = const Duration(milliseconds: 600),
//     this.textOffColor = Colors.white,
//     this.textOnColor = Colors.black,
//     required this.onTap,
//     required this.onDoubleTap,
//     required this.onSwipe,
//     required this.onChanged,
//   });

//   @override
//   _RollingSwitchState createState() => _RollingSwitchState();
// }

// class _RollingSwitchState extends State<CustomToggle>
//     with SingleTickerProviderStateMixin {
//   /// Late declarations
//   late AnimationController animationController;
//   late Animation<double> animation;
//   late bool turnState;

//   double value = 0.0;

//   @override
//   void dispose() {
//     //Ensure to dispose animation controller
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//         vsync: this,
//         lowerBound: 0.0,
//         upperBound: 1.0,
//         duration: widget.animationDuration);
//     animation =
//         CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
//     animationController.addListener(() {
//       setState(() {
//         value = animation.value;
//       });
//     });
//     turnState = widget.value;

//     // Executes a function only one time after the layout is completed.
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         if (turnState) {
//           animationController.forward();
//         }
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     //Color transition animation
//     Color? transitionColor = Color.lerp(widget.colorOff, widget.colorOn, value);

//     return GestureDetector(
//       onDoubleTap: () {
//         _action();
//         widget.onDoubleTap();
//       },
//       onTap: () {
//         _action();
//         widget.onTap();
//       },
//       onPanEnd: (details) {
//         _action();
//         widget.onSwipe();
//       },
//       child: Container(
//         padding: EdgeInsets.all(5),
//         width: widget.width,
//         decoration: BoxDecoration(
//             color: transitionColor, borderRadius: BorderRadius.circular(50)),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: isRTL(context)
//                   ? Offset(-10 * value, 0)
//                   : Offset(10 * value, 0), //original
//               child: Opacity(
//                 opacity: (1 - value).clamp(0.0, 1.0),
//                 child: Container(
//                   padding: isRTL(context)
//                       ? EdgeInsets.only(left: 10)
//                       : EdgeInsets.only(right: 10),
//                   alignment: isRTL(context)
//                       ? Alignment.centerLeft
//                       : Alignment.centerRight,
//                   height: 40,
//                   child: Text(
//                     widget.textOff,
//                     style: TextStyle(
//                         color: widget.textOffColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: widget.textSize),
//                   ),
//                 ),
//               ),
//             ),
//             Transform.translate(
//               offset: isRTL(context)
//                   ? Offset(-10 * (1 - value), 0)
//                   : Offset(10 * (1 - value), 0), //original
//               child: Opacity(
//                 opacity: value.clamp(0.0, 1.0),
//                 child: Container(
//                   padding: isRTL(context)
//                       ? EdgeInsets.only(right: 5)
//                       : EdgeInsets.only(left: 5),
//                   alignment: isRTL(context)
//                       ? Alignment.centerRight
//                       : Alignment.centerLeft,
//                   height: 40,
//                   child: Text(
//                     widget.textOn,
//                     style: TextStyle(
//                         color: widget.textOnColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: widget.textSize),
//                   ),
//                 ),
//               ),
//             ),
//             Transform.translate(
//               offset: isRTL(context)
//                   ? Offset((-widget.width + 50) * value, 0)
//                   : Offset((widget.width - 50) * value, 0),
//               child: Transform.rotate(
//                 angle: 0,
//                 child: Container(
//                   height: 40,
//                   width: 40,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Colors.white),
//                   child: Stack(
//                     children: <Widget>[
//                       Center(
//                         child: Opacity(
//                           opacity: (1 - value).clamp(0.0, 1.0),
//                           child: Icon(
//                             widget.iconOff,
//                             size: 25,
//                             color: transitionColor,
//                           ),
//                         ),
//                       ),
//                       Center(
//                         child: Opacity(
//                           opacity: value.clamp(0.0, 1.0),
//                           child: Icon(
//                             widget.iconOn,
//                             size: 21,
//                             color: transitionColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   _action() {
//     _determine(changeState: true);
//   }

//   _determine({bool changeState = false}) {
//     setState(() {
//       if (changeState) turnState = !turnState;
//       (turnState)
//           ? animationController.forward()
//           : animationController.reverse();

//       widget.onChanged(turnState);
//     });
//   }
// }

// bool isRTL(BuildContext context) {
//   return Bidi.isRtlLanguage(Localizations.localeOf(context).languageCode);
// }

class CallSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CallSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CallSwitchState createState() => _CallSwitchState();
}

class _CallSwitchState extends State<CallSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 80.w,
            height: 28.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: _circleAnimation!.value == Alignment.centerLeft
                  ? Color(0xffFFCCCD)
                  : Color(0xffC5F9C3),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
              child: Row(
                mainAxisAlignment: widget.value
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  widget.value == true
                      ? Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text(
                              'Call on',
                              style: TextStyle(
                                color: Color(0xff157B11),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  Container(
                    alignment: widget.value
                        ? ((Directionality.of(context) == TextDirection.rtl)
                            ? Alignment.centerRight
                            : Alignment.centerLeft)
                        : ((Directionality.of(context) == TextDirection.rtl)
                            ? Alignment.centerLeft
                            : Alignment.centerRight),
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.value == true
                              ? Color(0xff157B11)
                              : Color(0xffE73035)),
                    ),
                  ),
                  widget.value == false
                      ? Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text(
                              'Call off',
                              style: TextStyle(
                                color: Color(0xffE73035),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class StatusSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  StatusSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _StatusSwitchState createState() => _StatusSwitchState();
}

class _StatusSwitchState extends State<StatusSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 80.w,
            height: 28.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: _circleAnimation!.value == Alignment.centerLeft
                  ? Color(0xffFFCCCD)
                  : Color(0xffC5F9C3),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 2.h, bottom: 2.h, right: 2.w, left: 2.w),
              child: Row(
                mainAxisAlignment: widget.value
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  widget.value == true
                      ? Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text(
                              'Online',
                              style: TextStyle(
                                color: Color(0xff157B11),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  Container(
                    alignment: widget.value
                        ? ((Directionality.of(context) == TextDirection.rtl)
                            ? Alignment.centerRight
                            : Alignment.centerLeft)
                        : ((Directionality.of(context) == TextDirection.rtl)
                            ? Alignment.centerLeft
                            : Alignment.centerRight),
                    child: Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.value == true
                              ? Color(0xff157B11)
                              : Color(0xffE73035)),
                    ),
                  ),
                  widget.value == false
                      ? Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Text(
                              'Offline',
                              style: TextStyle(
                                color: Color(0xffE73035),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
