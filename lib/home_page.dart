import 'package:flutter/material.dart';
import 'mydrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> pays = [
   {
      'Pays': 'Tunisie',
      'Capitale': 'Tunis',
      'Population': '12 Millions',
      'Langue': 'Arabe',
      'image': 'assets/img/tn.png',
    },
    {
      'Pays': 'Maroc',
      'Capitale': 'Rabat',
      'Population': '38 Millions',
      'Langue': 'Arabe',
      'image': 'assets/img/ma.png',
    },
    {
      'Pays': 'USA',
      'Capitale': 'Washington',
      'Population': '332 Millions',
      'Langue': 'Anglais',
      'image': 'assets/img/us.png',
    },
    {
      'Pays': 'France',
      'Capitale': 'Paris',
      'Population': '68 Millions',
      'Langue': 'Francais',
      'image': 'assets/img/fr.png',
    },
    {
      'Pays': 'Brésil',
      'Capitale': 'Brasilia',
      'Population': '214 Millions',
      'Langue': 'Portuguese',
      'image': 'assets/img/br.png',
    },
  ];

  int selectedIndex = -1; // Initialize with -1 to indicate no selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon App 1"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Add functionality for delete button
              print('Delete button pressed (implement your logic here)');
            },
          ),
          IconButton(
            icon: Icon(Icons.add_call),
            onPressed: () {
              print('Add Call button pressed');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Cloud button pressed!');
        },
        child: Icon(Icons.cloud_done),
      ),
      drawer: Mydrawer(),
      body: ListView.builder(
        itemCount: pays.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> paysData = pays[index];

          return Card(
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update selectedIndex on tap
                });
              },
              leading: SizedBox(
                width: 70,
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/placeholder.png',
                  image: paysData['image'],
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(paysData['Pays']),
              subtitle: Text('Capitale: ${paysData['Capitale']}'),
              trailing: Text('Population: ${paysData['Population']}'),
            ),
          );
        },
      ),
      // Conditional display for selected country details
      bottomNavigationBar: selectedIndex != -1
          ? Container(
              height: MediaQuery.of(context).size.height * 0.5, // Adjust height as needed
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      pays[selectedIndex]['Pays'],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Capitale:'),
                        Text(pays[selectedIndex]['Capitale']),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Population:'),
                        Text(pays[selectedIndex]['Population']),
                      ],
                    ),
                    // Add rows for other information
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Langue:'),
                        Text(pays[selectedIndex]['Langue']),
                      ],
                    ),
                    // ...
                  ],
                ),
              ),
            )
          : null, // Don't display anything if no selection
    );
  }
}