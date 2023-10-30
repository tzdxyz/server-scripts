# main
public debian sever scripts, for setup, configuration, docker files, etc, for my personal use 

CAUTION: 
no personal information should be here.

shared whiteboard:
https://www.tldraw.com/r/LlQjZ2Xmdm1kXR_WrwYoY?viewport=85%2C-14058%2C1410%2C724&page=page%3AoiPZifpkpvME_qeAbkOvl

# some tips

ssh tunnel:
`ssh user@ip -N -L 8888:localhost:8888 -L 4000:localhost:4000 ...`

'-N': dont's use command line.

'...': you can add as many -L port settting as you want.


sftp:
`sftp -oPort=port user@ip`

'-oPort=port': used if server change ssh port.

