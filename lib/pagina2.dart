import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de usuarios Tetos Cars'),
          backgroundColor: Colors.deepOrange,
        ),
        /* body: Center(
        child: ElevatedButton(
          // Within the Pagina2 widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('El pepe'),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.red,
            onSurface: Colors.grey,
          ),
        ),
      ), */
        body: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man5-512.png")),
                title: Text('Yo'),
                subtitle: Text('6561231234'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {}, //onTap
                onLongPress: () {
                  // do something else
                } //onLongPress
                ),
            ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png")),
                title: Text('No'),
                subtitle: Text('6561231234'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {}, //onTap
                onLongPress: () {
                  // do something else
                } //onLongPress

                ),
            ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/147/147144.png")),
                title: Text('Soy'),
                subtitle: Text('6561231234'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {}, //onTap
                onLongPress: () {
                  // do something else
                } //onLongPress
                ),
            ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABUFBMVEWE0Pf///+qOS0tLS3qsZi7jnp8IRqkfGt9zvdjGhWH1f2F0vmI1/98zfe+kHzutJolKCknHxkpJCEhJiiCzPIrKScmHBUrLS3z+v7D5/vlrZWvOi2mKBi04fra8PyS1fjo9v0ZIiWb2PjWoounLiCp3fl9w+dyr886R04kFgkgLC2lJBHg8v3P7PxTdom+5ftLZ3ZuqMYyNzl3X1RVSEJei6KwhnSDaFw6NTOVMid5GRKnSUTUo58+UFppn7tHPjtXfpJpVU1sMi2NRDl8KSGONi1dMS2KKyOJvd6ag5Ly7u/CeHHw393dtrO3XVWkHgSXdWdGXWo5LCtwGRS2d2Z4QTdPIh8/JyVkMi14MCmcWUxXHRqWaFpbCgfLkX1rIRqaV0qBfo5YOjqPrcmlUlGgXWGgaXCZh5iUmrCOWk50CgCqbV25fnzmycbOlpHr1NJfm3A9AAASLElEQVR4nO2d6VvbxhaHZYwxsYzl3cY2i7EwUCCssSEkMaRpk0AA0+T2dm9vk7ZpewP//7c72jXSSJpzNIL0Pvl9ytNQoTfnzFlmk5T6f5d01y+QuD4R/vP1iVCMmosbm5tbW3PLhubmtmY35zcWm7fxuxMmbG5sbi0tyNL0zLQuSZPxR/KfpIWF5a3NxWRfIUHCjdll2aYKlPYT8vLsRmKvkQxhc2NrSbMRt8gPL83NJ+K1CRA2N5dlCJ1DKS3NindZ0YTN2SUJQWdTTstzgh1WKGFzcylq2HGZck6kJQUSLs7FsR4NuTArbEwKIxRhPjektCzIWwURzooyn4txemFTxKuJIGxuCTWfoxlJgLPGJ2wmYD9b0/EZYxMmyWcy3inhvJwsn8EYazzGIlxcSp5P08zC/N0QJhVgGJpeRg9HPOHGLTioCxE9HNGEc7fJp2lmAVfLIQk3Fm4bkGh66/YIZ++AT0PEmBFD2LylEMpihI9GBOH8nfFpiEvQoAonvCMPtRFloKeCCZfvFlBjhJU4QMLmXcRQH+JycoSL8l3T6QINRhDh/F2jWYKkDQjhZlwPlX1/wIsbEUAYJ4jKci6fk6rVvq5qVcrncnIszhnedoOfEA1I4OT+yoP7249XG+X6Wr1e2119vH38ZKVPqPGUvCGVm3ALBSjL+fzKg+3VWr1UrtVqaVO1WrlcKqVXt5+s5NG25ETkJcQAEtes7mynSwQuzVRNw7z/pIq0JB8iJ+HsDJwvL+1sl+tlNpwj8iPbO9U8BpILkY8QHkXlfP94NRrPgtw97mMYeRC5CDehFiR892ulAN9k+2t5ewXBOB0dUXkI56GAuf72Gqf5XIZcu1qBD8jpyLl/DsJFKF/1uATm0w25to3w1ajUH03YhP1OOfdkt4Th0+2YfgDOHQsRNWo04QLo9+X6V3XA+POptAo14/RSTELQjIWc2ymjHNRRrQ41Y0QzFUUIy/TycT0en6b6VRWGOBM6eRNBCJqTkaUr9Ah0q7zbz4EQQwNqOGET8nvk6mpMD7VUK6/AEKWQaBNOCIkycn9XEKCG+CQPAQyLNqGEkJl7uS/KgrrqMMSZ4OnwMELIIJSr4iyoq7QDs2Jg4g8hBA1CSagFdUTYWFxAEAIyoSxviwZM19J9SNKYngMTQhqK/AMhacKDuApK/TMBKSOQsAkYhLkVAYner9I2aCjKQELQ7H06TikarPoTyFAMWF4MIoR09fn7wgehJdhQZMbTIELAk3M7CQxCQ+UrUDxl5v0AQkCul6XVZHxU0xrMT1nTNmzCRUiYeZBImDFU2wWtALCSIptwif+hcjU5PqLSA0g8ZS2CMwkh5VouiVTo0m4VQChN+5sMJiGgpZCl5AahrtID0Ej0VzYsQkimyD1J1oRkJMI6fp8RWYSQB8qPE7YhNO37jMgghEzNyCsJm1ArT2H9vteIDEJIuZYLKmcaRIIQ11Zi9Rh+QshKKOl7/U7aKFa66dFodNDoVooCMMvHsF64GUUIeZrsbyqK3YO98SCjazDeGxHKuIiwrO/NiT5C0GJ27tjjpMXKfrZQKGRMaX8cn6RjQpZ2YPOnEYSgSfycpyStjLImnoNZKAyG+7HctXwf5qaboYSwtdD+Gg24l9G4er1WqzXZavV6BQsyexKDsbYK256yFEoIMyGV7huVMSEq9CZdavUskw5OimhfLYHaRE+f6CHcAJmQan0b6WwhU2gpk7SUlmXIwUkaaccSKOl7EoaHcBnyJCnvGoY6YG+SJRcjzo7l+7CkLwcTQqafiNyNU4XEmBYT0GEk43G/izAjdCBS+6VoQti+J3nFcVIyBgtBfJqv2uNxPKrAGUugFoqONTQhcL3XCTTF/QLbQx31rLg6PKhACeugwo0YMYgQFmfc+b4yjAKkQg60BIA1iXRKpAiBp0Ty23ag6Ra8MTRkOGYKWaCrlo+B64lLAYSwp7h6w+KIg49y1THIVWtXoKpGcvdQbkLozqDqrvUGlT0eE1KumtmDZI5dIKFrr5SbELgNX+5bv79YGXMSambEuGodSrjMJARuz5P7duvENwx9rjrkLnLWgOnCNXPqIoQ6qbxjEzZ6EEJEVK3DKlN3beoihJ63c9Jh4yCwmgk3I7erQhOiqw92EcLSvXsuuDGCmFCXE3HGDQ4z1oFNsCQt+wkhaxUGoZ3wi/tgQpcZM3vRjKUnUELZTwjei+/0TkXeZME0o9FzhPsqsH+SXAPRIQSsxhjKXVkJvzLEEDpmjA45CMJNLyFwG6kmu6SBpMMARJ0x2I4IwmUvIXgYulZG0YSTkwU3YzowrkJLb8nJiDYheBjKrqItiya0GkfDV4ejAGdFEE57CWHzFzphTQDhpMtV9dyx360w1gMwhIseQvgwrJolTaPYjUU42XIzEkMeFM0h2ShasGUE4SZNCJyh0WROllbS+yfxCJ0yzprNGe4fVCqVxv7+yEyV4AbR2V5jEcIPaMsGYXfYU5R4gAzGwiA7Hg8G2ex4X0cETnvrWqIJ4Se3jFWZmA7qEsWoUxJMIh2xDNsApmuBJgTne6O14G59OaS4x6OurK4DMhZr22AvleQmRQgPNBphIw1qmyLV6lHOahAOi5hpDMmaybAI4YFGI8QVpLyQJmE2jSM004WErGgMwm5GOKEb0iQ8KeII592EiLsuCGGjAu18OaUQyl6rl7XdFEW46SZEHETXCNNJmNDGtLx0XMERzroJEcd8SbZA9PYQwoxDWEbEUnORzSRE3OeRPGHWRYjI+Gb/JGHToV7TFJMkbLkJ4VWbNVVjEkJnoTSRyrsSuR4TQ1agye4VMb2FVbbhCbXuqTtIzoh2oNHqNniPL4Rwt1Y8SdBNBxYhaaWgW2p0LbgIEZM0kj5PA5vsBqnlclL4jLCPEAOY2y6jZ9k4ZA9DrfJe6yNeMD7hcTndgK3JAGQPwxOte4KuPQki1NYtige+HTSCZJdsWvO0GpdwEUNotMDF/WQQTScd6zM1mJJGBGFfn2wrjnqKMilgJoOS6aRDYyoKMREl0dkC5aVy1ZgSLnaHhV5vKDjmpPfG4+HIXOyvgxdmhBBKeXPholHsdrsV8BpimJRMt6jNtpnTpWvQBVI/ISof0pu8hXbDygk99w28g8DQcmwb0psvRdY3So/ai1J7jLqBKHbl7TmK0OiKq2+UIUWIC6V0f4gilPrUHmiB9U0rTS1d4EIp3ePjCHO77vdId0XFGmXcpR6MC6X0PA2iAybK00eCYiwjeuRZKwXugjY1Q8214W4l9RwAbqTFGNFrwvQupu72zJfibtTznj0UZMTWAW3C2ioqWdBz3rhrLb1H88QYURl7ti3WHmPqbs/KDHDvrCnXvi/TiALCqdLz7lhALVp4CRELpBLr2JOAnKjseXeeYpbWJHtXFH5lRrIXSV1C7Y6iAQueMINbHnV2tlmEyJTvJYw/+6Yc+PYpoCZL7U20FiHuQwB+wrjBxlOvxSH07MXABVM/YcxVYaXA2P6NJEzRhBvwC0pZ4zCun7ZGjB1D0ENBhnx7ojA2ZBI2Kvh4qpywdvCjIo19vMsmxFSmjEOy6Tjx1FeumYSYbGHv1rcJMaHGl/FNP0XmfUai0IXK+PaBZ5sQfA2rFHihQgM3FJVemr01sfYYMQ7tzfrO/lL4Q4Jv/cDMhCutg4BNtJjK2zllGWOPcMj1SY0iONoozDBqCt49OWe7HEJEA5UPvBSjCN1KpLT2gw9CITpg594BhxDRXuR3A18KiBgKiDiLwD4zAwaU+sEvlS4WAWNR6Y3CjrLB17hdN5u5COG7hFfCbjFrFLkjqlIICjKG4EWN685W97kn8JGSiNt3eJOG0gsHJOkC+GbumyNinF2LvImuMvYfz2fwtQaFk4hDM2Xg0TX3ifwY5w+lXNT9QoPMIHo7Sm+QKTBaJkqwK2roWyLjnCHtB4dSTY2RtsUw3IxKKzPQtllGEIJDTYpNCNxGy667HRX3zDP4k0GMSqtg3GRTCKjXLNVgtTd1bQRFCEv6UTe1de0LXHqsvl+ZtPgIYeRAhN0qvBhECNtHK1+FDcNiJa04+7YLPdpZFaXXywycv852ww+vwfbTUJcL0ncqQGpT15kZj/Q14f1hRnEfhyGQhFKXdnHNYJChtLd/0K0En18DDUT6HiWaEDJbw24OtTu+RntZ7QyGZjT6hAHRYOBlc45YjIcnBwF3hMGmvZvBhJBY48+GjcZnja++/v71G2djRotFEyQybv917+t/15iU/MW350sCHkLACba8D++rb779eYro4XdO9IQgFgZPf7xH9P3TL9OfeSABmxM9t+x7CPln96lcQfDSTw8n2u3DKR3xcyeueE+JhABm7xl6dtie+OKbBgVZ47+N1nOJqfeeKO7pGmcjhma9p4ft9oQmE/GZ3TspvIiFH360ALUHtdtfUJYs87qp93NlXkJeI9rnK8k/9ZdfTBh4DuLU1E9AxMKfFKAOOfHtr+TxwGjqvYfWd18bpxHNvoKY79tDB0+XQfjwDQSRxBgD8GcHUDfk4dO0wch7QeSM9y5hHyFn1tcOchP3/NVtPhrxr7/5Ea0Yc+/n54eehxFDfqU7K2f17btK2H9vIleHIfdL5N/2S6/5TD03EH+xS5iWLy/SgFaM8QOaI5LkD755Yf910H7CJk+HQeJM42kAn43oCqmhiIUfrCD6POB57UPCyDUf5b8NmnF/Kc9IrBZD+CYYITUka3iCaCBjl2MJinGjN4Mwem5Yzv1HDeOzEace/qREeaodRIMMaDP+Gj0xzLjQm3WPcERhI+fevuuEv40L8Y3TU7DMWBhYQTTEgKbU315EDEXWpzvBt13L+Re/dyIMSCHaIZVxDNYJos84njihdl5WQz2VdbE+9MZyWf5DVXneZsLOGt+5e3zqGKwdRF9HeKjDOPE+5KNlzI8jsG+dD8wYubdH0Q7qQXRXqbohnWOweox5PTX1nMcpdLXX370I+oYg+0MsbMKA2i1XfXnJ/S6anvtCqhF0eqQHJvrz9evX2g9ED0GXVPWPgK+zsD9SEvD1B9Z3R+U8yIBuRKdKdaYxlMnvHhpGBgESaWZkmZD9PcugL3j45zNk+eU6yIC6GCHV8tbPTUDwM4kZ3/uDatAn9IIIF30e+oIjRQQjOlWqVas+QwMSXf7uy41ywLfXggi9STH/vs0bQgMQf3GHVOWnKQOQN4h61TnyeGrgZ2UDCSk/lXMYD7XkD6nKG9OAWEDiqW0qbwR/5jGY0BVP5epv6+hXcRDtkKr8/RcuxlC6fOm2YiBH8N84U4u5F0dID7X0nKpSW7+IACQx9Xf7euGgD3aFE1pNRv7tRExAB5GEVKX3OTJL+NR5ZzZUIR8HDP/+4YIBGNVHQBD/jhlEaalGvAn9nGwooTYU8+8vBbyKkxgtA4oA1DKjhhiUKKIJSQkuCtBBjBtEabXbb3PBX3eMJkzN/hEriNKaciQKUJupehv+gfUIwtQZqpAJUAKAJKJehxNEEabexY6jLk0JCqIudf4bARBJmIqbCyk9Fw2ovot6/2jCU8GIXPMVvFKPIt8/mlAwokgDEsBTEYSCEQWKB5CL8GNFbE9wAPIRpk6FRlRBUrkAOQkF50Uh4nJRAGHqWmBxI0LqBR8gP2Hq0UeFqF7wvjc/YeqDiC5KkDpn3K8NIEy9+mhCalQtiiVMnZ59HJ66fg54aRAhGYyiusUYUts3kFcGEqZu4s/ZxFSHN4giCe/cUyFDEEeYSp3HmByOK1X9AH1dBCGJqXdV4EA9FEtIAg73OrBIqeojxLviCFOvLm5/NHYuXmFeFUlIRmPnds2oXmIMGIeQBFWuLRli1O6cwUdgXEKSG2/NVTtH4BAqhJC46sRtRFW1jXRQAYQkqiY+HNXLa6yDCiEkrXGidZyqogegMMLU6aPEfFVV/4vKEIIJDcYE4mqncx2bTxAh0fmR4AGpdibixBdHoghJ7jhrCzNku6Oe4fMDLXGExFnPL9ZFGFK9vHgkwD1NiSQkevVoYj3ehJW63hYx+hwJJiS6uT5SkWOS/H9HYvFSSRCmNEueEVPCKNXO+sTZuWi8VEKERKc3j87alx0uj1XVzuXE2aNXMVN7gJIi1PXq/PpC7XQ6qtpmkbZV7S87BO5DMnC6EiXUdXpzfn12caQBddZNabY9Oro4uz7/kIBf0kqe0NTp6Suim5sPH25utD8laDVat0Z4Z/pE+M/XJ8J/vv4HbKu5GdTuenEAAAAASUVORK5CYII=")),
                title: Text('Un'),
                subtitle: Text('6561231234'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {}, //onTap
                onLongPress: () {
                  // do something else
                } //onLongPress
                ),
            ListTile(
                leading: const CircleAvatar(backgroundImage: NetworkImage("https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png")),
                title: Text('Chocorol'),
                subtitle: Text('6561231234'),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {}, //onTap
                onLongPress: () {
                  // do something else
                } //onLongPress
                ),
            ElevatedButton(
              // Within the Pagina2 widget
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                // off the stack.
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.orange,
                onSurface: Colors.grey,
              ),
            ),
          ]).toList(),
        ) //Body
        );
  }
}
