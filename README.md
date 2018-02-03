<!-- ![Logo of the project](https://raw.githubusercontent.com/jehna/readme-best-practices/master/sample-logo.png) -->

# Stage-controller Dashboard
> a starting point to control your hardware through MATLAB GUI

This is a GUI template to get you up and running connecting and controlling hardware immediately (screenshots below).

This code comes with connection code for:
- three C-663 Step controller from _Physik Intrumente_ (for XYZ scan)
- Standard DG535 Pulse Generator from _Rohde & Schwarz_
- Wave Surfer Oscilloscope from _Le Croy_

Initial features:
- Dis-/Connection of Stage controllers, Oscilloscope, and Pulse Generator
- Control of absolute and relative movement of the stage controllers.
- Real-time stage position display.
- Emergency stop of stages.

This code **does not** comes with the driver of each hardware mentioned above.

## Getting started
First thing first. Note what version your MATLAB is and whether you have installed the drivers of the hardwares.

Clone this repository to your desired folder by entering the following command:

```shell
cd path/to/your/folder/
git clone https://github.com/wdputro/stage-controller-GUI.git
```
Afterwards, proceed according to your MATLAB version.

## Configuring
Since this is mainly a GUI template for your distinct system, we need to configure the connection to each hardware.

### MATLAB 2017a and newer
Open the `controllerApp.mlapp` file. Either from MATLAB by clicking the file, or type this directly in your MATLAB command window:

```Matlab
controllerApp.mlapp
```
This will then open the `App Designer` window.

![Design view of the app](https://github.com/wdputro/stage-controller-GUI/blob/master/screenshots/2017a%20and%20above/p1.png?raw=true)

#### Changing Signal Generator
1. Change the DG535 swith to the name of your device
2. Head over to the top-right of your App window. Choose `Code View`
3. Now, hit `Ctrl + F` and search `FdgInit`
4. replace everything under `function FdgInit(app, GPIB_Address)` with your MATLAB code for connecting to your pulse generator
5.  Note that the initial variable to access the stages are `dg` and are defined under the function `FdgInit(app)`. So if you change it with your code, make sure to replace the variables accordingly.

#### Changing Oscilloscope
1. Still in `Code View` mode
3. Now, hit `Ctrl + F` and search `FscopeInit`
4. replace everything under `function FscopeInit(app)` with your MATLAB code for connecting to your Oscilloscope.
5.  Note that the initial variable to access the stages are `DSO` and are defined under the function `FscopeInit(app)`. So if you change it with your code, make sure to replace the variables accordingly.

#### Changing Stage controllers
1. Still in `Code View` mode
3. Now, hit `Ctrl + F` and search `FstageInit`
4. replace everything under `function FstageInit(app)` with your MATLAB code for connecting to your Stages.
5. Note that the initial variable to access the stages are `stageX, stageY, stageZ` and are defined under the function `FstageInit(app)`. So if you change it with your code, make sure to replace the variables accordingly.

Now, `save` it and `run (F5)`. Check whether everything connects and whether the stages move accordingly.
If you are using stages not from _Physik Instrumente_, chances are you need to modify the code for each button since the MATLAB class are, of course, inherently different.

---
If everything works well, then on the `App Designer`'s file ribbon, click 'Package App' and follow the instructions.

### MATLAB 2016b and earlier
Essentially, quite the same with the steps above. But since I built it using MATLAB GUIDE, you have two separate files (*.fig, and *.m). In short, `Design view` is equivalent to *.fig file, and `Code View` is equivalent to *.m file

Open the GUIDE by right clicking the *.fig file and choose `Open in GUIDE` from the file dialog.

#### Changing Stage controllers
1. Right click the button besides `Connect Stage & AFG` label, head to `View Callbacks` and choose `Callback`. It would then take you to the code. (If you encounter a warning that says _The current value of Callback has been manually modified..., ignore it.)
2. replace everything under `function stageAFG_Callback(hObject, eventdata, handles)` with your MATLAB code for connecting to your Stages.
3. Note that the initial variable to access the stages are `C663_X, C663_Y, C663_Z` and are defined under the function `stageConnectG( handles )`. So if you change it with your code, make sure to replace the variables accordingly.

Now, `save` it and `run (F5)`. Check whether everything connects and whether the stages move accordingly.
If you are using stages not from _Physik Instrumente_, chances are you need to modify the code for each button since the MATLAB class are, of course, inherently different.

---
If everything works well, then close the `GUIDE` window, and on the main MATLAB window, select Apps file ribbon and click 'Package App' and then follow the instructions.

## Developing
Be wild. Add other hardwares. Create another page for your own research or need (eg, 3D raster-scan etc)

## Contributing
If you find a bug or want to request a new feature, feel free to open an issue.

## Licensing
Stage Controller GUI is licensed under MIT license. Check the [LICENSE](https://github.com/feathericons/feather/blob/master/LICENSE) file for details.
