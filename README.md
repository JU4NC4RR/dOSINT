# dOSINT
dOSINT es una herramienta diseñada para facilitar el análisis OSINT (Open Source Intelligence) y la esteganografía sin necesidad de iniciar una máquina virtual. Mediante el uso de Docker, proporciona un entorno listo para usar con varias aplicaciones de OSINT y esteganografía preinstaladas, lo que permite ahorrar tiempo y recursos al usuario.

## 🚀 Características
- Aplicaciones OSINT preinstaladas: Incluye diversas herramientas de OSINT para facilitar la recopilación y análisis de información desde fuentes públicas.

- Herramientas de esteganografía: Integración de herramientas para el análisis de datos ocultos en imágenes, audios, textos y otros medios.

- Contenedor Docker: La solución está basada en Docker, por lo que no es necesario configurar máquinas virtuales ni instalar dependencias manualmente.

- Rápido y eficiente: Ejecuta las herramientas directamente desde el contenedor sin la sobrecarga de una VM completa.

- Facilidad de uso: Solo necesitas un archivo docker-compose.yml o un script .sh para iniciar el contenedor y comenzar a trabajar.

## 🛠️ Aplicaciones incluidas

- **[ExifTool](https://github.com/exiftool/exiftool)**: Herramienta poderosa para leer, escribir y editar metadatos en archivos de imágenes, videos y otros tipos de archivos.
  
- **[StegHide](https://github.com/graphicore/steg-hide)**: Herramienta de esteganografía para ocultar datos dentro de archivos de imagen. Es útil para ocultar mensajes en imágenes de forma segura.

- **[StegSeek](https://github.com/RickdeJager/StegSeek)**: Herramienta para encontrar mensajes ocultos en imágenes mediante técnicas de esteganografía, utilizando una búsqueda rápida y eficiente.

(Todas las herramientas están preinstaladas y listas para usarse en el contenedor.)
