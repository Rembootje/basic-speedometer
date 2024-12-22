# README for Speedometer Script with Gearbox Feature

## Overview
This repository contains a speedometer script designed for use in gaming environments. The script provides real-time speed tracking and display functionalities, along with a new gearbox feature that enhances the driving experience by allowing players to monitor their gear shifts.

## File Structure
The following files are included in this repository:

- **/config.lua**
  - Contains configuration settings for the speedometer and gearbox, such as display options, measurement units, and gearbox settings.

- **/fxmanifest.lua**
  - Defines the metadata for the script, including dependencies, versioning, and resource information.

- **/speedometer.lua**
  - The main script that implements the speedometer and gearbox functionalities, including calculations, display logic, and gear shift management.

## Features
- Real-time speed tracking
- Gearbox feature to display current gear
- Customizable display settings
- Compatibility with various game environments

## Installation

1. **Download the Resource**
   - Clone or download the repository from [GitHub](https://github.com/Rembootje/basic-speedometer).

2. **Add to Your Server**
   - Place the `basic_speedometer` folder into your server's `resources` directory.

3. **Start the Resource**
   - Add the following line to your `server.cfg` file:
     ```
     start basic_speedometer
     ```

## Usage
- Once installed, the speedometer will automatically activate when the player enters a vehicle.
- Players can view their current speed and gear on the screen, with options to customize the display through the configuration file.

## Customization
- Modify the `/config.lua` file to adjust settings such as:
  - Speed measurement units (e.g., km/h or mph)
  - Display colors and positions
  - Gearbox settings, including gear ratios and shift points

## Gearbox Feature
- The gearbox feature allows players to see their current gear while driving.
- Players can monitor gear shifts, enhancing the realism and control of the driving experience.

## Contribution
If you have suggestions for improvements or additional features, feel free to submit a pull request or open an issue in the repository.

## Acknowledgments
Thanks to the community for their feedback that helped improve this script, especially the addition of the gearbox feature.