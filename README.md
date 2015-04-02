# Windows Configuration Files

These are my configuration files for Windows. Unlike in Linux, these all need to be fully copied to their correct locations, not just symlinked.

* [Powershell Configuration] (#powershell-configuration)
* [Development Environment] (#development-environment)
* [Sublime Text] (#sublime-text)

## Powershell Configuration
The WindowsPowerShell directory contains my powershell customizations. In order to use them, copy them to ```C:\<your username>\Documents\``` and uncomment the commented out lines. You should then be able to load the shell and get the color scheme. Make any changes to the font necessary, and then comment out these lines again. The scheme should stick around.

## Development Environment
To get all of the tools for a development environment that more closely resembles Linux, I install the [mingw w64](http://mingw-w64.yaxm.org/doku.php) toolchains in C:\tools\mingw64, and put them on my path. I also install [git](http://git-scm.com).

## Sublime Text
I pay for and use Sublime Text. My configuration files are in Sublime Text 3, and that folder gets copied to ```%APPDATA%\Roaming\```. Plugins include Vintage, javap, git, gradle, markdown preview, and powershell. I use Package Control to manage my packages.