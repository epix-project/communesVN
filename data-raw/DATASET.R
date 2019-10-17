sh1 <- sf::st_read("data-raw/shapefile1/VN National Commune_new.shp")



usethis::use_data(DATASET, overwrite = TRUE)


#############@


library(magrittr)
sh1 %>%
  as.data.frame() %>%
  dplyr::select(C_NAMEVI, C_NAMEEN, D_NAME, P_NAME, C_CODE, D_CODE, P_CODE, CODE_OLD) %>%
  write.csv("communesVN.csv", quote = FALSE, row.names = FALSE)
