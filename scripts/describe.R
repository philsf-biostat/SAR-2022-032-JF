# setup -------------------------------------------------------------------

library(epitools)
library(epiR)
# library(Hmisc) # describe
# library(skimr) # skim
library(gmodels) # CrossTable
# library(gtsummary)
# library(gt)
# library(effectsize)
# library(finalfit) # missing_compare

# setup gtsummary theme

# theme_ff_gtsummary()
# theme_gtsummary_compact()
# theme_gtsummary_language(language = "pt") # traduzir

# exploratory -------------------------------------------------------------

# overall description
# analytical %>%
#   skimr::skim()

# minimum detectable effect size
# interpret_cohens_d(0.5)
# cohens_d(outcome ~ exposure, data = analytical) %>% interpret_cohens_d()
# interpret_icc(0.7)

# tables ------------------------------------------------------------------





analytical %>% oddsratio()

tab_desc <- analytical %>%
  addmargins() %>%
  as.data.frame() %>%
  rename(Total = Sum)

rownames(tab_desc)[3] <- "Total"

# CrossTable(
#   analytical,
#   prop.r = FALSE,
#   prop.t = FALSE,
#   prop.chisq = FALSE,
#   format = "SPSS"
# )

inf <- epi.2by2(
  analytical,
  method = "case.control",
  digits = 2,
  conf.level = 0.95,
  units = 100,
  interpret = TRUE,
  outcome = "as.columns"
)
