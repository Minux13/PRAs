## Formulario de Auditorias 

En la especificación se mencionan los campos que tiene un formulario (pantalla de captura) para una auditoria. Los campos de una auditoría **pras** (pendiente cambiar nombre) son:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/tabla_pras.png?raw=true)

En la especificación hay varios puntos que son campos de tipo selección:

 - tipo_auditoria
 - organo_fiscalizador
 - tipo_entidad
 - entidades
 - estatus_auditorias
 - fondos
 - municipios
 - acciones
 - observaciones
 - estatus observaciones
 - clasificaciones
 - tipos

 Son los mismos campos que en la tabla **pras** tienen llave externa o foranea. Estos campos representa un *select* o *campo de selección* dentro del formulario. En el formulario cada *select* debe de tener sus opciones de las cuales seleccionar la opción para la auditoria capturada. 

### (Ejemplo) Punto 1 de la especificación "Tipo Auditoria"

El campo de Tipo de Auditoría se debe de ver de la siguiente manera:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/select.jpg?raw=true)

En código HTML es:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/select.png?raw=true)

Los *\<select\>* y *\</select\>* representa y encienran el campo tipo_auditoria, donde *\<option\>* y *\</option\>* contienen todas las tipos de auditoria que se especifico. Los *value* son los valores de **ID** en la tabla ***tipo_auditoria*** de la base de datos.

Este *select* se alimenta de la base de datos, del catálogo **tipo_auditoria** y se creo así:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/tabla_tipo_auditorias.jpg?raw=true)

Se requiere crear las tablas en la base de datos para los demás campos de tipo selección, que en la base de datos se guardan en la tabla ***pras*** y llevan una llave primaria que apunta a su catálogo. Como en el ejemplo de **tipo de auditoria** se requiere:
 - Crear la tabla (una tabla por cada campo tipo selección). Las tablas que faltan son:
    - tipo_auditoria <span style="color:blue">( Se describe en este ejemplo )</span>
    - organo_fiscalizador <span style="color:blue">(Ya esta creada)</span>
    - tipo_entidad <span style="color:blue">(Ya esta creada)</span>
    - entidades
    - estatus_auditorias
    - fondos
    - municipios <span style="color:blue">(Ya esta creada)</span>
    - acciones
    - observaciones
    - estatus observaciones
    - clasificaciones
    - tipos

 - Insertar en las tablas creadas los valores u opciones correspondientes para cada uno de estos campos tipo selección.


