2023-03-27
Franziska U. Schwarzkopf
fschwarzkopf@geomar.de

################################################################################################

For further infomation about the model configuration see Schwarzkopf et al. 2019 (https://doi.org/10.5194/gmd-12-3329-2019).
This hindcast simulation INALT20.L46-KFS119 (also referred to as INALT20-JRA-OMIP) is performed under JRA55-do v1.4 atmospheric forcing from 1958-2019.
It is initialized from hydrographic data as provided by WOA13 and an ocean at rest. Therefore, the first 10 to 20 years should be treated as spin-up
and either excluded from the analyses or only used being particularly careful with interpretations. This particular experiment is used by Rühs et al. 2022
and therein referred to as SIM_JRAO.


Whenever using this data, please cite:
Schwarzkopf, F. U., Biastoch, A., Boening, C. W., Chanut, J., Durgadoo, J. V., Getzlaff, K., Harlass, J., Rieck, J. K., Roth, C., Scheinert, M. M.,
and Schubert, R.: The INALT family - set of high-resolution nests for the Agulhas Current system within global NEMO ocean/sea-ice configurations,
Geosci. Model Dev., 12, 3329-3355, https://doi.org/10.5194/gmd-12-3329-2019, 2019.

Rühs S., C. Schmidt, R. Schubert, T. G. Schulzki, F. U. Schwarzkopf, D. le Bars, and A. Biastoch, 2022: Robust estimates for the decadal evolution
of Agulhas leakage from the 1960s to the 2010s. Communications Earth & Environment 2022 3:1, 3, 1-12, https://doi.org/10.1038/s43247-022-00643-y


The data are extracted from the high-resolution nested grid in INALT20.L46.
Two following data set covers the years 2009 and 2010 for the "iMirabilis" region (0-18°E / 36°S-19°S) and include
3D temperature, salinity and velocities (U,V,W) and sea surface height accompanied by a mesh_mask file, describing the grid in this particular region.

NOTE: the grid information for this particular experiment slightly differs from other experiments in INALT20. Therefore exclusively use
1_INALT20.L46-KFS119_mesh_mask_iMirabilis.nc for any calculations on the grid.

The file name convention follows the following structure:
1_CONFIGURATION_EXPERIMENT_TEMPORALRESOLUTION_STARTDATE_ENDDATE_grid_GRID_REGION.nc
Here, CONFIGURATION is INALT20.L46 (.L46 specifies the vertical axis, here 46 z-levels), EXPERIMENT is KFS119, TEMPORALRESOLUTION is daily "1d",
STARTDATE and ENDDATE are given in yyyymmdd, GRID specifies the grid-points on the Arakawa C grid (see grid_and_mask.pdf) and REGION as described above.
1_ indicates that the data originate from the nest-grid in INALT20.

The different files include the following variables:

 - Sea surface height (sossheig), Temperature (votemper) and Salinity (vosaline) in *grid_T*.nc
 - Zonal velocity (vozocrtx) in *grid_U*.nc
 - Meridional velocity (vomecrty) in *grid_V*.nc
 - vertical velocity (vovecrty) in *grid_W*.nc (derived using the cdf-tools (cdfw))
 - *_mesh_mask_*.nc includes all variables describing the model grid including land/sea masks - the meaning of these variables
   and some more grid information is given in grid_and_mask.pdf
