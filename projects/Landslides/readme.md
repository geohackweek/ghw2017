####Project Title: Data integration for multi-hazard risk assessment with a pilot study of landslides in Island County, WA


[Hackpad page](https://hackpad.com/Landslides-SANXagD9oV0)

####Collaborators on this project:


####University of Washington Contacts: 
Ronda Strauch, rstrauch@uw.edu
Christina Bandaragoda, cband@uw.edu
Erkan Istanbulluoglu, erkani@uw.edu

####Washington Department of Natural Resources Contacts: 
Recep Cakir, Recep.Cakir@dnr.wa.gov 
Victoria Nelson: Victoria.Nelson@dnr.wa.gov
Yuyang Zou, Yuyang.Zou@dnr.wa.gov

####The problem
Geospatial tools and visualization is needed to develop a data and model integration pipeline for assessing landslide hazards.  This project is one component of multi-hazard (earthquake, flood, tsunami) assessment in watersheds spanning mountain peaks to coastal shores.  A common challenge in interpreting and validating distributed models is in comparing these data to direct observations on the ground. Modeling data of landslides for regional planning intentionally cover large regions and many landslides, incorporating different temporal and spatial sampling frequency and stochastic processes than observations derived from landslide inventories developed in the field. This kind of analysis requires geospatial tools to enable visualization, assessment of spatial statistics and extrapolation of spatial data linked to hierarchical relationships, such as downstream hydrologic impacts.  

Landslide geohazards can be identified through numerous methods, which are generally grouped into quantitative (e.g., Hammond et al. 1992; Wu and Sidle 1995) and qualitative (e.g., Gupta and Joshi 1990; Carrara et al. 1991; Lee et al. 2007) approaches. Mechanistic process-based models based on limited equilibrium analysis can quantify the roles of topography, soils, vegetation, and hydrology (when coupled with a hydrologic model) in landsliding in quantitative forms (Montgomery and Dietrich 1994; Miller 1995; Pack et al. 1998).  Processed-based models are good for predicting the initiation of landslides even where landslide inventories are lacking, but missed predictions likely stem from parameter uncertainty and unrepresented processes in model structure implicitly captured in qualitative approaches. A common qualitative approach develops landslide susceptibility based on experts rating multiple landscape attributes.  These approaches provide general indices rather than quantified probabilities of relative landslide susceptibility applicable to the study location and cannot represent causal factors or triggering conditions that change in time (van Western et al. 2006). Both approaches rarely provide a probabilistic hazard in space and time, requisite for landslide risk assessments beneficial for planning and decision making (Smith 2013).  This project will start the groundwork to integrate numerical modeling developed by University of Washington  with qualitative assessments of landslide susceptibility performed by Washington Department of Natural Resources. 

####Application Example
Qualitative Assessments of Landslide Susceptibility: The analysis of landslide susceptibility for Island County was performed by Washington Department of Natural Resources - Geology and Earth Resources Division to support FEMA Risk MAP projects for the county.  This assessment is based on the AHP (Analytic Hierarchy Process) modeling incorporated with Remote Sensing (RS) Data (i.e., LiDAR) and other available GIS data (i.e., land cover, geology, distances to roads and streams). 
The methodology can be summarized in three steps:
1)	GIS grid data were prepared for each risk factor such as geology, slope, land cover, distance to road, distance to natural drainage system
2)	The AHP method was used to determine level of relationship among the risk factors and to rank the risk in each factor itself. In this stage, expert opinions were heavily used.
3)	Certain geo-processing GIS tools were used for the data including converting vector to raster data, reclassifying the raster data and other data preparation and mapping processes.	
Following the AHP process based on expert opinions, a decision-making matrix referring to the AHP preferences table (Saaty,1987) (the weights for each landslide triggering factor) was built: Following numerical rating system was used during the evaluations of factors. Experts who are professional/engineering geologists mapped the area and have extensive knowledge and experience in landslide projects and mapping rated the landslide triggering factors (in and among themselves). If a conflicting rating was made, a second round of the rating process was performed. After a discussion among the experts a consensus was reached on the conflicting rates. In the first round of the rating process, experts were not allowed to exchange information or consult each other and the process repeated until the experts reached consensus on all ratings among and within the factors

Numerical Modeling:  A newly-developed quantitative model of hillslope stability is based on a coupling of the limited equilibrium,  infinite slope stability model for estimating the factor-of-safety (FS) stability index (Shelby 1993; Montgomery and Dietrich 1994) and the Variable Infiltration Capacity (VIC) macro-scale hydrologic model (Liang et al. 1994) integrated using the Landlab earth surface modeling framework [Hobley et al., 2016].   The infinite slope stability factor-of-safety (FS) equation is based on the balance of stabilizing and mobilizing forces on the interface between soil and bedrock or less permeable material. Using a Monte Carlo approach (Tobutt 1982, Hammond et al. 1992), “realizations” of the FS value at a particular location are obtained by sampling probability distribution functions (PDFs) of parameters at random, characterizing the unknown or uncertain input parameters, and propagating them through the analysis to obtain a distribution of solutions (e.g., FS values).  Using this distribution, the probability of failure was defined as the area under the FS curve where FS≤1 (El-Ramly et al. 2002; Hammond et al. 1992).

####Research Questions
Does a quantitative physically based model of landslide probability give spatially consistent results compared  to a qualitative analytical hierarchy process (AHP) to landslide susceptibility?  

Can spatially distributed landslide hazard mapping (raster layers of triggers geospatial factors) be linked to stream networks (polylines) relevant to flood hazard?

####Sample data   
For data needed for this project (includes topography, geology, vegetation, soil, and landform), join [HydroShare](www.hydroshare.org). Go to Collaborate, and ask to Join the [Freshwater](https://www.hydroshare.org/group/14). Go to the Freshwaterhack of UW Geohackweek Collection Resource and find [Freshwater Project: Data integration for multi-hazard risk assessment](https://www.hydroshare.org/resource/ea41dd1b1239478aae68b7ecebc7d93f/). All rasters must be sampled at the same grid size. For this particular work, we will be using a 10m grid scale for all raster datasets. Remote sensing data: LiDAR-derived bare earth DEM at 10m grid scale is provided. Slope can be derived from the DEM as dimensionless “tan theta.” 
Topography: Stream network and flow paths can be derived from the bare earth DEM using TauDEM.
Vegetation: Land use and land cover datasets provide vegetation type and coverage. Root cohesion can be assigned spatially by vegetation type. 
Soil: NRCS data provides cohesion, internal angle of friction (phi), transmissivity, and soil depth for each soil map unit. 
Inputs to Landlab will include: slope, stream network, flow accumulation (‘upstream’ area draining to each cell), surface geology, root cohesion, soil cohesion (derived from LULC data), internal angle of friction (phi), transmissivity (the ratio of hydraulic conductivity to saturation depth). 

####Project Ideas/Steps
* Develop a Jupyter Notebook to upload and visualize layers of grids: dem, soils, land use, susceptibility, atlas of landslides from HydroShare
* Run Taudem (ported from this Notebook) to create study subset and stream network
* Use Jupyter Notebook driver to use Python and Landlab functions to calculate landslide probability map   
* Identify distance to stream of susceptibility zones (existing qualitative model), atlas of landslides (observations), Landlab landslide probability (quantitative model).
* Determine and visualize the stream reaches most sensitive to geomorphologic hazards.

####Existing methods
Landslide hazard mapping is generally conducted by multi-factor qualitative analysis as described above (AHP).  Using this single modeling method is limited because it is a regional scale logistical approach, applied county by county in the State of Washington, that gives zonal information devoid of statistical information about the probability of risk. The quantification of risk is needed to improve mitigation plans and building codes.  A higher resolution gridded approach  that incorporates hydrologic processes would improve risk assessment, emergency planning and response, and link landslides to multiple risks.  Risks are known to be compounded, for example,  due to the source sediment contributions of landslides (impacts to flooding), or increased probability of landslides related to earthquake and extreme weather events.  There are no tools or models that we know of that provide an assessment of compounding quantified risk related to landslides by incorporating multiple factors and multiple hazards. 

####Potential tools:
GeoPandas
TauDEM
Landlab

####Background reading:
* Saaty, R. W. (1987). The analytic hierarchy process—what it is and how it is used. Mathematical modelling, 9(3), 161-176.
* Carrara, A., Cardinali, M., Detti, R., Guzzetti, F., Pasqui, V., & Reichenbach, P. (1991). GIS techniques and statistical models in evaluating landslide hazard. Earth surface processes and landforms, 16(5), 427-445.
* El-Ramly, H., Morgenstern, N. R., & Cruden, D. M. (2002). Probabilistic slope stability analysis for practice. Canadian Geotechnical Journal, 39(3), 665-683.
* Gupta, R. P., & Joshi, B. C. (1990). Landslide hazard zoning using the GIS approach—a case study from the Ramganga catchment, Himalayas. Engineering geology, 28(1-2), 119-131.
* Hammond, C., Hall, D., Miller, S., & Swetik, P. (1992). Level I stability analysis (LISA) documentation for version 2.0. General technical report INT; 285.
* Liang X, Lettenmaier DP, Wood EF, Burges SJ. (1994) A simple hydrologically based model of land surface water and energy fluxes for GSMs. J Geophys Res 99(D7):14,415–14,428.
* Lee S, Ryu J-H, Kim I-S. (2007) Landslide susceptibility analysis and its verification using likelihood ratio, logistic regression, and artificial neural network models: Case study of Youngin, Korea. Landslides 4:327–338. 
* Miller, D. J. (1995). Coupling GIS with physical models to assess deep-seated landslide hazards. Environmental & Engineering Geoscience, 1(3), 263-276.
* Montgomery, D. R. and W. E. Dietrich. (1994) A Physically Based Model for the Topographic Control on Shallow Landsliding, Water Resources Research, 30(4): 1153-1171.
* Pack, R. T., Tarboton, D. G., & Goodwin, C. N. (1998, September). The SINMAP approach to terrain stability mapping. In 8th congress of the international association of engineering geology, Vancouver, British Columbia, Canada (Vol. 21, p. 25).
* Smith, K. (2013). Environmental hazards: assessing risk and reducing disaster. Routledge.
* Van Westen, C. J., Van Asch, T. W., & Soeters, R. (2006). Landslide hazard and risk zonation—why is it still so difficult?. Bulletin of Engineering geology and the Environment, 65(2), 167-184.
* Wu, W. and Sidle, R. C. (1995) A Distributed Slope Stability Model for Steep Forested Watersheds, Water Resour. Res., 31(8), 2097– 2110.


