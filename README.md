Raspberry Pi Framebuffer Copy
=============================
This program used for copy primary framebuffer to secondary framebuffer (eg. FBTFT). It require lastest raspberry pi firmware (> 2013-07-11) to working properly.

Build
-----

    $ mkdir build
    
    $ cd build
    
    $ cmake ..
    
    $ make 

Pi1 Install
-----

    $ cd ~
    
    $ git clone https://github.com/wdmomoxx/rpi-fbcp.git
    
    $ cd rpi-fbcp
    
    $ sudo chmod +x autoinstall-pi1.sh
        
    $ ./audoinstall-pi1.sh

Pi3 Install
-----

    $ cd ~
    
    $ git clone https://github.com/wdmomoxx/rpi-fbcp.git
    
    $ cd rpi-fbcp
    
    $ sudo chmod +x autoinstall-pi3.sh
        
    $ ./audoinstall-pi3.sh
