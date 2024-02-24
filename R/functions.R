gt_theme <- function(data, ...){
  data |> 
    opt_table_font(
      font = list(
        google_font("Lato"),
        default_fonts())) |> 
    opt_row_striping() |> 
    tab_options(
      table.font.size = 39,
      #table.font.weight = "lighter",
      column_labels.font.size = 50,
      #column_labels.font.weight = "lighter",
      row.striping.background_color = "#fffbf0",
      table_body.hlines.color = "transparent",
      table.font.color = "#273b50",
      data_row.padding = 12,
      column_labels.background.color = "#273b50",
      ...
    ) 
}
