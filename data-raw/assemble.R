# Pull top-level data from dataone and store in package

nes_get("1")
nes <- nes_load("1")$nes_data

use_data(nes, overwrite = TRUE)

dir.create(file.path("inst", "extdata"), showWarnings = FALSE)
write.csv(nes, file.path("inst", "extdata", "nes.csv"), row.names = FALSE)
