# k2-smaller-fluid-boxes

K2 Smaller Fluid Boxes is a mod that modifies the fluid boxes of new
production buildings added by Krastorio 2. 

## Purpose

The purpose of this mod is to reduce the amount of input fluid consumed from
fluid networks by a single building, which can cause other buildings to be
starved, and also to reduce the amount of output fluid kept in buildings.

## Disclaimers

Installing this mod on an existing save will **DELETE FLUID** that is held
in production buildings. If you don't want to lose the fluid, which can be
a considerable amount (e.g. 10k matter), then only install this mod on a
fresh save.

This mod is neither created by nor affiliated with the creators of
Krastorio 2. Do not report issues with this mod to them.

## Affected Buildings

The affected buildings as of Krastorio2 1.0.4 are:

- Advanced Assembling Machine
- Advanced Chemical Plant
- Atmospheric Condenser
- Bio Lab
- Electrolysis Plant
- Filtration Plant
- Fuel Refinery
- Fusion Reactor
- Greenhouse
- Matter Assembler
- Matter Plant

## Building the Mod

To build the mod from source, you will need to install `jq`, `zip`, and
`make`. Then run `make clean zip` and the properly named and structured
zip file for the mod will be created in the `output` directory.
