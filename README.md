# Buildroot image for Raspberry Pi with temperature sensor Access

- Buildroot as submodule
- External build tree
- Enables i2c and loads kernel modules
- Build tempsens and adds it to the image
- U-Boot is build and can be used optionally
- Command dht20 reads temperature and humidity over i2c and prints it to the command line

## Building

- Use build.sh to build the project
- Configure buildroot inside buildroot folder, use cp_config.sh to save to configuration
