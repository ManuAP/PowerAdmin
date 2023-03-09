# Función para crear un nuevo usuario
function New-User {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Username,
        [Parameter(Mandatory = $true)]
        [string]$Password,
        [string]$Description = ""
    )

    $user = New-Object System.DirectoryServices.AccountManagement.UserPrincipal([System.DirectoryServices.AccountManagement.PrincipalContext]::Current)
    $user.SamAccountName = $Username
    $user.SetPassword($Password)
    $user.Description = $Description
    $user.Save()
}

# Función para modificar los permisos de un usuario en una carpeta
function Set-UserPermissions {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Username,
        [Parameter(Mandatory = $true)]
        [string]$FolderPath,
        [Parameter(Mandatory = $true)]
        [string]$AccessLevel
    )

    $acl = Get-Acl $FolderPath
    $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($Username, $AccessLevel, "Allow")
    $acl.SetAccessRule($accessRule)
    Set-Acl $FolderPath $acl
}

# Función para eliminar un usuario
function Remove-User {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Username
    )

    $user = [adsi]"WinNT://./$Username,user"
    $user.Delete()
}
