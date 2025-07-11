## Descripción

En este módulo se recopilan todos los scripts utilizados durante el desarrollo de la base de datos. Incluye:

- **DDL (Data Definition Language)**: define la estructura de todas las tablas y sus relaciones.
- **Población de datos**: scripts para cargar información inicial en las tablas.
- **Ajustes y optimización**: parte del ciclo de vida de la base de datos, desde su creación hasta su mantenimiento.

## Estructura de la Base de Datos

La base de datos `SistemaGestionBisblick` contiene las siguientes tablas:

- `Becado`: Datos personales del beneficiario.
- `Contacto`: Información de contacto del becado.
- `DatosLaborales`: Estado y actividad laboral actual.
- `DatosAcademicos`: Información académica y nivel de inglés.
- `Beca`: Detalles sobre la beca asignada.
- `Mentor`: Datos del mentor asignado.
- `Becado_Mentor`: Relación uno a uno entre becado y mentor.
- `Informe_Becado`: Seguimiento del desempeño del becado.
- `Informe_Mentor`: Seguimiento desde el punto de vista del mentor.