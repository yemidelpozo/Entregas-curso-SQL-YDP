## CREACION DE UNA APP DE RESERVAS PARA EL ÁREA DE HOSPITALITY DE UNA PRESTIGIOSA BODEGA

### Problema:
El equipo de Hospitality de una reconocida bodega de Mendoza necesita un sistema que le permita gestionar las reservas de todas las actividades que ofrecen como experiencia al cliente. Por ello, nuestro equipo tiene el desafío de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con las reservas de manera óptima.
Descripción del problema:
1.	Gestión de Clientes y Empleados : Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas, así como de los empleados involucrados en cada reserva, como sommeliers, vendedores, encargados de atención al cliente y, en algunos casos, hasta los enólogos o embajadores de marca.
2.	Gestión de Tipos de Reserva : Es importante poder clasificar las reservas según su tipo, ya sea estándar, reservas de grupos grandes, reservas para atenciones especiales, como recepción de críticos o proveedores o clientes VIP, reservas para empleados de la bodega, etc. 
3.	Gestión de Disponibilidad : La base de datos debe permitirnos registrar la disponibilidad de lugares para visitas guiadas y degustaciones; así como gestionar su capacidad y estado (ocupado o disponible). Esto es fundamental para asegurar una correcta atención y evitar conflictos de reservas.
4.	Registro de Reservas : Necesitamos un sistema que pueda registrar de manera detallada cada reserva realizada, incluyendo la fecha y hora de la reserva, el cliente que la realizó, la actividad reservada, el empleado que atendió la reserva y el tipo de reserva.

### Objetivo:
Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas de las actividades de Hospitality. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas.

### Descripción de la Base de Datos - Gestión de Reservas de actividades de Hospitality

A continuación, se detallan los elementos principales de la base de datos:

#### Tablas:
1.	CLIENTE:
- Almacena información sobre los clientes que realizan reservas.
- Atributos: Id_cliente, Nombre, Telefono, Email, Fecha_alta
  
2.	EMPLEADO:
- Contiene información sobre los empleados involucrados en el proceso de reservas.
- Atributos: Id_empleado, Nombre, Telefono, Email, Id_actividad.
  
3.	TIPO_RESERVA:
- Define diferentes tipos de reserva para clasificarlas según su propósito o requisitos específicos.
- Atributos: Id_tiporeserva, Tipo.
   
4.	ACTIVIDAD:
- Almacena información sobre las actividades disponibles.
- Atributos: Id_actividad, Nombre, Idioma.
  
5.	RESERVA:
- Registra las reservas realizadas por los clientes.
- Atributos: Id_reserva, Id_cliente, Id_actividad, Id_empleado, Id_tiporeserva, Fecha, Cancelacion, Horario_reserva

### Resultado problemático:
Esta base de datos permite gestionar eficientemente el proceso de reserva de las actividades, desde la información de los clientes y empleados hasta el registro de reservas. 

Algunos de los aspectos que aborda incluyen:
•	Registro de clientes y empleados involucrados en el proceso de reserva.

•	Clasificación de las reservas según su tipo.

•	Gestión de la disponibilidad de plazas para actividades.

•	Registro detallado de las reservas realizadas, incluyendo la fecha, cliente, empleado y tipo de reserva.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de reserva de actividades, lo que contribuye a mejorar el servicio ofrecido a los clientes y optimizar sus actividades.

## MODELO DE RESERVAS 

<img width="527" alt="image" src="https://github.com/user-attachments/assets/31163020-e34d-4245-94da-58effba8943e">
