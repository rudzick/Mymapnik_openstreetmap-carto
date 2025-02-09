DROP TABLE IF EXISTS tree_species;

CREATE TABLE tree_species (
  treespecies varchar(100),
  lang    varchar(5),
  treename    varchar(100),
  primary key(treespecies, lang)
);

INSERT INTO tree_species VALUES
('pyrus communis', 'de_DE', 'Birne'),
('malus domestica', 'de_DE', 'Apfel'),
('sorbus domestica', 'de_DE', 'Speierling'),
('prunus domestica', 'de_DE', 'Pflaume'),
('prunus avium', 'de_DE', 'Süßkirsche'),
('prunus armeniaca', 'de_DE', 'Aprikose'),
('prunus persica', 'de_DE', 'Pfirsich'),
('Prunus persica var. nucipersica', 'de_DE', 'Nektarine'),
('prunus cerasus', 'de_DE', 'Sauerkirsche'),
('prunus cerasifera', 'de_DE', 'Kirschpflaume'),
('cydonia oblonga', 'de_DE', 'Quitte'),
('mespilus germanica', 'de_DE', 'Mispel'),
('juglans regia', 'de_DE', 'Walnuss'),
('ficus carica', 'de_DE', 'Feige'),
('diospyros kaki', 'de_DE', 'Kakibaum'),
('prunus dulcis', 'de_DE', 'Mandelbaum'),
('syringa vulgaris', 'de_DE', 'Flieder'),
('tilia cordata', 'de_DE', 'Winterlinde'),
('tilia platyphyllos', 'de_DE', 'Sommerlinde'),
('tilia grandifolia', 'de_DE', 'Sommerlinde'),
('acer platanoides', 'de_DE', 'Spitzahorn'),
('acer pseudoplatanus', 'de_DE', 'Bergahorn'),
('aesculus hippocastanum', 'de_DE', 'Weiße Rosskastanie'),
('aesculus × carnea', 'de_DE', 'Fleischrote Rosskastanie'),
('fagus sylvatica', 'de_DE', 'Rotbuche'),
('castanea sativa', 'de_DE', 'Esskastanie'),
('taxus baccata', 'de_DE', 'Eibe'),
('liriodendron tulipifera', 'de_DE', 'Tulpenbaum'),
('cryptomeria japonica', 'de_DE', 'Sicheltanne'),
('ginkgo biloba', 'de_DE', 'Ginkgo'),
('platanus x hispanica', 'de_DE', 'Ahornblättrige Platane'),
('picea abies', 'de_DE', 'Gemeine Fichte'),
('picea pungens', 'de_DE', 'Stechfichte'),
('quercus robur', 'de_DE', 'Stieleiche'),
('magnolia kobus', 'de_DE', 'Kobushi-Magnolie'),
('chamaecyparis obtusa', 'de_DE', 'Hinoki-Scheinzypresse'),
('thuja occidentalis', 'de_DE', 'Abendländischer Lebensbaum'),
('catalpa bignonioides', 'de_DE', 'Gewöhnlicher Trompetenbaum')
;
