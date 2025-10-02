import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List projects = [
    Project(title: 'Cappuccino', description: 'Espresso, Steamed Milk, Foam', icon: Icons.coffee, color: Colors.blue),
    Project(title: 'Latte', description: 'Espresso, Steamed Milk', icon: Icons.coffee, color: Colors.green),
    Project(title: 'Espresso', description: '1oz Espresso', icon: Icons.coffee, color: Colors.orange),
    Project(title: 'Macchiato', description: 'Ezpresso Shot, Foam', icon: Icons.coffee, color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return _buildProjectCard(projects[index]);
        },
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Project icon
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: project.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(project.icon, size: 30, color: project.color),
              ),
              SizedBox(width: 16),

              // Project details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 4),
                    Text(project.description, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),

              // Arrow icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Project data model
class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}