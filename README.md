# SistemaGestionGastos

# Instrucciones para ejecutar un script de Base de Datos y su Seed

## 1. Requisitos Previos
Antes de comenzar, asegúrate de tener:
- **Servidor de base de datos** en funcionamiento (SQL Server).
- Herramienta para ejecutar los scripts, como:
  - **SQL Server Management Studio (SSMS)** para SQL Server.
- El archivo de script de creación de la base de datos (`script_bd.sql`).
- El archivo de seed para datos iniciales (`seed_bd.sql`).

---

## 2. Pasos para ejecutar el Script de la Base de Datos
1. **Abre tu herramienta de base de datos**.
2. **Conéctate al servidor de base de datos**:
   - Introduce las credenciales necesarias (usuario, contraseña, host, puerto, etc.).
3. **Selecciona la base de datos adecuada**:
   - El script incluye la creación de la base de datos.
4. **Carga el archivo del script**:
   - Abre el archivo `script_bd.sql` en la herramienta.
   - Revisa el contenido para verificar que se ajusta a tus necesidades.
5. **Ejecuta el script**:
   - Haz clic en el botón de "Ejecutar" o usa el comando adecuado según la herramienta:
     - En SSMS: `F5`.

---

## 3. Pasos para ejecutar el Seed (datos iniciales)
1. **Abre el archivo de seed**:
   - Carga el archivo `seed_bd.sql` en la herramienta de base de datos.
2. **Verifica las inserciones**:
   - Asegúrate de que las tablas referenciadas en el seed ya existan.
3. **Ejecuta el script de seed**:
   - Usa la misma herramienta y procedimiento que el script de creación de la base de datos.
4. **Confirma que los datos se hayan insertado correctamente**:
   - Ejecuta una consulta sencilla para verificar los datos:
     ```sql
     SELECT * FROM Gastos;
     ```

---

## 4. Notas Importantes
- **Orden de ejecución**: Siempre ejecuta el script de creación de la base de datos antes que el seed.
- **Respaldo previo**: Si trabajas en un entorno existente, realiza un respaldo de los datos antes de ejecutar los scripts.
- **Errores comunes**:
  - Si el script falla, verifica que no haya conflictos de nombres, permisos insuficientes o errores de sintaxis.
  - Lee los mensajes de error que proporciona la herramienta para corregir cualquier problema.

---

¡Y listo! Con estos pasos deberías ser capaz de ejecutar los scripts y poblar tu base de datos correctamente. 🚀
