#audit_pc

#$fileN = 'C:\users\sam\Desktop\Scann\audit\audit.csv'

#list tout les services en mode : running
#$service_run = Get-Service | Where-Object {$_.status -eq 'Running'}
              

#foreach ($objet in $service_run)
#    {
#    Write-Host $objet | export-csv 'C:\users\sam\Desktop\Scann\audit\audit.csv'
 #   }
   

#affiche le profil de connexion Int
#$inet = Get-NetConnectionProfile

####Variable pour sortie fichier#######

$var1 = 'C:\audit\audit_service.csv'
$var2 = 'C:\audit\audit_net.csv'
$var3 = 'C:\audit\Computer_info.csv'

####List service run ####

$var_service = Get-Service | Where-Object {$_.status -eq 'Running'} | Out-File $var1

####Profil internet ####

$var_int = Get-NetConnectionProfile | Out-File $var2

### info ###
$var_host = Get-ComputerInfo| Out-File $var3



<#

#>
    



#$var1  = Get-ChildItem -Path 'C:\Users\sam\Desktop\Scann\audit\' | Where-Object {$_.name -eq 'test.txt'}
