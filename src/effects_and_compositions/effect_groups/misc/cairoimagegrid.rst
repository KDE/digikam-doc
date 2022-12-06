.. metadata-placeholder

   :authors: - Ttguy (https://userbase.kde.org/User:Ttguy)

   :license: Creative Commons License SA 4.0

.. _cairoimagegrid:

cairoimagegrid
==============

.. contents::

This effect creates a grid of copies of the video footage as shown in the screen shot.

.. image:: /images/Kdenlive_Cairoimagegrid.png

You adjust the number of rows and columns in the image with the rows and columns parameters. These take decimal fractions from zero to 1. The maximum value of 1 means 20 rows or columns. 

Number of rows/columns = (p X 20) + 1    [where p = the value of the row or column parameter]

In this eg:

rows = 0.1 ->  means (0.1 X 20) + 1 =  3 rows

columns = 0.2 -> means (0.2 X 20) + 1 = 5  columns

