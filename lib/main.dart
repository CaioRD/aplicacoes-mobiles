import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const MyAppBar(),
        body: const MyBody(),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Nubank'),
      backgroundColor: const Color(0xFF8A05BE),
      leading: IconButton(
        icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
        onPressed: () {
          // Ação ao clicar no ícone
        },
      ),
      actions: <Widget>[
        IconButton(
          icon:
              const Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
        IconButton(
          icon: const Icon(Icons.mark_email_read_outlined,
              color: Color(0xFFF5F5F5)),
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
        IconButton(
          icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Conta',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'R\$1000,00',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconButton(Icons.pix, 'Área Pix'),
              _buildIconButton(Icons.money, 'Pagamentos'),
              _buildIconButton(Icons.qr_code, 'QRCode'),
              _buildIconButton(Icons.attach_money, 'Transferir'),
            ],
          ),
          const SizedBox(height: 30),
          _buildCard(
            title: 'Meus Cartões',
            icon: Icons.credit_card,
          ),
          const SizedBox(height: 30),
          _buildCard(
            title: 'Guarde seu dinheiro em caixinhas',
            subtitle: 'Acessando a área de planejamento',
            textColor: const Color(0xFF8A05BE),
          ),
          const Divider(height: 60),
          _buildCreditCardSection(),
          const Divider(height: 60),
          _buildLoanSection(),
          const Divider(height: 60),
          _buildDiscoverMoreSection(),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 30),
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildCard(
      {required String title,
      String? subtitle,
      IconData? icon,
      Color textColor = Colors.black}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            if (icon != null) Icon(icon, size: 30),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
                if (subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreditCardSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cartão de Crédito',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        const Text(
          'Fatura Fechada',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        const SizedBox(height: 10),
        const Text(
          'R\$2.123,39',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 15),
        const Text(
          'Vencimento dia 15',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            // Ação ao clicar no botão Renegociar
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF8A05BE), // Cor do botão
          ),
          child: const Text(
            'Renegociar',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildLoanSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Empréstimo',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        const Text(
          'Tudo certo! Você está em dia',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  Widget _buildDiscoverMoreSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Descubra Mais',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Card(
          child: Column(
            children: [
              Image.asset(
                'assets/seguroVida.png', // Certifique-se de adicionar a imagem no pubspec.yaml
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Seguro de Vida',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Cuide bem de quem você ama de um jeito simples',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Ação ao clicar no botão Conhecer
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF8A05BE), // Cor do botão
                      ),
                      child: const Text(
                        'Conhecer',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
