# Tailwind App


### Funciones y Directivas

https://tailwindcss.com/docs/functions-and-directives

Directivas Tailwind CSS v3.0
Una directiva es una instrucción que nos sirve para insertar código a nuestro archivo final CSS.

@tailwind base → Inicializa todos los elementos de nuestro HTML sin estilo.
@tailwind components → Nos permite acceder a todas las clases de tailwind.
@tailwind utilities → Agrega todas las utilidades al proyecto y nos permite acceder a ellas.
Otras directivas:

@tailwind → Inserta las directivas base, components, utilities y variants.
@layer → Le dice a tailwind a qué bloque de código pertenece un conjunto de estilos personalizados. Las capas válidas son base, componentes y utilidades.
@apply → Incorpora cualquier clase de Tailwind en el CSS personalizado, es útil cuando se necesita escribir CSS personalizado.
@variants → Es útil para controlar dónde Tailwind inyecta el hover, focus, responsive u otras variantes de cada clase.
Las directivas se diferencian por un @ al inicio, también se tienen las funciones screen() y theme().


Se pueden probar las diferentes directivas y configuraciones en:
https://play.tailwindcss.com/

### Medidas y Breakpoints

Un breakpoint es el salto en el que cambia la pantalla de layout. Se pueden manipular los estilos de nuestro archivo en función al tipo de dispositivo.

Debido a que Tailwind es mobile first, todo el tiempo se estará trabajando con el breakpoint small.

Breakpoints más comunes:

320px → Small → Dispositivo mobile.
768px → Medium → Tablet.
1280px → Large → Computadora.
En el sizing, para trabajar las medidas de width y height se usa la clase w-{number} y h-{number} respectivamente, cabe mencionar que cada unidad es igual a 0.25rem. Por ejemplo, w-4 es lo mismo que width: 1rem;

Las medidas porcentuales se manejan como una fracción, w-{fraction}. Por ejemplo: w-1/2 es lo mismo que width: 50%;. También existe w-auto (width: auto)

Otras propiedades para width: min-w-{number}, max-w-{number}, min-w-full.

Otras propiedades para height: min-w-{number}, max-w-{number}, min-w-full.

Más propiedades en la documentación https://tailwindcss.com/docs/min-width

Ejemplo practico:
```
<div class="w-auto h-screen bg-sky-200 flex">
  <div class="w-1/2 h-1/4 bg-sky-700"></div>
  <div class="w-1/4 h-1/2 bg-cyan-400"></div>
  <div class="w-1/4 h-32 bg-cyan-700"></div>
  <div class="w-1/3 h-72 bg-cyan-900"></div>
</div>
```

### Flexbox CSS

Flexbox es un modelo de layout que funciona principalmente respecto a un eje X y un eje Y.

Controlando todo de manera unidimensional, esto se traduce al uso de una fila o columna.


### Grid CSS

El layout de Grid funciona como una cuadrícula compuesta de fila y columnas, la cual nos permite dividir nuestra página en áreas o secciones.

# Projecto

Enlace de diseño en figma: https://www.figma.com/file/aPbr2Rhd5SCUjNYu6NRPPB/Platzi-Travel-Mockups?type=design&node-id=0-1&mode=design



# Forms, Typography y Aspect ratio


Tailwind CSS es un framework tan completo que además cuenta con plugins oficiales. En esta clase te voy a presentar plugins muy utilizados en la creación de sitios web: Forms, Typography y Aspect ratio.

Forms
Este plugin nos permite resetear los estilos predeterminados con los que cuentan los formularios, de esta manera es posible sobrescribir los estilos y trabajar con clases de utilidades dentro de Tailwind. Si te interesa conocer más acerca de este plugin acá te dejo los links a la documentación y ejemplos.

Instalación:
```
# Using npm
npm install @tailwindcss/forms

# Using Yarn
yarn add @tailwindcss/forms
```

Agregando el plugin al archivo de configuración tailwind.config.js:
```
module.exports = {
  theme: {
    // ...
  },
  plugins: [
    require('@tailwindcss/forms'),
    // ...
  ],
}
```


Typography
Ahora puedes tener control sobre estilos vanilla con los que cuenta HTML, elementos como headings, paragraphs, listas, entre otros. El plugin de typography agrega una nueva clase ‘prose’ que permite dar un mejor formato a estos elementos.

Puedes encontrar más información dentro de la documentación y puedes ver algunos ejemplos en Tailwind Play haciendo click acá.

Instalación:
```
# Using npm
npm install -D @tailwindcss/typography
```

Agregando el plugin al archivo de configuración tailwind.config.js:
```
module.exports = {
  theme: {
    // ...
  },
  plugins: [
    require('@tailwindcss/typography'),
    // ...
  ],
}
```

Aspect ratio
Aspect ratio es la relación entre el ancho y el alto de la imagen o video. En muchas ocasiones cuando modificamos las dimensiones de elementos o imágenes podemos llegar a tener problemas con el aspect ratio.

Instalación:
```
# Using npm
npm install @tailwindcss/aspect-ratio

# Using Yarn
yarn add @tailwindcss/aspect-ratio
```

Agregando el plugin al archivo de configuración tailwind.config.js:
```
module.exports = {
  theme: {
    // ...
  },
  plugins: [
    require('@tailwindcss/aspect-ratio'),
    // ...
  ],
}
```

Este plugin llega a resolver el problema integrando la clase ‘aspect’ que nos permite establecer un aspect ratio de manera fija para nuestros elementos. Para conocer más acerca de esto te dejó los links de la documentación oficial de Tailwind.