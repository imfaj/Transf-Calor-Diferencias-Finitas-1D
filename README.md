# Métodos Númericos para la Conducción de Calor
___

Programa hecho en Matlab usando App Designer, para analizar la transferencia de calor en un curador de resinas. Las resinas pueden ser de espesor variable y de diferentes materiales. Trabaja con el método de diferencias finitas explícito.<br><br>

En la siguiente imagen se muestra el esquema del curador de resinas: <br>
<p align="center">
  <img width="auto" height="auto" src="./AppImages/Curador.png">
</p><br>

Se hacen las siguientes consideraciones:
* Se considera un sistema de régimen transitorio en una dimensión.
* Coordenadas rectangulares.
* Se toma la superficie inferior como aislada.
* Se considera la transferencia de calor por convección y por conducción.
* Se consideran tres regiones M=3.
* Se asume que 𝑇<sup>i</sup>  = 𝑇0<sup>i</sup>  = 𝑇1<sup>i</sup>  = 𝑇2<sup>i</sup>  = Temperatura inicial de la resina ( °𝐶 )<br><br>

Al introducir los siguientes datos:
* Material de la resina
* Densidad ( ρ ) [ kg/m<sup>3</sup> ]
* Espesor ( L ) [ m ]
* Calor Especifico ( C<sub>p</sub> ) [ J/kg °𝐶 ]
* Coeficiente de Transferencia de Calor por convección ( h ) [ W/m<sup>2</sup> °𝐶 ]
* Conductividad Térmica ( k ) [ W/m °𝐶 ]
* Tiempo Transcurrido [ minutos ]
* Temperatura Inicial ( T<sub>i</sub> ) [ °𝐶 ]
* Temperatura del aire ( T<sub>oo</sub> ) [ °𝐶 ]


## Como se Utiliza?
---
1. Se debe tener instalado Matlab.<br>
1. Para iniciar el programa dar doble click al mismo en la carpeta donde se ubique. <br>
  ![icon](./AppImages/icon.png)<br>
  **Nota:** Si no se abre o se abre de manera incorrecta, escribir en la ventana de comandos o Command Window " _**appdesigner**_ "  y abrir desde la ventana emergente localizando el archivo y despues presionando el botón **Run**. <br>
  1. Se abrira el programa listo para utilizar. Se deben introducir los datos iniciales que se solicitan en la pestaña _Registro de Datos_.<br>
  ![AppEjecutada](./AppImages/AppEjecutada.png)<br>
  ![DatosListos](./AppImages/DatosListos.png)<br>
  1. Luego, dirigirse a la pestaña _Fourier_. Allí el programa aplica el criterio de estabilidad para determinar el máximo ∆t, al dar click en el botón **Calcular**. <br>
  ![Estabilidad](./AppImages/Estabilidad.png)<br>
  1. Posteriormente, se solicita introducir el número de iteraciones que desea que el programa realice, las mismas se seleccionan a conveniencia del usuario. El programa automaticamente revisará si estas cumplen con el criterio de estabilidad y mostrará el diferencial de tiempo que corresponde a ese número de iteraciones. Si lo cumplen se encendera la luz verde.<br><br>
  En este caso no cumple: <br>
  ![NoCumple](./AppImages/NoCumple.png)<br><br>
  En este caso lo cumple: <br>
  ![Cumple](./AppImages/Cumple.png)<br>
  1. Despues dirijase a la pestaña _Temperaturas_. Al dar click en el botón **Ver Temperaturas**, apareceran las temperaturas correspondientes a los tres nodos considerados de la resina en el tiempo transcurrido.<br>
  **Nota:** Según el número de iteraciones, este resultado podría tardar más en resolverse.
  ![VerTemp](./AppImages/VerTemp.png)<br><br>
  La ubicación de esos tres nodos en la resina se obtiene mediante la ecuación: ∆x = L/( M- 1 ), siendo la distancia desde el origen del nodo central.


___
___
