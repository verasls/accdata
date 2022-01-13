# daily_acc_3d ------------------------------------------------------------

zip::unzip("data-raw/daily_acc_3d.zip")

daily_acc_3d <- impactr::read_acc("data-raw/daily_acc_3d.csv") |>
  impactr::specify_parameters(
    acc_placement = "back",
    subj_body_mass = 119.0
  ) |>
  impactr::define_region(
    start_time = "2016-01-20 00:01:00",
    end_time = "2016-01-22 23:59:59"
  )

usethis::use_data(daily_acc_3d, compress = "xz", overwrite = TRUE)

# daily_acc_7d ------------------------------------------------------------

zip::unzip("data-raw/daily_acc_7d.zip")

daily_acc_7d <- impactr::read_acc("data-raw/daily_acc_7d.csv") |>
  impactr::specify_parameters(
    acc_placement = "hip",
    subj_body_mass = 131.0
)

usethis::use_data(daily_acc_7d, compress = "xz", overwrite = TRUE)
