<html>

  <body>
    <h1>PowerAdmin</h1>
    <p>Este código contiene tres funciones en PowerShell para la administración de usuarios y permisos en sistemas Windows.</p>
    <h2>Requisitos</h2>
    <ul>
      <li>Windows PowerShell 5.1 o superior</li>
      <li>Se requiere tener permisos de administrador para poder ejecutar el script.</li>
    </ul>
    <h2>Instalación</h2>
    <ol>
      <li>Descargar el archivo PowerAdmin.ps1</li>
      <li>Abrir PowerShell en modo administrador.</li>
      <li>Ejecutar el siguiente comando: Set-ExecutionPolicy Unrestricted</li>
      <li>Navegar hasta la ubicación donde se encuentra el archivo PowerAdmin.ps1</li>
      <li>Ejecutar el siguiente comando: .\PowerAdmin.ps1</li>
    </ol>
    <h2>Funciones</h2>
    <p>El código contiene las siguientes funciones:</p>
    <h3>New-User</h3>
    <p>Función para crear un nuevo usuario.</p>
    <ul>
      <li>Parámetros:</li>
      <ul>
        <li>Username: Nombre de usuario (obligatorio).</li>
        <li>Password: Contraseña (obligatorio).</li>
        <li>Description: Descripción del usuario (opcional).</li>
      </ul>
      <li>Ejemplo de uso:</li>
      <pre><code>New-User -Username "johndoe" -Password "mysecretpassword" -Description "John Doe"</code></pre>
    </ul>
    <h3>Set-UserPermissions</h3>
    <p>Función para modificar los permisos de un usuario en una carpeta.</p>
    <ul>
      <li>Parámetros:</li>
      <ul>
        <li>Username: Nombre de usuario (obligatorio).</li>
        <li>FolderPath: Ruta de la carpeta (obligatorio).</li>
        <li>AccessLevel: Nivel de acceso (obligatorio).</li>
      </ul>
      <li>Ejemplo de uso:</li>
      <pre><code>Set-UserPermissions -Username "johndoe" -FolderPath "C:\Data" -AccessLevel "ReadAndExecute"</code></pre>
    </ul>
    <h3>Remove-User</h3>
    <p>Función para eliminar un usuario.</p>
    <ul>
      <li>Parámetros:</li>
      <ul>
        <li>Username: Nombre de usuario (obligatorio).</li>
      </ul>
      <li>Ejemplo de uso:</li>
      <pre><code>Remove-User -Username "johndoe"</code></pre>
    </ul>
    <h2>Contribuir</h2>
    <p>Si deseas contribuir al desarrollo del script, puedes hacerlo a través de Pull Requests en Github.</p>
  </body>
</html>
