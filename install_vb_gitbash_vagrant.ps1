

# Télécharger le programme d'installation de VirtualBox depuis le site officiel
$virtualBoxUrl = "https://download.virtualbox.org/virtualbox/6.1.26/VirtualBox-6.1.26-145957-Win.exe"
$virtualBoxInstaller = "VirtualBoxInstaller.exe"
Invoke-WebRequest -Uri $virtualBoxUrl -OutFile $virtualBoxInstaller

# Installer VirtualBox en mode silencieux
Start-Process -Wait -FilePath $virtualBoxInstaller -ArgumentList "/S"

# Supprimer le programme d'installation de VirtualBox
Remove-Item $virtualBoxInstaller

# Télécharger le programme d'installation de Git Bash
$gitBashUrl = "https://gitforwindows.org/download/win64/Git-2.33.0-64-bit.exe"
$gitBashInstaller = "GitBashInstaller.exe"
Invoke-WebRequest -Uri $gitBashUrl -OutFile $gitBashInstaller

# Installer Git Bash en mode silencieux
Start-Process -Wait -FilePath $gitBashInstaller -ArgumentList "/S"

# Supprimer le programme d'installation de Git Bash
Remove-Item $gitBashInstaller

# Télécharger le programme d'installation de Vagrant
$vagrantUrl = "https://releases.hashicorp.com/vagrant/2.2.18/vagrant_2.2.18_x86_64.msi"
$vagrantInstaller = "VagrantInstaller.msi"
Invoke-WebRequest -Uri $vagrantUrl -OutFile $vagrantInstaller

# Installer Vagrant en mode silencieux
Start-Process -Wait -FilePath "msiexec.exe" -ArgumentList "/i $vagrantInstaller /quiet"

# Supprimer le programme d'installation de Vagrant
Remove-Item $vagrantInstaller

Write-Host "Installation de VirtualBox, Git Bash et Vagrant terminée avec succès."
