# NotStupidCar
Sell driving car.

## Parts
Car: HSP 94186 brushed (Donkeycar equivalent) \
https://item.taobao.com/item.htm?spm=a230r.1.14.1.3db1178eYYibv2&id=27037536775&ns=1&abbucket=3#detail

Servo driver: PCA9685 (Donkeycar equivalent) \
https://detail.tmall.com/item.htm?id=597498156699&spm=a1z09.2.0.0.74622e8dYOHY9k&_u=6lirl382073

The PCA9685 driver code comes from http://tordwessman.blogspot.com/2013/12/adafruit-pca9685-c-servo-controller.html 
with some modification. \
https://www.raspberrypi.org/forums/viewtopic.php?t=29458

## Setup
```
souce setup.sh
mkdir build && cd $_
cmake ..
make
./test_servo 
```

Make sure the servo is sufficiently powered. 
