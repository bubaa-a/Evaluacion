import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/btn_donate.dart';
import 'package:evaluacion_2/widgets/btn_adopt.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'WORLD WILDLIFE FUND',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del FAB (por ejemplo, abrir chat)
        },
        backgroundColor: Colors.orange[800],
        child: const Icon(Icons.chat),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Barra de búsqueda
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Type to search...',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
            ),
            // Fila con los botones DONATE y ADOPT
            Row(
              children: const [
                Expanded(child: BtnDonate()),
                SizedBox(width: 8),
                Expanded(child: BtnAdopt()),
              ],
            ),
            const SizedBox(height: 24),
            // Sección OUR WORK con sub-encabezados
            _buildOurWorkExpansionTile(),
            const SizedBox(height: 8),
            // Sección GET INVOLVED
            _buildGetInvolvedExpansionTile(),
            const SizedBox(height: 8),
            // Sección ABOUT US
            _buildAboutUsExpansionTile(),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Sección: OUR WORK
  // ---------------------------------------------------------------------------
  Widget _buildOurWorkExpansionTile() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(4),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        title: const Text(
          'OUR WORK',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        children: [
          _buildListTileItem('Learn More About Our Impact >'),
          // Sub-encabezado: What we care about
          _buildSectionHeading('What we care about'),
          _buildListTileItem('People'),
          _buildListTileItem('Places'),
          _buildListTileItem('Species'),
          _buildListTileItem('Climate crisis'),
          _buildListTileItem('Sustainability'),
          // Sub-encabezado: How we work
          _buildSectionHeading('How we work'),
          _buildListTileItem('Public policy'),
          _buildListTileItem('Science'),
          _buildListTileItem('Business'),
          _buildListTileItem('Wildlife conservation'),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Sección: GET INVOLVED
  // ---------------------------------------------------------------------------
  Widget _buildGetInvolvedExpansionTile() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(4),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        title: const Text(
          'GET INVOLVED',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        children: [
          _buildListTileItem('See All Ways To Get Involved >'),
          _buildListTileItem('Take action'),
          _buildListTileItem('Fundraise'),
          _buildListTileItem('Give'),
          _buildListTileItem('Send ecards'),
          _buildListTileItem('Get email'),
          _buildListTileItem('Educational resources'),
          _buildListTileItem('Leave a legacy gift'),
          _buildListTileItem('Travel with us'),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Sección: ABOUT US
  // ---------------------------------------------------------------------------
  Widget _buildAboutUsExpansionTile() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(4),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        title: const Text(
          'ABOUT US',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        children: [
          _buildListTileItem('Contact >'),
          _buildListTileItem('Mission and values'),
          _buildListTileItem('Who we are'),
          _buildListTileItem('History'),
          _buildListTileItem('Leadership'),
          _buildListTileItem('Experts'),
          _buildListTileItem('Stories and updates'),
          _buildListTileItem('World Wildlife Magazine'),
          _buildListTileItem('Newsroom'),
          _buildListTileItem('Financials'),
          _buildListTileItem('Careers'),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Helper para sub-encabezados
  // ---------------------------------------------------------------------------
  Widget _buildSectionHeading(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(
        heading,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Helper para cada opción (ListTile)
  // ---------------------------------------------------------------------------
  Widget _buildListTileItem(String text) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 32.0),
      title: Text(text, style: const TextStyle(color: Colors.white)),
      onTap: () {
        // Coloca aquí la acción correspondiente para cada ítem
      },
    );
  }
}
