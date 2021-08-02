library(sf)
library(tidyverse)

df <- st_read("tax-allotment.gpkg") %>%
  select(Blk_Sheet, Lot_Num) %>%
  rename(
    block_sheet = Blk_Sheet,
    lot_number = Lot_Num
  ) %>%
  st_transform(4326)

st_write(df, "vavau-tax-allotment.geojson", delete_dsn = TRUE)