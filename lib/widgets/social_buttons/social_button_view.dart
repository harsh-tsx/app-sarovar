import 'package:app_1point2_store/widgets/social_buttons/social_button_builder.dart';
import 'package:app_1point2_store/widgets/social_buttons/social_button_list.dart';
import 'package:flutter/material.dart';

class SocialSigninButton extends StatelessWidget {
  /// Here are the buttons builder which integrate with button builder
  /// and the buttons list.
  ///
  /// The `SignInButton` class already contains general used SocialButtons.
  /// In case of other buttons, user can always use `SocialSignInButtonBuilder`
  /// to build the signin button.

  /// onPressed function should be passed in as a required field.
  final Function onPressed;

  /// button should be used from the enum class `Buttons`
  final SocialButtons button;

  /// mini is a boolean field which specify whether to use a square mini button.
  final bool mini;

  /// shape is to specify the custom shape of the widget.
  final ShapeBorder? shape;

  /// overrides the default button text
  final String? text;

  /// overrides the default button padding
  final EdgeInsets padding;

  // overrides the default button elevation
  final double elevation;

  /// The constructor is fairly self-explanatory.
  const SocialSigninButton(
    this.button, {
    Key? key,
    required this.onPressed,
    this.mini = false,
    this.padding = const EdgeInsets.all(0),
    this.shape,
    this.text,
    this.elevation = 2.0,
  })  : assert(
            mini != true ||
                !(button == SocialButtons.Google ||
                    button == SocialButtons.GoogleDark ||
                    button == SocialButtons.FacebookNew),
            'Google and FacebookNew buttons do not support mini mode'),
        super(key: key);

  /// The build function is used to build the widget which will switch to
  /// desired widget based on the enum class `Buttons`
  @override
  Widget build(BuildContext context) {
    switch (button) {
      case SocialButtons.Google:
      case SocialButtons.GoogleDark:
        return SocialSignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Google'),
          text: text ?? 'Sign in with Google',
          textColor: button == SocialButtons.Google
              ? const Color.fromRGBO(0, 0, 0, 0.54)
              : const Color(0xFFFFFFFF),
          image: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(
                  button == SocialButtons.Google
                      ? 'assets/logos/google_light.png'
                      : 'assets/logos/google_dark.png',
                  package: 'flutter_signin_button',
                ),
                height: 36.0,
              ),
            ),
          ),
          backgroundColor: button == SocialButtons.Google
              ? const Color(0xFFFFFFFF)
              : const Color(0xFF4285F4),
          onPressed: onPressed,
          padding: padding,
          innerPadding: const EdgeInsets.all(0),
          shape: shape,
          height: 36.0,
        );
      case SocialButtons.Facebook:
      case SocialButtons.FacebookNew:
        return SocialSignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Facebook'),
          mini: mini,
          text: text ?? 'Sign in with Facebook',
          icon: Icons.facebook,
          image: button == SocialButtons.FacebookNew
              ? const ClipRRect(
                  child: Image(
                    image: AssetImage(
                      'assets/logos/facebook_new.png',
                      package: 'flutter_signin_button',
                    ),
                    height: 24.0,
                  ),
                )
              : null,
          backgroundColor: button == SocialButtons.FacebookNew
              ? const Color(0xFF1877f2)
              : const Color(0xFF3B5998),
          innerPadding: button == SocialButtons.FacebookNew
              ? const EdgeInsets.fromLTRB(12, 0, 11, 0)
              : null,
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );

      case SocialButtons.Apple:
      case SocialButtons.AppleDark:
        return SocialSignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Apple'),
          mini: mini,
          text: text ?? 'Sign in with Apple',
          textColor:
              button == SocialButtons.Apple ? Colors.black : Colors.white,
          icon: Icons.apple,
          iconColor:
              button == SocialButtons.Apple ? Colors.black : Colors.white,
          backgroundColor: button == SocialButtons.Apple
              ? const Color(0xFFFFFFFF)
              : const Color(0xFF000000),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );

      case SocialButtons.Reddit:
        return SocialSignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Reddit'),
          mini: mini,
          text: text ?? 'Sign in with Reddit',
          icon: Icons.reddit,
          backgroundColor: const Color(0xFFFF4500),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );
      case SocialButtons.Quora:
        return SocialSignInButtonBuilder(
          key: const ValueKey('Quora'),
          mini: mini,
          text: text ?? 'Sign in with Quora',
          icon: Icons.quora,
          backgroundColor: const Color(0x00a40a00),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );

      case SocialButtons.Hotmail:
        return SocialSignInButtonBuilder(
          key: const ValueKey('Hotmail'),
          mini: mini,
          text: text ?? 'Sign in with Hotmail',
          icon: Icons.sms,
          backgroundColor: const Color(0x000072c6),
          onPressed: onPressed,
          padding: padding,
          shape: shape,
        );

      case SocialButtons.Email:
      default:
        return SocialSignInButtonBuilder(
          elevation: elevation,
          key: const ValueKey('Email'),
          mini: mini,
          text: text ?? 'Sign in with Email',
          icon: Icons.email,
          onPressed: onPressed,
          padding: padding,
          backgroundColor: Colors.grey[700]!,
          shape: shape,
        );
    }
  }
}
