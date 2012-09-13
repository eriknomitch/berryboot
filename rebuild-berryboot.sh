#!/bin/sh

if [ ! -e output ]; then
	mkdir -p output
	cp -f LICENSE.* output
fi

cd buildroot-2012.05

if [ -e output/build ]; then
	rm -rf output/build/berryboot* || true 
fi

make && cp output/images/shared.tgz ../output && cp output/images/BerrybootInstaller.gz ../output && cp output/build/linux-HEAD/arch/arm/boot/Image ../output/kernel_berryboot.img && echo Build complete. Result is in \'output\' directory 
