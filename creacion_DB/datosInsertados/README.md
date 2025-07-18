# Scripts de Inserción de Datos

## Descripción
Este directorio contiene los **scripts SQL** para **poblar las tablas de la base de datos** relacionadas con el sistema académico.  
Los datos fueron diseñados para **simular escenarios reales de manera representativa**, pero **no corresponden a información auténtica**.

---

## Contenido de los Scripts
- `insertar_beca.sql` → Inserción de becas.  
- `insertar_becado_mentor.sql` → Relación entre becados y mentores.  
- `insertar_becados.sql` → Inserción de datos de becados.  
- `insertar_contacto.sql` → Información de contacto de becados y mentores.  
- `insertar_datosacademicos.sql` → Datos académicos de los becados.  
- `insertar_datoslaborales.sql` → Información laboral de los becados.  
- `insertar_informe_becado.sql` → Informes relacionados a becados.  
- `insertar_informe_mentor.sql` → Informes relacionados a mentores.  
- `insertar_mentor.sql` → Inserción de datos de mentores.  

---

## ▶Cómo ejecutar
1. Asegúrate de haber creado previamente la base de datos y sus tablas (`create_tables.sql`).
2. Ejecuta cada script en el siguiente orden recomendado:
   ```sql
   USE NombreBaseDatos;
   :r insertar_becados.sql
   :r insertar_mentor.sql
   :r insertar_contacto.sql
   :r insertar_datosacademicos.sql
   :r insertar_datoslaborales.sql
   :r insertar_beca.sql
   :r insertar_becado_mentor.sql
   :r insertar_informe_becado.sql
   :r insertar_informe_mentor.sql
   ```
3. Verifica la carga con:
   ```sql
   SELECT * FROM NombreTabla;
   ```

---

## Nota Final
Estos datos son **ficticios** y fueron generados únicamente con fines **didácticos**.  
**No utilizar en entornos productivos.**
