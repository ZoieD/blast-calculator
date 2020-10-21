# Introduction
This is a keras project that use to do a prediction within a confined space, the peak pressures and impulses associated with the blast load can be significantly amplified. Some knowledge about blast may better for your understanding. The ML model have 6 inputs which are N, l/L, h/H, L/H, ZA, L/RA.

N = number of reflective surface (excluding ground and “back surface’) 
RA = Standoff distance to target surface
l, L, h, H = Dimensions of the confined space
ZA = Scaled Distance = RA/W1/3 

And two outputs are impulse and pressure within a confined space.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system. 

## Prerequisites
Anaconda
npm

## Installing
installing anaconda https://docs.anaconda.com/anaconda/install/
Some basis command to getting started with conda
```
conda -V 
conda list 
conda -n NAME python=3.6
conda install numpy
conda install pandas
conda install keras
conda install tensorflow
conda install jupyter notebook
```
Steps to install npm
```
npm install
npm run dev //dev env
```

### tips

- Change path in /app/controller/python/run.py 28 and 34 to your path.
- Change path in /app/controller/home.js 27 and 29 to your path.

- Change path in /app/controller/vba.js 73 and 75 to your path.
