## Formulario de Auditorias 

En la especificación se especifican los campos que tiene un formulario (pantalla de captura) para una auditoria. Los campos de una auditoría **pras** (pendiente cambiar nombre) son:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/tabla_pras.png?raw=true)

En la especificación hay varios campos que son de selección:

 - tipo_auditoria
 - organo_fiscalizador
 - tipo_entidad
 - entidades
 - estatus_auditorias
 - fondos
 - municipios
 - acciones
 - observaciones
 - observaciones
 - clasificaciones
 - tipos

 Son los mismos campos que en la tabla **pras** tienen llave externa o foranea. Estos campos representa un *select* o *campo de selección* dentro del formulario. En el formulario cada *select* debe de tener sus opciones de las cuales seleccionar la opción para la auditoria capturada. 

### (Ejemplo) Punto 1 de la especificación "Tipo Auditoria"

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/select.jpg?raw=true)

En código HTML es:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/select.png?raw=true)

Donde los *value* son los valores **ID** en la tabla ***tipo_auditoria*** de la base de datos.

En la base de datos el catálogo para este *select* se creo asi:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/tabla_tipo_auditorias.jpg?raw=true)

El **ID** se autogenero pero ese valor se guardará en la columna ***tipo_auditoria_id*** de la tabla ***pras*** y que apunta al valor de la tabla ***tipo_auditoria***.



Se requiere hacer los mismo para los demás campos con llave primaria dentro de ***pras***:
 - Crear la tabla que contendrá los valores (opciones del select).
 - Insertar los valores de esas opciones.
