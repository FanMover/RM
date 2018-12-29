import cv2
import numpy as np

fileName = "/home/top/Desktop/IMG_20181224_165455.jpg"
src = cv2.imread(fileName)
musk = src.copy()
gray = cv2.cvtColor(src, cv2.COLOR_BGR2GRAY)
blurred = cv2.GaussianBlur(gray, (15, 15), 0)
canny = cv2.Canny(blurred, 20, 40)
kernel = np.ones((5, 5), np.uint8)
dilated = cv2.dilate(canny, kernel, iterations=2)
(_, contours, hierarchy) = cv2.findContours(dilated.copy(), cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
dilated_cvt = cv2.cvtColor(dilated, cv2.COLOR_GRAY2RGB)
for c in contours:
    x, y, w, h = cv2.boundingRect(c)
    print("w:%s" % w)
    print("h:%s" % h)
    s = w*h
    print("s:%s" % s)
    print("\n")
    if s>3100 and s<3600:
        cv2.rectangle(musk, (x, y), (x + w, y + h), (0, 255, 0), 2)
cv2.imshow("image", musk)
cv2.waitKey(0)



