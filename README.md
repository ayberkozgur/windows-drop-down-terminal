# windows-drop-down-terminal
Windows drop down terminal on hotkey, based on WSL, VcXsrv and AutoIt.

Create startup shortcuts to `f12.au` and `vcxsrv` and launch `terminator.bat` after `vcxsrv` starts.

For HiDPI, right click `vcxsrv.exe.lnk`, go to `Properties -> Compatibility -> Change high DPI settings`, check `Override ...` and select `Application`. Then, set the following environment variables in `~/.profile`:

```
export GDK_SCALE=0.5
export GDK_DPI_SCALE=2
```
