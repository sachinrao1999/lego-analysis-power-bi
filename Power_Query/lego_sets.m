let
  Source = Csv.Document(File.Contents("D:\Sachin\Power bi dataset for project\lego_sets.csv"), [Delimiter = ",", Columns = 14, Encoding = 65001, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"set_id", type text}, {"name", type text}, {"year", Int64.Type}, {"theme", type text}, {"subtheme", type text}, {"themeGroup", type text}, {"category", type text}, {"pieces", Int64.Type}, {"minifigs", type text}, {"agerange_min", type text}, {"US_retailPrice", type text}, {"bricksetURL", type text}, {"thumbnailURL", type text}, {"imageURL", type text}}, "en-US"),
    #"Changed Type" = Table.TransformColumnTypes(#"Changed column type",{{"minifigs", Int64.Type}, {"agerange_min", Int64.Type}, {"US_retailPrice", Currency.Type}}),
    #"Removed Columns" = Table.RemoveColumns(#"Changed Type",{"bricksetURL", "thumbnailURL"}),
    #"Renamed Columns" = Table.RenameColumns(#"Removed Columns",{{"agerange_min", "age"}, {"US_retailPrice", "Price"}}),
    #"Removed Columns1" = Table.RemoveColumns(#"Renamed Columns",{"minifigs"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Columns1", each ([pieces] <> null)),
    #"Filtered Rows1" = Table.SelectRows(#"Filtered Rows", each [age] <> null and [age] <> ""),
    #"Filtered Rows2" = Table.SelectRows(#"Filtered Rows1", each [pieces] <> null and [pieces] <> ""),
    #"Filtered Rows3" = Table.SelectRows(#"Filtered Rows2", each ([Price] <> null and [Price] <> "")),
    #"Added Conditional Column" = Table.AddColumn(#"Filtered Rows3", "Age range", each if [age] >= 18 then "over 18" else if [age] >= 10 then "10 to 17" else if [age] >= 5 then "5 to 9" else "1 to 4"),
    #"Added Conditional Column1" = Table.AddColumn(#"Added Conditional Column", "Price range", each if [Price] >= 500 then "$$$$$" else if [Price] >= 100 then "$$$$" else if [Price] >= 50 then "$$$" else if [Price] >= 25 then "$$" else "$"),
    #"Filtered Rows4" = Table.SelectRows(#"Added Conditional Column1", each [imageURL] <> null and [imageURL] <> "")
in
    #"Filtered Rows4"
