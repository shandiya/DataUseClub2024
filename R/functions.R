gt_theme <- function(data, ...){
  data |> 
    opt_table_font(
      font = list(
        google_font("Lato"),
        default_fonts())) |> 
    opt_row_striping() |> 
    tab_options(
      row.striping.background_color = "#fffbf0",
      table_body.hlines.color = "transparent",
      column_labels.background.color = "#273b50",
      ...
    ) 
}
