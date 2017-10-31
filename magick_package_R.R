## project to demonstrate the use of (magick) package
# load the package
setwd("E:\\R")
#Change the above directory to your R directory
library('magick')
# Load the "magick" package 
# learning about TRANSFORMATIONS in magick

frink <-image_read('https://jeroen.github.io/images/frink.png')
print(frink)
# print command is analogous to view for data sets

image_border(image_background(frink,"hotpink"), "#000080","20x20")
image_trim(frink)
# passport picture
image_crop(frink,"100x150+50")
# to resize the image
image_scale(frink, "300")
image_scale(frink, "x300")
# to rotate image
image_rotate(frink,45)
# to flip the image
image_flip(frink)
# to get back image
image_flop(frink)
#to blur the image
image_blur(frink,10,5)
#just like audio noise there are image noise
# we use image_noise function to remove it
image_noise(frink)
# we can also have the charcoal view of the image
image_charcoal(frink)
# image_oilpaint fucntion oil paints the image
image_oilpaint(frink)
# image_negate function negates the image
image_negate(frink)

# we can add some texts into the image
image_annotate(frink,"Hi I'm a data scientist",size=21,gravity = "southwest",color = "red")
