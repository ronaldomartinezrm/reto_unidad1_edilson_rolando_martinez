## Primer Punto: Numpy y Fundamentos Python

### 1.1 Setup del entorno virtual: reto_u1 

![alt text](image-2.png)

### 1.2 Algebra lineal aplicada:
Me aparece como resultado el termino nan, por el motivo de que hay columnas con valores faltantes o nulos, para solucionar este resultado debemos utilizar pandas.

![alt text](image.png)

Para poder dare solución a esto, hay diferentes maneras, una de ellas es utilizar la función np.nan_to_num: Esta función de NumPy hace exactamente lo mismo que .fillna(0) de Pandas: transforma todos los NaN en ceros.
Podemos realizarlo de dos maneras:
Utilizando multiplicación matricial con numpy.dot y con el operador @

![alt text](image-1.png)


### 1.3 Estadísticas con Numpy
Cuando convertimos una columna a un arreglo estrictamente puro de Numpy y hay valores nulos (nan) dentro de ella siempre nos da como resultado (nan), para ello utilizamos el prefijo nan, Numpy ofrece una familia de funciones (np.nanmean, np.nanmedian, etc) estas funciones lo que hacen es ignorar todos los nulos que se presentar dentro de la columna.
Para sacar valores estadísticos del precio unitario con Numpy se realiza de la siguiente manera:

![alt text](image-3.png)




