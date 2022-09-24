#fahnenmasten {
    [man_made = 'flagpole'][historic != 'memorial'][zoom >= 20] {
       marker-height: 10px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/flag.svg');
       [zoom = 21] {
             marker-height: 15px;
       }
       [zoom >= 22] {
             marker-height: 20px;
             text-name:  [operator]  + '\n' + [flagtype] + '\n' + [country] + '\n' + [flagname] + '\n' + [flagdescription] + '\n' + [fahnenmasthoehe];
             text-wrap-character: '\n';
             text-face-name: @standard-font;
             text-wrap-width: 10;
             text-line-spacing: @standard-line-spacing-size;
             text-halo-radius: @standard-halo-radius;
             text-halo-fill: @standard-halo-fill;
             text-placement: interior;
             text-size: 8;
             text-dy: 15;
       }
       [zoom >= 23] {
             marker-height: 40px;
             text-name:  [operator]  + '\n' + [flagtype] + '\n' + [country] + '\n' + [flagname] + '\n' + [flagdescription] + '\n' + [fahnenmasthoehe];
             text-wrap-character: '\n';
             text-face-name: @standard-font;
             text-wrap-width: 10;
             text-line-spacing: @standard-line-spacing-size;
             text-halo-radius: @standard-halo-radius;
             text-halo-fill: @standard-halo-fill;
             text-placement: interior;
             text-size: 12;
             text-dy: 28;
       }
    }
}