# README for Basic Speedometer

## Overview
The Basic Speedometer is a simple resource for Grand Theft Auto V (GTA V) that displays the player's current speed in either kilometers per hour (KPH) or miles per hour (MPH) on the screen. This resource is designed to enhance the gaming experience by providing real-time speed information while driving.

## Features
- Displays speed in KPH or MPH based on configuration.
- Customizable text font.
- Lightweight and efficient, with minimal performance impact.

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

## Configuration

The configuration file is located in `config.lua`. You can customize the following settings:

- **Text Font**
  - `textfont`: 
    - `1` = Cursive
    - `2` = Normal

- **Speed Measurement**
  - `measurement`: 
    - `'KPH'` for kilometers per hour
    - `'MPH'` for miles per hour

### Example Configuration
```lua
config = {
    textfont = 1, -- 1 = Cursive, 2 = Normal
    measurement = 'KPH', -- KPH or MPH
}