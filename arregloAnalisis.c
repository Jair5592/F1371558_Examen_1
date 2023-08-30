#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main()
{
    srand(time(NULL));

    int arregloNumeros[15];                                     // Declaración de un arreglo de 15 elementos.

    printf("El arreglo es: ");
    for(int i = 0; i < 15; i++)
    {
        arregloNumeros[i] = (rand() % 99) + 2;                 // Implementación del arreglo con números enteros aleatorios de 2 a 100.
        printf("%d ", arregloNumeros[i]);                       // Impresión de los elementos del arreglo en pantalla.
    }

    printf("\n");

    for(int i = 0; i < 15; i++)                                 // Iteración de los elementos del arreglo.
    {
        int sumaDivisores = 0;
        for(int j = 1; j < arregloNumeros[i]; j++)
        {
            if(arregloNumeros[i] % j == 0)                      // Detección de divisores de cada elemento del arreglo, menores a sí mismo.
            {
                sumaDivisores += j;                             // Suma de los divisores del elemento.
            }
        }
        if(sumaDivisores < arregloNumeros[i])                   // Proceso para asignar la etiqueta correspondiente a cada elemento del arreglo.
        {
            printf("\n%d - Deficiente", arregloNumeros[i]);
        }
        else if(sumaDivisores > arregloNumeros[i])
        {
            printf("\n%d - Abundante", arregloNumeros[i]);
        }
        else
        {
            printf("\n%d - Perfecto", arregloNumeros[i]);
        }   
    }
    return 0;
}