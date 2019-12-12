PWD := $(shell pwd)

dtbo-y += pimoroni-fan-shim.dtbo

targets += $(dtbo-y)
always  := $(dtbo-y)

all:
	make -C $(KDIR) M=$(PWD)

clean:
	make -C $(KDIR) M=$(PWD) clean
