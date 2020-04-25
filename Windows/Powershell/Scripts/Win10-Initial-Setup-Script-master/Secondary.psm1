##########
#region Choco Functions
##########

# Install the google suite packages
Function ChocoInstallGoogle {
    choco install googlechrome -y
    choco install choco install google-drive-file-stream -y
    choco install chrome-remote-desktop-chrome -y
    choco install choco install malwarebytes -y
    choco install inkscape -y
    choco install 7zip.install -y
    choco install vlc -y
    choco install adobereader -y
    choco install foxitreader -y
    choco install libreoffice-fresh -y
    choco install choco-upgrade-all-at-startup -y
}

##########
#endregion Choco Functions
##########



##########
#region Auxiliary Functions
##########

# Wait for key press
Function WaitForKey {
	Write-Output "`nPress any key to continue..."
	[Console]::ReadKey($true) | Out-Null
}

# Restart computer
Function Restart {
	Write-Output "Restarting..."
	Restart-Computer
}

##########
#endregion Auxiliary Functions
##########



# Export functions
Export-ModuleMember -Function *
