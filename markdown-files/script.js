window.onload = function(e) {
	fetch('physics.md')
  .then(response => response.text())
  .then((data) => {
    console.log(data)
  })
  document.getElementById("preview").src = "article_files/qr_files/preview.png"
  document.getElementById("markdown").innerHTML = `# Trying Linux on 8GB USB
_20-05-22_
Apparently it is very easy to try Linux, all you need is an USB with 8 GB of storage. I tried Ubuntu and thus used this [installation tutorial](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview).

Then ![you plug in the USB with linux on it](preview.webp), stop the booting and redirect it to the USB and your using Linux. I expected it would be more difficult... 

Then how nice is it? Well, Ubuntu said somewhere it wanted to stay out of your way, and that happens to be quite nice. Windows open in a empty space, so they don't overlap, images open with "best" zoom level and the presentation is just what you need, nothing more. The experience feels more responsive and at ease then Windows also. I tried some games that come pre-installed, like Mahjong and Mines and they are just plain old fun. I'm already a fan and will try it a bit longer to see if I could use it as a replacement on my old laptop or maybe on a new one.

Kind regards

PS:
- I Discovered you can take screenshots or record your screen with _fn + s_.
- Mouse speed with trackpad was too low for me, so I adjusted it up in the settings, but now I realised that there is some acceleration curve, though maybe a bit steep.

## Installing Ubuntu
17-05-2022

https://www.winhelponline.com/blog/you-cannot-shrink-volume-beyond-point-disk-mgmt/
https://medium.com/linuxforeveryone/how-to-install-ubuntu-20-04-and-dual-boot-alongside-windows-10-323a85271a73
`
}
