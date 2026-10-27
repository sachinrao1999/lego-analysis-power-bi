# Source data and refresh

The report imports `lego_sets.csv`. The CSV itself is not included here. The PBIX contains the cleaned imported records used by the visuals.

Original source path in the query: `D:\Sachin\Power bi dataset for project\lego_sets.csv`.

To refresh, obtain the original CSV, open the `lego_sets` query in Power Query, and change its Source step to the CSV's location on your computer. The source expects these 14 columns:

`set_id`, `name`, `year`, `theme`, `subtheme`, `themeGroup`, `category`, `pieces`, `minifigs`, `agerange_min`, `US_retailPrice`, `bricksetURL`, `thumbnailURL`, `imageURL`.

The image URLs point to Brickset-hosted images. A dataset download page and redistribution licence have not been recorded here; check the original provider's terms before adding a source CSV to the repository. The presence of image URLs does not establish the dataset's publisher or reuse permissions.

No reconstructed CSV has been presented as the original source file.
