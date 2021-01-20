This is buildroot support for the NGC Highway machine emulated by the Cadence
NGC Highway model simulator.

To build the NGC Highway machine image, do

	make ngc_highway_defconfig
	make

To boot the NGC Highway machine image on the Cadence model, do:

	highway_release bp_image.axf output/images/ngc-highway-model.axf
