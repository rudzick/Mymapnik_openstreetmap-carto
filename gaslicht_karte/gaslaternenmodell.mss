#gaslaternen_modell {
   text-face-name: @standard-font;
   opacity: 1.0;
   text-name: [modell];

   opacity: 1.0;
   marker-fill: @gaslaternenlabel-color;
   marker-allow-overlap: true;
   marker-line-width: 0;
   marker-ignore-placement: true;
   marker-type: ellipse;
   marker-width: 10;
   marker-height: 10;

//   text-vertical-alignment: top;

   [zoom >= 18] {
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-fill: @gaslaternenlabel-color;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-placement: interior;
        marker-placement: interior;
        marker-clip: false;
     }
   [zoom >= 21] {
        text-wrap-character: '&';
    }
   [zoom > 20] {
      text-name: [flammen] + [modell] + [nummer] + [mastform];
//      [nummer != ''][modell != ''] {
//      	text-name: [flammen] + [modell] + ' - ' + [nummer] + [mastform];
//      }
   }   
   [zoom >= 18][zoom < 19] {
	text-size: 9;
        text-dy: 15;
   }
   [zoom >= 19][zoom < 20] {
	text-size: 10;
        text-dy: 23;
   }
   [zoom >= 20][zoom < 21] {
	text-size: 12;
        text-dy: 23;
   }
   [zoom >= 21][zoom < 22] {
	text-size: 12;
        text-dy: 128;
   }
   [zoom >= 22] {
        text-size: 20;
        text-dy: 128;
   }
   [modell =~ "Aufsatzleuchte BAMAG.U7"] {
     [zoom >= 18] {
        marker-width: 0;
        marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {
//          marker-file: url('gaslaternen/bln/14px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
          marker-file: url('gaslaternen/bln/20px_27px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
//          marker-file: url('gaslaternen/bln/14px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');
          marker-file: url('gaslaternen/bln/20px_27px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');
        }
     }
     [zoom >= 19][zoom < 21] {
        [@gaslicht_layer = 'tag'] {     
//          marker-file: url('gaslaternen/bln/20px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
          marker-file: url('gaslaternen/bln/30px_40px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
//          marker-file: url('gaslaternen/bln/20px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');	
          marker-file: url('gaslaternen/bln/30px_40px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');	
        }
     }
     [zoom >= 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/120px_Aufsatzleuchte_BAMAG_U7_tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/120px_Aufsatzleuchte_BAMAG_U7_nacht.jpg');
        }
     }
   }
   [modell =~ "Hängeleuchte BAMAG.A11"],
   [modell =~ "Hängeleuchte BAMAG.A21"] {
     [zoom >= 18] {
        marker-width: 0;
        marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {
          marker-file: url('gaslaternen/bln/20px_Haengeleuchte_BAMAG_A11_Tag.png');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/20px_Haengeleuchte_BAMAG_A11_Nacht.png');
        }
     }
     [zoom >= 19][zoom < 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/30px_Haengeleuchte_BAMAG_A11_Tag.png');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/30px_Haengeleuchte_BAMAG_A11_Nacht.png');	
        }
     }
     [zoom >= 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/180px_Haengeleuchte_BAMAG_A11_Tag.png');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/180px_Haengeleuchte_BAMAG_A11_Nacht.png');
        }
     }
   }
   [modell =~ "Reihenleuchte BAMAG.U13H"] {
     [zoom >= 18] {   
        marker-width: 0;
        marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {     
//          marker-file: url('gaslaternen/bln/20px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Tag_20210426.jpg');
          marker-file: url('gaslaternen/bln/27px_20px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Tag_20210426.png');
        } [@gaslicht_layer = 'nacht'] {
//          marker-file: url('gaslaternen/bln/20px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Nacht_20210426.jpg');
          marker-file: url('gaslaternen/bln/27px_20px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Nacht_20210426.png');
        }
     }
     [zoom >= 19][zoom < 21] {
        [@gaslicht_layer = 'tag'] {     
//          marker-file: url('gaslaternen/bln/30px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Tag_20210426.jpg');
          marker-file: url('gaslaternen/bln/40px_30px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Tag_20210426.png');
        } [@gaslicht_layer = 'nacht'] {
//          marker-file: url('gaslaternen/bln/30px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Nacht_20210426.jpg');
          marker-file: url('gaslaternen/bln/40px_30px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Nacht_20210426.png');
        }
     }
     [zoom >= 21] {
        [@gaslicht_layer = 'tag'] {     
//          marker-file: url('gaslaternen/bln/Reihenleuchte_BAMAG_U13H_tag.jpg');
          marker-file: url('gaslaternen/bln/180px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Tag_20210426.png');
        } [@gaslicht_layer = 'nacht'] {
//          marker-file: url('gaslaternen/bln/Reihenleuchte_BAMAG_U13H_nacht.jpg');
          marker-file: url('gaslaternen/bln/180px_Reihenleuchte_BAMAG_A13H_Ruedesheimer_Str_32_Nacht_20210426.png');
        }
     }
   }
   [modell =~ "Zylinderleuchte"] {
     [zoom >= 18] {   
        marker-width: 0;
        marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/20px_Zylinderleuchte_Tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/20px_Zylinderleuchte_Night.jpg');
        }
     }
     [zoom >= 19][zoom < 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/30px_Zylinderleuchte_Tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/30px_Zylinderleuchte_Night.jpg');
        }
     }
     [zoom >= 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/Zylinderleuchte_Tag.jpg');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/Zylinderleuchte_Night.jpg');
        }
     }
   }
[modell =~ "Modellleuchte Berlin"] {
     [zoom >= 18] {   
        marker-width: 0;
        marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/14px_Modellleuchte_Tag.png');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/14px_Modellleuchte_Nacht.png');
        }
     }
     [zoom >= 19][zoom < 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/20px_Modellleuchte_Tag.png');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/20px_Modellleuchte_Nacht.png');
        }
     }
     [zoom >= 21] {
        [@gaslicht_layer = 'tag'] {     
          marker-file: url('gaslaternen/bln/120px_Modellleuchte_Tag.png');
        } [@gaslicht_layer = 'nacht'] {
          marker-file: url('gaslaternen/bln/120px_Modellleuchte_Nacht.png');
        }
     }
   }
   [modell =~ 'Aufsatzleuchte'] {
     [zoom >= 18] {   
       marker-width: 0;
       marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Aufsatzleuchte.jpg');
        }
     [zoom >= 19][zoom < 21] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Aufsatzleuchte.jpg');
        }
     [zoom >= 21] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Aufsatzleuchte.jpg');
        }
   }
   [modell =~ 'Ansatzleuchte'] {
     [zoom >= 18] {   
       marker-width: 0;
       marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Ansatzleuchte.jpg');
        }
     [zoom >= 19][zoom < 21] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Ansatzleuchte.jpg');
        }
     [zoom >= 21] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Ansatzleuchte.jpg');
        }
   }
   [modell =~ 'Reihenleuchte'] {
     [zoom >= 18] {   
       marker-width: 0;
       marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Reihenleuchte.jpg');
        }
     [zoom >= 19][zoom < 21] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Reihenleuchte.jpg');
        }
     [zoom >= 21] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Reihenleuchte.jpg');
        }
   }
   [modell =~ 'Alt-Düsseldorfer'] {
     [zoom >= 18] {   
       marker-width: 0;
       marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Alt-Duesseldorfer.jpg');
        }
     [zoom >= 19][zoom < 21] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Alt-Duesseldorfer.jpg');
        }
     [zoom >= 21] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Alt-Duesseldorfer.jpg');
        }
   }
   [modell =~ 'Frankfurter'] {
     [zoom >= 18] {   
       marker-width: 0;
       marker-height: 0;
     }
     [zoom >= 18][zoom < 19] {
        marker-file: url('gaslaternen/20px-Gaslaterne_Frankfurter.jpg');
        }
     [zoom >= 19][zoom < 21] {
        marker-file: url('gaslaternen/30px-Gaslaterne_Frankfurter.jpg');
        }
     [zoom >= 21] {
        marker-file: url('gaslaternen/180px-Gaslaterne_Frankfurter.jpg');
        }
    }
}