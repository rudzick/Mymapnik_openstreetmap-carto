#baumsorten_zoom_21 {
    [zoom = 19] {
      text-name: [obstbaumart] + ' ' + [baumname];
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: green;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      text-allow-overlap: true;
    }
    [zoom > 19] {
      text-name: [obstbaumart];
      text-size: @standard-font-size;
      text-wrap-width: 1000;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: green;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      text-allow-overlap: true;
    }
    [zoom = 19] {
      text-dy: 8;
      text-size: 8;
    }
    [zoom = 20] {
      text-dy: 8;
      text-size: 10;
    }
    [zoom = 21] {
      text-dy: 16;
      text-size: 16;
    }
}
#baumsorten_zoom_22 {
    text-name: "[obstbaumart]";
    text-size: 18;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-wrap-character: '_';
    text-fill: green;
    text-allow-overlap: true;
    text-dy: 18;
    [zoom >= 23] {
        text-dy: 18;
	text-size: 22;
        text-wrap-width: 200;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
}

#taxon {
    [zoom < 21] { 
       text-name: [obstbaumsorte] + ' ' + [baumname];
       text-size: @standard-font-size;
       text-wrap-width: @standard-wrap-width;
       text-line-spacing: @standard-line-spacing-size;
       text-fill: green;
       text-allow-overlap: true;
       text-dy: 13;
       text-size: 7;
    }
    [zoom = 21] { 
       text-name: [obstbaumsorte] + ' ' + [baumname];
       text-size: @standard-font-size;
       text-wrap-width: @standard-wrap-width;
       text-line-spacing: @standard-line-spacing-size;
       text-fill: green;
       text-allow-overlap: true;
       text-dy: 26;
       text-size: 14;
    }
    [zoom >= 22] {    
       text-name: [obstbaumsorte];
       text-size: @standard-font-size;
       text-wrap-width: @standard-wrap-width;
       text-line-spacing: @standard-line-spacing-size;
       text-fill: green;
       text-allow-overlap: true;
       text-dy: 26;
       text-size: 14;
    }
    [zoom = 21] {
       text-dy: 32;
       text-size: 12;
    }
    [zoom >= 22] {
        text-wrap-width: 1000;
        text-dy: 38;
        text-size: 14;
    }
    [zoom >= 23] {
        text-dy: 43;
	text-size: 20;
    }
    text-face-name: @oblique-fonts;
    [cultivar != '0'] {
        text-face-name: @standard-font;
    }
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
}
#wuchs {
  [zoom >= 22] {
    [zoom = 22] {
       text-name: [geschlecht] + [wuchs] + [baumalter] + ' ' + [baumname];
    } [zoom >= 23] {
      text-name: [geschlecht] + ' ' + [wuchs] + ' ' + [baumalter] + ' ' + [hoehe] + ' ' + [stammumfang]  + ' ' + [kronenbreite] + ' ' + [baumname];
    }
    text-size: @standard-font-size;
    text-wrap-width: 128;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: brown;
    text-opacity: 0.75;
    text-allow-overlap: true;
    text-dy: 12;
    text-size: 14;
    [zoom >= 22] {
        text-dy: 53;
        text-size: 14;
    }
    [zoom >= 23] {
        text-dy: 67;
    }    
    [obstbaumsorte = '0']{
       [zoom >= 22] {
           text-dy: 38;
           text-size: 14;
       }
       [zoom >= 23] {
           text-dy: 43;
       }
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }
}
/*#trees {
 ::canopy {
    [zoom >= 20] {
      marker-width: 15;
      marker-height: 15;
    }    
    [zoom >= 23] {
      marker-width: 120;
      marker-height: 120;
    }
 }
}
::trunk {
    [zoom >= 20] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;
    }
} */