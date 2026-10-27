# Data preparation

I used the following steps in Power Query:

1. Read the UTF-8 CSV and promote the first row to column headers.
2. Set types for the source columns, including whole numbers for pieces, year and minimum age, and currency for US retail price.
3. Remove `bricksetURL`, `thumbnailURL` and `minifigs`.
4. Rename `agerange_min` to `age`, and `US_retailPrice` to `Price`.
5. Filter out missing pieces, age, price and image URL values.
6. Create age and price groups with the rules below.

| Age label | Rule based on minimum recommended age |
|---|---|
| `over 18` | Age >= 18, including age 18 |
| `10 to 17` | Age >= 10 and < 18 |
| `5 to 9` | Age >= 5 and < 10 |
| `1 to 4` | Remaining values below 5 |

The `over 18` label includes 18-year-old recommendations. These are groupings of the minimum age field, rather than an upper age restriction for the product.

| Price label | US retail price |
|---|---|
| `$` | Below $25 |
| `$$` | $25 to below $50 |
| `$$$` | $50 to below $100 |
| `$$$$` | $100 to below $500 |
| `$$$$$` | $500 and above |

Age range and Price range are Power Query columns, rather than DAX calculated columns. The final table contains 4,385 rows and 4,385 distinct set IDs. The number of original source rows excluded by cleaning is not recorded.
