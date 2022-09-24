#strauch [zoom >= 19] {
  ::canopy {
    opacity: 0.45;
    [natural = 'shrub_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 20] {
        line-width: 5;
      }
      [zoom >= 21] {
        line-width: 10;
      }
      [zoom >= 22] {
        line-width: 15;
      }
      [zoom >= 23] {
        line-width: 30;
      }
    }
    [natural = 'shrub'] {
      [zoom >= 21] {
        marker-fill: green;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-ignore-placement: true;
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 22] {
        marker-width: 15;
        marker-height: 15;
     }
      [zoom >= 23] {
        marker-width: 20;
        marker-height: 20;
      }
    }
  }
}
#strauchsorte_zoom_21 {
    text-name: "[strauchsorte]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: green;
    text-dy: 7;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
}
#strauchsorte_zoom_22 {
    text-name: "[strauchsorte]";
    text-dy: 8;
    text-size: 12;
    text-wrap-width: @standard-wrap-width;
    text-wrap-character: '_';
    text-fill: green;
    [zoom >= 23] {
        text-dy: 15;
	text-size: 15;
    }
    [zoom >= 24] {
        text-dy: 15;
	text-size: 19;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
}
#strauchalter {
  [zoom >= 22] {
    text-name: [beschreibung] + "\n" + [geschlecht] + "\n"  + [strauchalter];
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-wrap-character: "\n";
    text-line-spacing: @standard-line-spacing-size;
    text-fill: brown;
    text-opacity: 0.75;
    text-dy: 16;
    text-size: 14;
    [zoom >= 22] {
        text-dy: 20;
        text-size: 9;
	text-wrap-width: 45;
    }
    [zoom >= 23] {
        text-dy: 30;
	text-size: 11;
        text-wrap-width: 65;
    }
    [zoom >= 24] {
        text-dy: 32;
	text-size: 12;
        text-wrap-width: 65;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }
}
