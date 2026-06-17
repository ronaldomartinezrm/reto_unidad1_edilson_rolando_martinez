## Primer Punto: Numpy y Fundamentos Python

### 1.1 Setup del entorno virtual: reto_u1 

![alt text](image-2.png)

### 1.2 Algebra lineal aplicada:
Me aparece como resultado el termino nan, por el motivo de que hay columnas con valores faltantes o nulos, para solucionar este resultado debemos utilizar pandas.

![alt text](image.png)

Para poder dare solución a esto, hay diferentes maneras, una de ellas es utilizar la función np.nan_to_num: Esta función de NumPy hace exactamente lo mismo que .fillna(0) de Pandas: transforma todos los NaN en ceros.

![alt text](image-1.png)




### 1.3 Estadísticas con Numpy
Al usar directamente np.mean() de Numpy no duvuelve un número común de Python, sino un tipo de dato propio llamado np.float64 (un número decimal de precisión de 64 bits), en el ejemplo se ve reflejado lo anteriormente dicho, porque se está usando la función np.mean() de NumPy directamente sobre una columna de un DataFrame de Pandas.


