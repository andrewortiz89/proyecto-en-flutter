import 'package:flutter/material.dart';
import 'package:soft1/paginas/Registro.dart';

class Nosotros extends StatelessWidget {
  const Nosotros({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorPersonalizado = Color.fromARGB(255, 80, 78, 189);  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPersonalizado, 
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header 
            Container(
              width: double.infinity,
              height: size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [colorPersonalizado, colorPersonalizado.withOpacity(0.5)],  
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.business,
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Etiquetas Express',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),

            // Contenido
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Quiénes somos Seccion
                  Center(
                    child: Text(
                      '¿Quiénes somos?',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: colorPersonalizado,  
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Cards 
                  _buildInfoCard(
                    context,
                    'En Etiquetas Express, estamos comprometidos con la excelencia en la creación de software '
                    'innovador diseñado para transformar la manera en que las empresas gestionan sus operaciones '
                    'y optimizan sus procesos. Desde nuestra fundación, nos hemos dedicado a ofrecer soluciones '
                    'de software robustas y personalizadas que permiten a nuestros clientes alcanzar nuevos niveles '
                    'de eficiencia y competitividad en sus respectivos mercados.',
                    Icons.rocket_launch,
                    colorPersonalizado,  
                  ),
                  
                  _buildInfoCard(
                    context,
                    'Nuestro equipo está formado por profesionales apasionados y expertos en desarrollo de software, '
                    'diseño de interfaces y soluciones tecnológicas avanzadas. Nos enorgullece contar con un equipo '
                    'diverso y talentoso que trabaja de manera colaborativa para enfrentar los desafíos más complejos y '
                    'crear productos de software que marquen la diferencia.',
                    Icons.group,
                    colorPersonalizado,  
                  ),
                  
                  _buildInfoCard(
                    context,
                    'En Etiquetas Express, valoramos la innovación, la integridad y el compromiso con nuestros clientes. '
                    'Estamos aquí para escuchar y entender las necesidades únicas de cada cliente, asegurándonos de ofrecer '
                    'soluciones que no solo cumplan, sino que superen sus expectativas.',
                    Icons.psychology,
                    colorPersonalizado,  
                  ),

                  _buildInfoCard(
                    context,
                    'Desde startups hasta grandes corporaciones, nuestros productos y servicios han ayudado a una amplia gama '
                    'de clientes a mejorar la eficiencia operativa, reducir costos y aumentar la productividad. Estamos '
                    'emocionados de seguir avanzando en nuestro compromiso de innovación continua y liderazgo en el mercado '
                    'de software.',
                    Icons.trending_up,
                    colorPersonalizado,  
                  ),

                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Text(
                          'Únete a nosotros en nuestro viaje hacia el futuro de la tecnología empresarial',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colorPersonalizado,  
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Registro()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorPersonalizado,  
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            '¡Regístrate Ahora!',
                            style: TextStyle(
                               color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String text, IconData icon, Color color) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: color,  
            ),
            const SizedBox(height: 15),
            Text(
              text,
              style: TextStyle(  
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
