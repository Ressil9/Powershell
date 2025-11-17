################COMMANDES ESSENTIELLES À CONNAÎTRE###########################



#Affiche toutes les commandes PowerShell dont le verbe est New
# (ex : New-Item, New-Object, New-Service…)
Get-Command -Verb New



#Affiche toutes les commandes disponibles dans le module ActiveDirectory
#(ex : Get-ADUser, Get-ADGroup…)
Get-Command -Module ActiveDirectory



#Affiche une description générale de la commande Start-Service.
Get-Help Start-Service
#Affiche uniquement des exemples pratiques d’utilisation.
Get-Help Start-Service -Examples
# Liste tous les paramètres disponibles pour cette commande.
Get-Help Start-Service -Parameter
#Donne toute l’aide complète : description, syntaxe, paramètres, exemples, remarques.
Get-Help Start-Service -Full
# Ouvre l’aide officielle sur le site Microsoft dans le navigateur.
Get-Help Start-Service -Online





#➡️Get-Service retourne les services Windows.
#➡️ Get-Member affiche toutes les propriétés et méthodes disponibles sur ces objets.
Get-Service | Get-Member



#➡️ Récupère tous les processus.
#➡️ Formatte l’affichage en tableau avec seulement Name et StartTime.
#➡️ Stocke le résultat dans la variable $tab.
$tab = Get-Process | Format-Table Name, StartTime



#➡️ Affiche le service Windows Windows Update (wuauserv).
#👉 Permet de connaître son état (Running, Stopped, etc.).
Get-Service -Name "wuauserv"




#Liste les lecteurs disponibles du système : C: E: etc
Get-PSDrive





#lister le contenu d'un dossier
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell"
#lister le contenu d'un dossier et de ses sous-dossiers
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau\Powershell" -Recurse
#Liste uniquement les dossiers, pas les fichiers
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau" -Directory
#liste tous les fichiers dont l'extension est en pdf
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau" -Recurse -Filter "*.pdf"
#exlue tous les fichiers dont l'exension est en PDF
Get-ChildItem "C:\Users\MachNP\OneDrive - Luxottica Group S.p.A\Bureau*" -Directory -Exclude "*.jpeg","*.pdf"

#➡️ Récupère un fichier précis.
#➡️ Affiche uniquement les propriétés sélectionnées :
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
Test-Connection www.facebook.fr -Traceroute
