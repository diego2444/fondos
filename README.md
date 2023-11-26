# gnome-fondo-dinamico
Script para poner un fondo dinámico en gnome dependiendo de la hora :)

## para cambiar las imágenes
Mover a la "fondos" la imagen deseada con el nombre y extensiones (jpeg) iguales

## para ejecutar el script
primero hay que entrar al directorio desde la terminal
```
cd fondos
```
y luego, dentro del directorio, ejecutar este comando
```
nohup ./fondo.sh &
```
Notas:
- toda la carpeta tiene que tener permisos
- las imágenes no se cambian en el modo noche
- se va a ejecutar cada hora pero dependerá de la sesión actual y si cierras sesión los procesos se perderán
- los resultados y errores se redirigiran a "nohup.out" dentro del directorio




imágenes de: https://imgur.com/gallery/9wgzU
