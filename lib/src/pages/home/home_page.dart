import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final colors = ShadTheme.of(context).colorScheme;
    final textStyles = ShadTheme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio', style: textStyles.h1),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(1, 7),
                    blurRadius: 12,
                    spreadRadius: 15,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.paperPlane,
                    size: size.height * 0.03,
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                  ),
                  title: Text(
                    'CREAR UN ENVIO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.018,
                    ),
                  ),
                  subtitle: const Text(
                    'Configura y gestiona los detalles de tu envío de manera rápida y sencilla.',
                  ),
                  onTap: () {
                    context.push('/envio');
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(1, 1),
                    blurRadius: 12,
                    spreadRadius: 15,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.squarePlus,
                    size: size.height * 0.03,
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                  ),
                  title: Text(
                    'CREAR TANDA DE PRODUCTOS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.018,
                    ),
                  ),
                  subtitle: const Text(
                    'Organiza y planifica la producción de múltiples',
                  ),
                  onTap: () {
                    context.push('/tandas/add');
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(1, 1),
                    blurRadius: 12,
                    spreadRadius: 15,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.bus,
                    size: size.height * 0.03,
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.chevronRight,
                  ),
                  title: Text(
                    'CREAR NUEVA ENTREGA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.018,
                    ),
                  ),
                  subtitle: const Text(
                    'Proporcione la información necesaria para registrar y gestionar una nueva entrega',
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
