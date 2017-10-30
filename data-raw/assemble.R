# Pull top-level data from dataone and store in package

nes_get("1")
nes <- nes_load("1")$nes_data

use_data(nes, overwrite = TRUE)
