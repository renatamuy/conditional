###---------------------------------------------------------------------------###

rm(da)
da <- data.frame(cl = rnorm(1e6), la = rnorm(1e6), col_4 = c("vem"), val_4= 0)
head(da)

## classification 4

   da$col_4 <- as.factor(as.character(ifelse( da$cl <= .5 & da$la <= .5,  "blue", 
                    ifelse(da$cl <= .5 & da$la > .5, "green", 
                      ifelse( da$cl > .5 & da$la <= .5, "orange", 
                        ifelse(da$cl > .5 & da$la > .5, "red", "other"))))))
   
   da$val_4 <- ifelse(da$cl <= .5 & da$la <= .5,  0, 
                       ifelse(da$cl <= .5 & da$la > .5, 0.25, 
                              ifelse( da$cl > .5 & da$la <= .5, 0.75, 
                                      ifelse(da$cl > .5 & da$la > .5, 1, NA))))
   
head(da)
   
###---------------------------------------------------------------------------###
   
   
   