## Formulario de Auditorias 

Una auditoría se registra con los campos de la tabla **pras**.

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/tabla_pras.jpg?raw=true)

En la especificación hay varios campos que son de selección, en los cuales sus opciones a seleccionar deben de crearse, esto es crear los catalogos con esas opciones. Los campos de selección son:

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

### Punto 1 de la especificación. Tipo Auditoria (Ejemplo)

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/select.jpg?raw=true)

En código HTML es:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/select.png?raw=true)

con *value* los valores **ID** en la tabla ***tipo_auditoria***

En la base de datos el catálogo para este *select* se creo asi:

![alt text](https://github.com/Minux13/PRAs/blob/master/imagesMD/tabla_tipo_auditorias.jpg?raw=true)


\*\*\*\*\*\*\* Se requiere hacer los mismo para los demas campos tipo select.
