
# MacOS printer installation script

This is simply bash script that will add printer to your Mac if you have previously installed the driver. 🖨
Of course a couple of lines can be added before the script to pull the installation directly from the web page, using wget or curl, let the fats run wild. 💃🏻
The script first checks for the existence of the file from the installed driver. 
It checks if you are on the same network as your printer so it can be added. If everything is cool, the oneliner will do everything it needs to do.
This is useful if you are a domain admin and want to add a local printer to users' MacOS computers.

## Build The Command


    -p <name>  This flag sets the name of the printer as seen by the cups process. Use a name with no spaces, or substitute underscores for the space.

    -E  This flag enables the printer to accept jobs

    -o printer-is-shared=false  The -o flag allows us to pass options to the printer. In this case we are making sure the printer is not shared on the network.

    -v ipp://1.1.1.1  The -v flag sets the URI of the printer.

    -D <name>  Where -p set the name the cups process saw, the -D flag sets what I call the “friendly” name, the name that is visible in the GUI.

    -P <driver path>  Pretty self explanatory, the -P flag sets the path to the driver.
