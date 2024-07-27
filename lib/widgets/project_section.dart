import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 80),
      child: Column(
        children: [
          //work projects title
          Text(
            'Work Projects',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            height: 50,
          ),

          //work projects card
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCard(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),

          //hobby projects title
          Text(
            'Hobby Projects',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            height: 50,
          ),

          //hobby projects card
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCard(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
