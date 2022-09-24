#bienenstoecke {
  [landuse = 'apiary'][zoom >= 20],
  [man_made = 'beehive'][zoom >= 20],
  [craft = 'beekeeper'][zoom >= 20] {
     marker-file: url('extra_symbols/beekeeper.svg');
     marker-placement: interior;
     marker-clip: false;
     [zoom = 20] {
         marker-height: 10px;
     }
     [zoom = 21] {
         marker-height: 15px;
     }
     [zoom >= 22] {
         marker-height: 20px;
     }
   }
}
