import 'package:flutter/material.dart';

class Telahome extends StatelessWidget {
  const Telahome({super.key});

  // Cores principais inspiradas no app
  final Color corItauLaranja = const Color(0xFFEC7000);
  final Color corItauAzulEscuro = const Color(0xFF1E2D4B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Fundo levemente cinza
      appBar: AppBar(
        backgroundColor: corItauLaranja,
        elevation: 0,
        leading: const Icon(Icons.person_outline, color: Colors.white),
        title: const Text(
          'Olá, João',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Faixa laranja que continua do AppBar
            Container(
              color: corItauLaranja,
              height: 30,
              width: double.infinity,
            ),
            
            // Conteúdo principal (Cards)
            Transform.translate(
              offset: const Offset(0, -20), // Sobe os itens para sobrepor a faixa laranja
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    _buildCardSaldo(),
                    const SizedBox(height: 20),
                    _buildAcoesRapidas(),
                    const SizedBox(height: 20),
                    _buildCardCartao(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
      // Barra de navegação inferior
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: corItauLaranja,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: 'Extrato'),
          BottomNavigationBarItem(icon: Icon(Icons.pix), label: 'Pix'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Menu'),
        ],
      ),
    );
  }

  // --- MÉTODOS PARA CONSTRUIR AS PARTES DA TELA ---

  Widget _buildCardSaldo() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Conta corrente', style: TextStyle(fontSize: 16, color: corItauAzulEscuro, fontWeight: FontWeight.bold)),
              const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Saldo em conta', style: TextStyle(color: Colors.grey, fontSize: 14)),
          const SizedBox(height: 8),
          Text('R\$ 2.450,00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: corItauAzulEscuro)),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          Center(
            child: Text('Ver extrato', style: TextStyle(color: corItauLaranja, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildAcoesRapidas() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildBotaoAcao(Icons.pix, 'Pix'),
          _buildBotaoAcao(Icons.qr_code_scanner, 'Pagar'),
          _buildBotaoAcao(Icons.swap_horiz, 'Transferir'),
          _buildBotaoAcao(Icons.credit_card, 'Cartões'),
          _buildBotaoAcao(Icons.monetization_on_outlined, 'Empréstimo'),
        ],
      ),
    );
  }

  Widget _buildBotaoAcao(IconData icone, String titulo) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
              ],
            ),
            child: Icon(icone, color: corItauAzulEscuro, size: 28),
          ),
          const SizedBox(height: 8),
          Text(titulo, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildCardCartao() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.credit_card, color: corItauAzulEscuro),
                  const SizedBox(width: 8),
                  Text('Cartões', style: TextStyle(fontSize: 16, color: corItauAzulEscuro, fontWeight: FontWeight.bold)),
                ],
              ),
              const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Fatura fechada', style: TextStyle(color: Colors.grey, fontSize: 14)),
          const SizedBox(height: 8),
          const Text('R\$ 1.120,50', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red)),
          const SizedBox(height: 4),
          const Text('Vence em 15/03', style: TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: corItauLaranja,
              minimumSize: const Size(double.infinity, 45),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text('Pagar fatura', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}