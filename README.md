# Chicago Environmental Justice Communities Map


[This code](https://github.com/TroyHernandez/CHI_EJ_map) generates [a map](https://troyhernandez.shinyapps.io/IL_EJ_map/) that visualizes the US EPA EnviroScreen data for 2019. It is based on [my previous volunteer work](https://github.com/TroyHernandez/IL_EJ_map) for the IL EPA, the Illinois Power Agency, and the [Future Jobs Energy Act](https://www.illinois.gov/sites/ipa/Pages/Renewable_Resources.aspx).

Here is what the Illinois Power Agency said about calculating which communities met its “EJ criteria”:

> The Agency would then weight each factor using an approach adapted from CalEnviroScreen: Census tracts would be ranked for each environmental and demographic indicator, a resulting percentile score would be found for each tract, and the percentile scores would be averaged, resulting in an environmental and demographic score for each tract.  The two averages would be multiplied together to determine a score.


The environmental indicators are:

1. National Scale Air Toxics Assessment Air Toxics Cancer Risk
2. National Scale Air Toxics Assessment Respiratory Hazard Index
3. National Scale Air Toxics Assessment Diesel PM (DPM)
4. Particulate Matter (PM2.5)
5. Ozone
6. Lead Paint Indicator
7. Traffic Proximity and Volume
8. Proximity to Risk Management Plan Sites
9. Proximity to Treatment Storage and Disposal Facilities
10. Proximity to National Priorities List Sites
11. Proximity to Major Direct Water Dischargers

The demographic indicators are:

1. Percent low-income
2. Percent minority
3. Less than high school education
4. Linguistic isolation
5. Individuals under age 5
6. Individuals over age 64

This code is a modified version of [Gene Leynes map demo](https://github.com/geneorama/wnv_map_demo) as presented at the [Chicago R User Group October 14th Lightening talks](https://github.com/Chicago-R-User-Group/Oct.-14th-Short-Talks).  Thanks Gene!