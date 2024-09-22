irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -RunAsAdmin
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"