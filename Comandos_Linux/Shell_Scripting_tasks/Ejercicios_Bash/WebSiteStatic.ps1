<#
En el siguiente script se ejecutan las siguientes actividades:
- Instalar un servidor web Microsft Internet Information Services (IIS)
- Crear un sitio web sencillo
- Establecer la contrasena del usuario administrador
#>

<powershell>

# Installing web server
Install-windowsFeature -name Web-Server -IncludeManagementTools

# Getting website code
wget hhttps://us-east-1-tcprod.s3.amazonaws.com/courses/CUR-TF-100-
EDCOMP/v1.0.4.prod-ef70397c/01-Lab-ec2/scripts/code.zip -outfile
"C:\Users\Administrator\Downloads\code.zip"   # It's necessary change the root path

# Unzipping website code
Add-Type -AssemblyName System.IO.Compression.FileSystem

function Unzipping
{
    param([string]$zipfile, [string]$outpath)
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "C:\Users\Administrator\Downloads\code.zip" "C:\inetpub\"

# Setting Administrator password
$Secure_String_Pwd = ConvertTo-SecureString "P@ssWOrD!" -AsPlainText -Force
$UserAccount = Get-LocalUser -Name "Administrator"
$UserAccount | Set-LocalUser -Password $Secure_String_Pwd

</powershell>

