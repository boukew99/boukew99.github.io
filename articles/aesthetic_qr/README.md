# Aestethic QR
![website QR](website_qr.png)

How do you decorate the QR code without significantly reducing its functionality? The white background is only to increase contrast for the black pixels, which contain the information. Thus I made the background transparent. Then I made the decoration image that will go under the Qr image. Simply layering these images already works.

![QR transparent](qr_transparent.png)
![under image](under_image.png)
![QR + under image](qr_under_image.png)

Though contrast still is high enough for some more wiggling room for the under image to be visible. Thus I experimented with different layer merging methods, inluded here are layering with alpha 0.4, aplha 0.7 and burn.
![alpha 0.4](qr_0.4_layer.png)
![alpha 0.7](qr_0.7_layer.png)
![burn](qr_burn.png)

QR code generated at: <https://www.nayuki.io/page/qr-code-generator-library>
Layering done in GIMP: <https://docs.gimp.org/en/gimp-concepts-layer-modes.html>

Inspiration: Zhang, Y., Deng, S., Liu, Z., Wang, Y. (2015). Aesthetic QR Codes Based on Two-Stage Image Blending. In: He, X., Luo, S., Tao, D., Xu, C., Yang, J., Hasan, M.A. (eds) MultiMedia Modeling. MMM 2015. Lecture Notes in Computer Science, vol 8936. Springer, Cham. https://doi.org/10.1007/978-3-319-14442-9_16
