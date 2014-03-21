all: xcb_box

xcb_box: xcb_box.c
	gcc -Wall xcb_box.c -lxcb -o xbc_box

clean:
	rm -f xcb_box
