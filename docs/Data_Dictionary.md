# Data dictionary

One row in `lego_sets` represents one set ID.

| Field | Meaning |
|---|---|
| `set_id` | Unique set identifier; use for counting sets |
| `name` | Set name; names may repeat across IDs |
| `year` | Release year |
| `theme` | Theme |
| `subtheme` | Subtheme; may be an empty string |
| `themeGroup` | Broader theme grouping |
| `category` | Product category |
| `pieces` | Number of pieces |
| `age` | Minimum recommended age |
| `Price` | Historical US retail price |
| `imageURL` | External set-image URL |
| `Age range` | Minimum-age grouping made in Power Query |
| `Price range` | Price band made in Power Query |

`Max price` is a disconnected 171-row parameter table from 0 to 850 in steps of 5. `Measure's table` holds the report measures. There are no model relationships in this version.
