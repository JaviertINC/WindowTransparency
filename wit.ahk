make_menu()
#T::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans - 64
    if newtrans > 0
    {
        WinSet, Transparent, %newtrans%, A

    }
    else
    {
        WinSet, Transparent, 255, A
        WinSet, Transparent, OFF, A
    }
    return
	
make_menu() {
    Menu, TRAY, NoStandard
    Menu, TRAY, add, Window Transparecy (WIT) by @JaviertINC, about_handler
    Menu, TRAY, add,
    Menu, TRAY, add, Ayuda, help_handler
    Menu, TRAY, add,
    Menu, TRAY, add, Salir, exit_handler
}

about_handler:
aboutmsg = 
(
Desarrollado por @JaviertINC
Creado con fines educativos.
Licencia de libre Uso.
[Version 0.7]
)
MsgBox, 64, Info, %aboutmsg%
return


help_handler:
helpmsg = 
(
Para cambiar la opacidad de la ventana activa,
presiona las teclas [WIN] + [o]
Para que la aplicacion deje de captar la combinacion de teclas, solo cierralo.
)
MsgBox, 32, Ayuda, %helpmsg%
return

exit_handler:
ExitApp
return
