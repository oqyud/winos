It's just a simple deployment. You may need it for something more. **Portable programs often have their disadvantages, which symlinks can fix**. Try to make this something more automated so you don't have to use your mouse again to install packages on Windows. 

*Configurations are restored individually, I made them for myself, keep in mind! Everything written here may be a very **unprepared solution** for you!*

# What it all does

This uses package managers, to install a set of packages in that order:

1. Install Chocolatey
2. Install Winget packages
3. Install Chocolatey packages list
4. Install Symlinks *and other...*

In the settings, you can change the path variables that locate the program configurations. There is also a variable here to set the **scoop**.

# Main

- `setup.bat` - main deploy

- `configurations-only.bat` - only configurations symlinking

- `test.bat` - test bats in `test` folder

In `Packages`:

- `01_winget.bat` - temporarily installs everything with a lot of `winget` commands
- `02.choco.bat` - installs the packages from `/lists/packages.config`

- `/lists/choco-list.bat` - simply exports the current packages to `packages.config`
