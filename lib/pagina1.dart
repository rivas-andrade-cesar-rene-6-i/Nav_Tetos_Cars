import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          automaticallyImplyLeading: true,
          title: const Text(
            "Registro de usuarios Tetos Cars",
            style: TextStyle(fontSize: 15),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.car_rental),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
          elevation: 8,
          shadowColor: Colors.black,
          backgroundColor: Colors.teal,
        ),
        /* body: Center(
        child: ElevatedButton(
          // Within the `Pagina1` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Baila tilin'),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.red,
            onSurface: Colors.grey,
          ),
        ),
      ), */
        body: SingleChildScrollView(
            // <-- wrap this around
            child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nombre de usuario",
                    labelText: "Nombre de usuario",
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Contraseña",
                    labelText: "Contraseña",
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirmar contraseña",
                    labelText: "Confirmar contraseña",
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Correo electronico",
                    labelText: "Correo electronico",
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirmar correo electronico",
                    labelText: "Confirmar correo electronico",
                  ),
                )),
            const SizedBox(height: 30),
            /* ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar'),
            ), */
            ElevatedButton(
              // Within the `Pagina1` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Registrarse'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.red,
                onSurface: Colors.grey,
              ),
            ),
          ],
        )) //body
        );
  }
}
