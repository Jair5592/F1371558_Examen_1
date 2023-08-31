#include <stdint.h>

int main()
{
    volatile uint8_t* mcucr = (volatile uint8_t*) 0x55;     // Puntero mcucr que apunta a la dirección 0x55, donde se ubica el registro MCUCR.
    volatile uint8_t* portC = (volatile uint8_t*) 0x28;     // Puntero portC que apunta a la dirección 0x28, donde se ubica el registro PORTC.
    volatile uint8_t* ddrC = (volatile uint8_t*) 0x27;      // Puntero ddrC que apunta a la dirección 0x27, donde se ubica el registro DDRC.
    volatile uint8_t* pinC = (volatile uint8_t*) 0x26;      // Puntero pinC que apunta a la dirección 0x26, donde se ubica el registro PINC.
    volatile uint8_t* portB = (volatile uint8_t*) 0x25;     // Puntero portB que apunta a la dirección 0x25, donde se ubica el registro PORTB.
    volatile uint8_t* ddrB = (volatile uint8_t*) 0x24;      // Puntero ddrB que apunta a la dirección 0x24, donde se ubica el registro DDRB.

    *mcucr |= (1<<4);                                       // Colocar en alta (1) el bit 4 del registro MCUCR.
    *portC |= (1<<2);                                       // Colocar en alta (1) el bit 2 del registro PORTC.
    *ddrC &= ~(1<<2);                                       // Colocar en baja (0) el bit 2 del registro DDRC. Configura PC2 como entrada.
    *portB &= ~(1<<5);                                      // Colocar en baja (0) el bit 5 del registro PORTB. Inicializa a PB5 en 0.
    *ddrB |= (1<<5);                                        // Colocar en alta (1) el bit 5 del registro DDRB. Configura PB5 como salida.

    while(1)
    {
        uint8_t valorEntrada = *pinC;                       // Almacenar en la variable valorEntrada el dato de 8 bits recibido en el registro PINC.
        if((valorEntrada & (1<<2)) == 4)                    // Verificación del bit 2 del dato almacenado. Pregunta si PC2 a recibido un 1.
        {
            *portB |= (1<<5);                               // Si PC2 a recibido un 1, PB5 entrega un 1.
        }
        else
        {
            *portB &= ~(1<<5);                              // Si PC2 a recibido un 0, PB5 entrega un 0.
        }
    }
    return 0;
}