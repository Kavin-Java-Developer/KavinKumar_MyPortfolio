import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/socialicons_links.dart';
import 'package:my_portfolio/widgets/custom_textfield.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            'Get in touch',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, Constraints) {
                if (Constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                //else
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextfield(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),

          SizedBox(
            height: 20,
          ),
          //send button
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Get in touch',
                    style: TextStyle(color: CustomColor.whitePrimary),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            child: Divider(),
          ),
          SizedBox(
            height: 5,
          ),
          //social icons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SocialiconsLinks.github]);
                },
                child: Image.asset(
                  'assets/images/github.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SocialiconsLinks.linkedin]);
                },
                child: Image.asset(
                  'assets/images/linkedin.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SocialiconsLinks.telegram]);
                },
                child: Image.asset(
                  'assets/images/telegram.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SocialiconsLinks.instagram]);
                },
                child: Image.asset(
                  'assets/images/instagram.png',
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
            child: CustomTextfield(
          hintText: "Your name",
        )),
        SizedBox(
          height: 15,
        ),
        Flexible(
            child: CustomTextfield(
          hintText: "Your email",
        )),
      ],
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
            child: CustomTextfield(
          hintText: "Your name",
        )),
        SizedBox(
          width: 15,
        ),
        Flexible(
            child: CustomTextfield(
          hintText: "Your email",
        )),
      ],
    );
  }
}
