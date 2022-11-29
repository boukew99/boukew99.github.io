## Palette Image import
### Optimized case
1. 1 row of pixels.

### Properties
1. non reptitive color information. 
2. might be scaled color pixels.
3. does not keep aspect ratio per se.
4. row layout for small palettes
5. grid layout for grouping colors and keeping readable aspect ratio.
6. Assumes uniform significance of colors. No spatial data.

### Parsing
Read top left pixel color. Store color in color list. Go right till color changes. This is x scale. Go down till color changes. This is y scale. Sample top-left corners on this grid.

### Parsing 2
1. Store read colors. 
2. Read pixel, if already in colors skip column. 
3. Move Down.
4. Read pixel, if already in colors skip row.
5. Move Right.
6. Repeat for all rows and columns.


- https://stackoverflow.com/questions/8751020/how-to-check-if-a-specific-pixel-of-an-image-is-transparent
- https://stackoverflow.com/questions/3868259/importing-image-on-canvas-html5
- https://developer.mozilla.org/en-US/docs/Games/Techniques/Crisp_pixel_art_look
- https://stackoverflow.com/questions/7415872/change-color-of-png-image-via-css
