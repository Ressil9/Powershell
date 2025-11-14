#commande essentiel a connaitre 



#Permet de trouver des commande
Get-Command -Verb New
Get-Command -Module ActiveDirectory

#Permet d'expliquer a quoi sert la commande
Get-Help Start-Service
#rajoute des exemples d'utilisation de la commande 
Get-Help Start-Service -Examples
#donne un descriptif global de la commande 
Get-Help Start-Service -Parameter
#donne une aide plus complete
Get-Help Start-Service -Full
#donne une aide en ligne
Get-Help Start-Service -Online
#retourne les methodes et les proprietes
Get-Service | Get-Member


$tab = Get-Process | Format-Table Name, StartTime


Get-Service -Name "wuauserv"
#info sur les lecteurs du systeme C: E: etc
Get-PSDrive





#lister le contenu d'un dossier
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell"
#lister le contenu d'un dossier et de ses sous-dossiers
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell" -Recurse
#filtrage de la liste 
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau" -Directory
#liste tous les fichiers dont l'extension est en pdf
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau" -Recurse -Filter "*.pdf"
#exlue tous les fichiers dont l'exension est en PDF
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau*" -Directory -Exclude "*.jpeg","*.pdf"

#donne des informations precises sur un fichier
Get-Item "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell\textFile4-15cmdl.txt" |`
Select-Object Name, CreationTime,LastAccessTime, LastWriteTime


#lit le fichier dont le chemin est fournit en ligne de commande 
Get-Content -Path "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell\textFile4-15cmdl.txt"
#lit le fichier est ne prend seulement que les 3 premieres lignes
Get-Content -Path "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell\textFile4-15cmdl.txt" -TotalCount 3
#lit le fichier est ne prend seulement que les 3 denieres lignes
Get-Content -Path "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell\textFile4-15cmdl.txt" -Tail 3
#cette commande permet de definir un chemin 
Set-Location "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A"





#a creer un repertoire sur le bureau
New-Item -Path "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau" -Name "CreateFromPowershell" -ItemType Directory

Set-Location "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau"
#creer un fichier sur le repertoire courant
New-Item -Path . -Name "FileCreatedFromPowershell" -ItemType File
#creer plusieurs fichiers avec des chemins diffrents 
New-Item -ItemType File -Path "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\nouveauSupp1",`
"C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\nouveauSupp2"

Remove-Item "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\*" -Include "*.txt"

Get-Date
Get-Date -Format "yyyyMMdd"
Get-Date -Format "dd/MM/yy"
Get-Date -Format "yyyyMMdd_hhmm"


Test-Path "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau"

#commande pour pinguer
Test-Connection 1.1.1.1 -Count 1
#ping en continue
Test-Connection 1.1.1.1 -Continuous
 
#commande pour pinguer
Test-Connection www.facebook.fr, www.apple.com -Count 1

#commande pour identifier l'itiniraire reseau -tracert ou -Traceroute
www.facebook.fr -tracert