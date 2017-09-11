# 3D Thermistor Array

The OOI Cabled Array, maintained and operated by the University of Washington, is delivering real-time data from a [3D Thermistor Array](http://www.interactiveoceans.washington.edu/story/Thermistor_Array) deployed inside the caldera of [Axial Volcano](http://www.interactiveoceans.washington.edu/story/Axial_Caldera_PN3B_Fully_Installed). The 3D array consists of 24 temperature sensors at fixed x, y and z positions (in cm). A new measurement is made every ten seconds and data is available since 2014 up until present. The data can be retrieved in NetCDF or JSON formats. See examples under [starter_scripts](https://github.com/friedrichknuth/ghw2017/tree/master/projects/VizHack/projects/3D_Thermistor_Array/starter_scripts).

<img src="./img/im1.jpg" width=500>

<img src="./img/im0.jpg" width=500>

<img src="./img/im2.png" width=500>

| Thermistor  | X    | Y    | Z    |
| ----------- |:----:|:----:|:----:|
| t1          | 14.7 | 25.4 | 5.1  |
| t2          | 0    | 0    | 5.1  |
| t3          | 22   | 12.7 | 5.1  |
| t4          | 44   | 25.4 | 5.1  |
| t5          | 22   | 38.1 | 5.1  |
| t6          | 0    | 50.8 | 5.1  |
| t7          | 0    | 25.4 | 5.1  |
| t8          | 0    | 25.4 | 17.8 |
| t9          | 0    | 25.4 | 17.8 |
| t10         | 0    | 50.8 | 17.8 |
| t11         | 22   | 38.1 | 17.8 |
| t12         | 44   | 25.4 | 17.8 |
| t13         | 22   | 12.7 | 17.8 |
| t14         | 0    | 0    | 17.8 |
| t15         | 14.7 | 25.4	| 43.2 |
| t16         | 0    | 0	| 43.2 |
| t17         | 22   | 12.7	| 43.2 |
| t18         | 44   | 25.4	| 43.2 |
| t19         | 22   | 38.1	| 43.2 |
| t20         | 0    | 50.8	| 43.2 |
| t21         | 0    | 25.4	| 43.2 |
| t22         | 0    | 50.8	| 81.3 |
| t23         | 44   | 25.4	| 81.3 |
| t24         | 0    | 0	| 81.3 |


The goal is to interpolate and visualize the plume of hot water coming up from beneath the 3D Thermistor Array over time. This will help scientists understand if the tidal forcing mechanism is suppressing the plume into the subsurface or simply moving it back and forth above the seafloor with the rhythm of the tide.

The problem could be tackled in three stages:

* Produce a 3D visualization of the temperature plume at a given point in time and serve it up on [sketchfab](http://yt-project.org/doc/visualizing/sketchfab.html), for example.

* Produce an interactive 3D time lapse of the plume.

* Visualize the plume in realtime as the data streams ashore.

## Possible tools

- [mplot3D](https://matplotlib.org/mpl_toolkits/mplot3d/tutorial.html) - Matplotlib targeting 3D vizualization.

- [ytini](http://www.ytini.com/) - Which is [yt](http://yt-project.org/doc/index.html) + [houdini](https://www.sidefx.com/).

- [Paraview](https://www.paraview.org/) - A powerful package for plotting in 3D, as mentioned.

- [bokeh](http://bokehplots.com/pages/about-bokeh.html) and [Datashader](https://datashader.readthedocs.io/en/latest/) - maybe?

- [d3](https://d3js.org) - Or maybe D3 proper has something applicable? Perhaps there is something new in the oven at the [IDL](https://idl.cs.washington.edu/) ??