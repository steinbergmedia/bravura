# Inno Setup installer script

This is a simple Windows installer script to install Bravura and Bravura Text, which:

* Installs the OpenType versions of Bravura and Bravura Text into the system font folder; it will only overwrite existing copies of these fonts if they are older than the versions included in the installer.
* Installs the font-specific JSON metadata files into `%COMMONPROGRAMFILES%\SMuFL\Fonts\Bravura\`
* Installs the OFL license, OFL FAQ, font log, and documentation for Bravura Text into the same folder.

This script can be trivially modified to install other SMuFL-compliant fonts. Be sure you use **Tools** > **Generate GUID** to generate a new GUID in the Inno Setup IDE to ensure it does not collide with the GUID used by the Bravura installer.

[Inno Setup](http://www.jrsoftware.org/isinfo.php) is free to use for commercial and non-commercial purposes.