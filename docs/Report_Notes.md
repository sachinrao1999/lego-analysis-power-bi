# Report notes

## Measures and interaction

The maximum-price measure is used as a visual-level filter on the main set table. The parameter has no relationship to `lego_sets`, so it does not automatically filter the rest of the report. The main table also has explicit NoFilter interactions with the three overview KPI cards.

`SELECTEDVALUE` checks for one distinct value in each field separately. It does not check that exactly one set ID is selected. Several selected sets sharing the same year or price can therefore show that shared attribute while the name card still shows its prompt.

The image panel and hidden image tooltip depend on an external URL and the included Simple Image custom visual. Image availability may change independently of the saved data.

## Formatting to improve

The source price field is `US_retailPrice`. The summary card uses a dollar format, while the main table screenshot shows a rupee symbol. No currency conversion is performed in the query or measures. The README therefore reports prices in US dollars. The PBIX is included unchanged; standardising the table format remains a next step.

## Checks on the saved data

- 4,385 rows and 4,385 distinct set IDs.
- 100 themes, 15 theme groups; years 1992–2022.
- Average pieces: 410.983808; average price: $44.735206.
- All 13 final columns have no null cells; some text fields can contain empty strings.
- Minimum listed price $1.99; maximum $849.99.
- Full-data counts in the README can differ from decomposition-tree branches because each branch adds its own category and theme filters.

The stored data and report definitions were inspected to prepare the documentation. Power BI Desktop interaction, external-image loading and source refresh were not executed in this review. No report calculations or visuals were changed.
