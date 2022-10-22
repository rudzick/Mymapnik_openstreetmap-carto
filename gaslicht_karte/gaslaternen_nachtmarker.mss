#gaslaternen_nachtmarker {
     opacity: 0.45;
     marker-fill: @gaslaternenlabel-color;
     marker-allow-overlap: true;
     marker-line-width: 0;
     marker-ignore-placement: true;
     marker-width: 5;
     marker-height: 5;
     [zoom >= 11] {
        marker-width: 10;
        marker-height: 10;
     }
}
