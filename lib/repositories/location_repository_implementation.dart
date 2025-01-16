import 'package:swipezone/repositories/location_repository.dart';
import 'package:swipezone/repositories/models/categories.dart';
import 'package:swipezone/repositories/models/localization.dart';
import 'package:swipezone/repositories/models/location.dart';

class ILocationRepository implements LocationRepository {
  @override
  Future<List<Location>> getLocations() {
    return Future.value([
      Location(
        "Tour Eiffel",
        "La Tour Eiffel est un monument emblématique de Paris, construit en 1889.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/a/a8/Tour_Eiffel_Wikimedia_Commons.jpg",
        Categories.Tower,
        null,
        Localization("Champ de Mars, 5 Avenue Anatole France, 75007 Paris",
            48.8584, 2.2945),
      ),
      Location(
        "Louvre",
        "Le Louvre est le plus grand musée d'art du monde, abritant la Joconde.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/e/e6/Louvre_Museum_Wikimedia_Commons.jpg",
        Categories.Museum,
        null,
        Localization("Rue de Rivoli, 75001 Paris", 48.8606, 2.3376),
      ),
      Location(
        "Cathédrale Notre-Dame",
        "La cathédrale gothique Notre-Dame est située sur l'île de la Cité.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/a/a6/Notre_Dame_de_Paris_Wikimedia_Commons.jpg",
        Categories.Church,
        null,
        Localization("6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris",
            48.8529, 2.3508),
      ),
      Location(
        "Arc de Triomphe",
        "Construit pour honorer les victoires de Napoléon, il est situé sur la place de l'Étoile.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/6/6b/Arc_de_Triomphe_Wikimedia_Commons.jpg",
        Categories.HistoricalSite,
        null,
        Localization("Place Charles de Gaulle, 75008 Paris", 48.8738, 2.295),
      ),
      Location(
        "Sacré-Cœur",
        "La basilique du Sacré-Cœur est un symbole religieux de Montmartre.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/5/53/Sacre_Coeur_Wikimedia_Commons.jpg",
        Categories.Church,
        null,
        Localization(
            "35 Rue du Chevalier de la Barre, 75018 Paris", 48.8867, 2.3431),
      ),
      Location(
        "Panthéon",
        "Le Panthéon est un mausolée pour les grandes figures françaises.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/3/3b/Panth%C3%A9on_Wikimedia_Commons.jpg",
        Categories.HistoricalSite,
        null,
        Localization("Place du Panthéon, 75005 Paris", 48.8462, 2.3449),
      ),
      Location(
        "Place de la Concorde",
        "La plus grande place de Paris, connue pour son obélisque et ses fontaines.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/8/84/Place_de_la_Concorde_Wikimedia_Commons.jpg",
        Categories.HistoricalSite,
        null,
        Localization("Place de la Concorde, 75008 Paris", 48.8656, 2.3212),
      ),
      Location(
        "Palais Garnier",
        "L'Opéra Garnier est une somptueuse salle de spectacle datant du XIXe siècle.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/5/51/Op%C3%A9ra_Garnier_Wikimedia_Commons.jpg",
        Categories.Museum,
        null,
        Localization("Place de l'Opéra, 75009 Paris", 48.8719, 2.3316),
      ),
      Location(
        "Jardin des Tuileries",
        "Le jardin des Tuileries est un jardin public historique situé près du Louvre.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/a/a6/Jardin_des_Tuileries_Wikimedia_Commons.jpg",
        Categories.Park,
        null,
        Localization("113 Rue de Rivoli, 75001 Paris", 48.8636, 2.3276),
      ),
      Location(
        "Pont Alexandre III",
        "Ce pont richement orné relie les Champs-Élysées et les Invalides.",
        null,
        null,
        "https://upload.wikimedia.org/wikipedia/commons/5/5c/Pont_Alexandre_III_Wikimedia_Commons.jpg",
        Categories.HistoricalSite,
        null,
        Localization("Pont Alexandre III, 75008 Paris", 48.8654, 2.3131),
      ),
      Location(
          "Musée de l'Armée",
          "Situé au cœur de l'Hôtel des Invalides,"
              " ce musée présente l'histoire militaire de la France.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/d/d5/Les_Invalides_Wikimedia_Commons.jpg",
          Categories.Museum,
          null,
          Localization("129 Rue de Grenelle, 75007 Paris", 48.8559, 2.3127)
      ),

      Location(
          "Musée de la Libération de Paris",
          "Musée dédié à la Résistance et à la Libération de Paris,"
              " situé dans le 14e arrondissement.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/3/3b/Musee_de_la_Liberation.jpg",
          Categories.Museum,
          null,
          Localization("4 Avenue du Colonel Henri Rol-Tanguy, 75014 Paris", 48.8414, 2.3317)
      ),
      Location(
          "Musée Curie",
          "Musée consacré à la vie et aux travaux de Marie Curie et de sa famille.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/2/23/Musee_Curie_Wikimedia_Commons.jpg",
          Categories.Museum,
          null,
          Localization("1 Rue Pierre et Marie Curie, 75005 Paris", 48.8439, 2.3445)
      ),
      Location(
          "Cité des Sciences et de l'Industrie",
          "Le plus grand musée scientifique d'Europe, situé dans le parc de la Villette.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/8/89/Cite_des_Sciences_et_de_l%27Industrie_Wikimedia_Commons.jpg",
          Categories.Museum, null, Localization("30 Avenue Corentin Cariou, 75019 Paris", 48.8955, 2.3880)
      ),
      Location(
          "Musée des Arts et Métiers",
          "Musée consacré à l'innovation industrielle et scientifique, abritant de nombreuses inventions historiques.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/3/3d/Musee_des_Arts_et_Metiers_Wikimedia_Commons.jpg",
          Categories.Museum,
          null, Localization("60 Rue Réaumur, 75003 Paris", 48.8666, 2.3553)
      ),
      Location(
          "Musée de l'Air et de l'Espace",
          "Situé au Bourget, ce musée présente l'histoire de l'aéronautique et de l'espace.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/f5/Musee_de_l%27Air_et_de_l%27Espace_Wikimedia_Commons.jpg",
          Categories.Museum,
          null,
          Localization("Aéroport de Paris-Le Bourget, 93350 Le Bourget", 48.9472, 2.4372)
      ),
      Location(
          "Musée de l'Ordre de la Libération",
          "Situé aux Invalides, ce musée est dédié à l'ordre créé par le général de Gaulle.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/a/a8/Musee_de_l%27Ordre_de_la_Liberation.jpg",
          Categories.Museum,
          null,
          Localization("51 Bis Boulevard de la Tour-Maubourg, 75007 Paris", 48.8563, 2.3127)
      ),
      Location(
          "Musée national de la Marine",
          "Musée dédié à l'histoire maritime française.",
          null, null,
          "https://upload.wikimedia.org/wikipedia/commons/5/5f/Musee_national_de_la_Marine.jpg",
          Categories.Museum,
          null,
          Localization("17 Place du Trocadéro et du 11 Novembre, 75116 Paris", 48.8619, 2.2871)
      ),
      Location(
          "Palais de la Découverte",
          "Musée des sciences interactif situé dans le Grand Palais.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/1/1a/Palais_de_la_Decouverte.jpg",
          Categories.Museum,
          null,
          Localization("Avenue Franklin Delano Roosevelt, 75008 Paris", 48.8661, 2.3125)
      ),
      Location(
          "Musée Carnavalet",
          "Musée dédié à l'histoire de Paris.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/5/54/Musee_Carnavalet_Wikimedia_Commons.jpg",
          Categories.Museum,
          null,
          Localization("23 Rue de Sévigné, 75003 Paris", 48.8570, 2.3624)
      ),

      // Lieux politiques
      Location(
          "Palais de l'Élysée",
          "Résidence officielle du président de la République française.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/e/e1/Elysee_Palace.jpg",
          Categories.HistoricalSite,
          null,
          Localization("55 Rue du Faubourg Saint-Honoré, 75008 Paris", 48.8706, 2.3165)
      ),

      Location(
          "Palais-Bourbon",
          "Siège de l'Assemblée nationale française.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/fb/Palais_Bourbon.jpg",
          Categories.HistoricalSite,
          null,
          Localization("126 Rue de l'Université, 75007 Paris", 48.8620, 2.3181)
      ),

      Location(
          "Palais du Luxembourg",
          "Siège du Sénat français.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/d/d3/Luxembourg_Palace.jpg",
          Categories.HistoricalSite,
          null,
          Localization("15 Rue de Vaugirard, 75006 Paris", 48.8462, 2.3371)
      ),

      Location(
          "Conseil Constitutionnel",
          "Institution garantissant la conformité des lois à la Constitution.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/c/c0/Conseil_Constitutionnel.jpg",
          Categories.HistoricalSite,
          null,
          Localization("2 Rue Montpensier, 75001 Paris", 48.8638, 2.3361)
      ),

      Location(
          "Place des Vosges",
          "La plus ancienne place de Paris.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/f7/Place_des_Vosges.jpg",
          Categories.HistoricalSite,
          null, // Ajout du 7e argument (probablement pour le champ 'schedule')
          Localization("Place des Vosges, 75004 Paris", 48.8559, 2.3659) // Ajout du 8e argument (pour la localisation)
      ),

      Location(
          "Maison Élysée",
          "Espace ouvert au public en face du Palais de l'Élysée, présentant l'histoire et le patrimoine de la présidence française.",
          null,
          null,
          "https://example.com/maison_elysee.jpg",
          Categories.Museum,
          null,
          Localization("88 Rue du Faubourg Saint-Honoré, 75008 Paris", 48.8707, 2.3166)
      ),
      Location(
          "Statue de la Liberté (Paris)",
          "Réplique de la Statue de la Liberté située sur l'île aux Cygnes.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/5/5d/Statue_de_la_Libert%C3%A9_-_Paris.jpg",
          Categories.HistoricalSite,
          null,
          Localization("Ile aux Cygnes, 75015 Paris", 48.8570, 2.2917)
      ),

      Location(
          "Musée de la Vie Romantique",
          "Un musée dédié à l'époque romantique, installé dans une maison historique.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/7/77/Musée_de_la_Vie_Romantique.jpg",
          Categories.Museum,
          null,
          Localization("16 Rue Chaptal, 75009 Paris", 48.8822, 2.3279)
      ),

      Location(
          "Musée Marmottan-Monet",
          "Musée d'art impressionniste, célèbre pour ses collections de Claude Monet.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/e/ed/Marmottan_Monet_Museum.jpg",
          Categories.Museum,
          null,
          Localization("2 Rue Louis Boilly, 75016 Paris", 48.8622, 2.2776)
      ),

      Location(
          "Musée d'Histoire de la Médecine",
          "Un musée qui présente l'évolution de la médecine à travers les âges.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/2/2c/Musée_d'Histoire_de_la_Médecine.jpg",
          Categories.Museum,
          null,
          Localization("12 Place de l'Université, 75007 Paris", 48.8499, 2.3236)
      ),

      Location(
          "Musée des Égouts de Paris",
          "Un musée unique qui présente l'histoire des égouts de Paris.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/5/5d/Musée_des_Égouts_de_Paris.jpg",
          Categories.Museum,
          null,
          Localization("21 Quai de la Tournelle, 75005 Paris", 48.8455, 2.3503)
      ),

      Location(
          "Maison de la Photographie",
          "Lieu d'exposition consacré à la photographie contemporaine.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/d/d5/Maison_de_la_photographie.jpg",
          Categories.Museum,
          null,
          Localization("5-7 Rue de l'Artisanat, 75012 Paris", 48.8491, 2.3882)
      ),

      Location(
          "Sainte-Chapelle",
          "Chapelle gothique remarquable pour ses vitraux du XIIIe siècle.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/7/71/Sainte_Chapelle_%28Paris%29_%28France%29.jpg",
          Categories.Church,
          null,
          Localization("8 Boulevard du Palais, 75001 Paris", 48.8566, 2.3451)
      ),

      Location(
          "Musée Picasso",
          "Musée dédié à l'œuvre du célèbre peintre Pablo Picasso.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/c/cd/Musée_Picasso_Paris.jpg",
          Categories.Museum,
          null,
          Localization("5 Rue de Thorigny, 75003 Paris", 48.8643, 2.3656)
      ),

      Location(
          "Panthéon",
          "Mausolée abritant les grandes figures de l'histoire française.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/f6/Panthéon_Paris.jpg",
          Categories.HistoricalSite,
          null,
          Localization("Place du Panthéon, 75005 Paris", 48.8462, 2.3449)
      ),

      Location(
          "Château de Vincennes",
          "Un château médiéval fortifié situé à l'est de Paris.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/2/25/Ch%C3%A2teau_de_Vincennes.jpg",
          Categories.HistoricalSite,
          null,
          Localization("Avenue de Paris, 94300 Vincennes", 48.8502, 2.4365)
      ),

      Location(
          "Musée de la Chasse et de la Nature",
          "Musée unique dédié à l'histoire de la chasse et de la nature.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/a/a2/Musée_de_la_Chasse_et_de_la_Nature_Paris.jpg",
          Categories.Museum,
          null,
          Localization("62 Rue des Archives, 75003 Paris", 48.8583, 2.3647)
      ),

      Location(
          "Musée de la Mode de la Ville de Paris",
          "Un musée qui présente l'histoire de la mode à travers les siècles.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/e/e5/Musée_de_la_Mode_Paris.jpg",
          Categories.Museum,
          null,
          Localization("10 Avenue Pierre 1er de Serbie, 75116 Paris", 48.8677, 2.3036)
      ),

      Location(
          "Musée Nissim de Camondo",
          "Musée d'art et d'histoire du XIXe siècle, dans un hôtel particulier.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/7/74/Musée_Nissim_de_Camondo.jpg",
          Categories.Museum,
          null,
          Localization("63 Rue de Monceau, 75008 Paris", 48.8796, 2.3149)
      ),

      Location(
          "Institut du Monde Arabe",
          "Un centre culturel dédié à la culture arabe et à l'art du monde arabe.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/1/1e/Institut_du_monde_arabe.jpg",
          Categories.Museum,
          null,
          Localization("1 Rue des Fossés Saint-Bernard, 75005 Paris", 48.8495, 2.3610)
      ),

      Location(
          "Musée de la Monnaie de Paris",
          "Musée consacré à l'histoire de la monnaie et à la frappe des pièces de monnaie.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/3/32/Musée_de_la_Monnaie_de_Paris.jpg",
          Categories.Museum,
          null,
          Localization("11 Quai de Conti, 75006 Paris", 48.8525, 2.3391)
      ),
      Location(
          "Musée de la Préfecture de Police",
          "Musée dédié à l'histoire de la police et de la sécurité publique.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/d/d4/Musée_de_la_Préfecture_de_Police.jpg",
          Categories.Museum,
          null,
          Localization("1 Rue de la Préfecture de Police, 75004 Paris", 48.8582, 2.3703)
      ),

      Location(
          "Musée des Arts et Métiers",
          "Musée présentant l'histoire des inventions, des technologies et des sciences.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/7/71/Musée_des_Arts_et_Métiers_Paris.jpg",
          Categories.Museum,
          null,
          Localization("60 Rue Réaumur, 75003 Paris", 48.8670, 2.3582)
      ),

      Location(
          "Musée de l'Opéra",
          "Musée consacré à l'histoire de l'Opéra Garnier et à l'art lyrique.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/2/24/Musée_de_l'Opéra.jpg",
          Categories.Museum,
          null,
          Localization("8 Rue Scribe, 75009 Paris", 48.8720, 2.3319)
      ),

      Location(
          "Musée de la Poupée",
          "Musée consacré aux poupées et aux jouets anciens.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/9/9c/Musée_de_la_Poupée_Paris.jpg",
          Categories.Museum,
          null,
          Localization("22 Rue de la Dégénérescence, 75003 Paris", 48.8601, 2.3624)
      ),

      Location(
          "Musée de la Magie",
          "Musée présentant des objets magiques, des illusions et de l'histoire de la magie.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/7/7e/Musée_de_la_Magie_Paris.jpg",
          Categories.Museum,
          null,
          Localization("11 Rue Saint-Paul, 75004 Paris", 48.8535, 2.3665)
      ),

      Location(
          "Cité de la Musique",
          "Centre culturel dédié à la musique, avec des concerts et des expositions.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/1/14/Cité_de_la_Musique_Paris.jpg",
          Categories.Museum,
          null,
          Localization("221 Avenue Jean-Jaurès, 75019 Paris", 48.8877, 2.3945)
      ),

      Location(
          "Musée des Arts Asiatiques – Guimet",
          "Musée présentant des collections d'art asiatique et de la culture asiatique.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/fd/Musée_Guimet_Paris.jpg",
          Categories.Museum,
          null,
          Localization("6 Place d'Iéna, 75116 Paris", 48.8639, 2.2962)
      ),

      Location(
          "Musée de la Musique",
          "Un musée dédié à la musique, aux instruments et à l'histoire de la musique.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/0/07/Musée_de_la_Musique_Paris.jpg",
          Categories.Museum,
          null,
          Localization("221 Avenue Jean-Jaurès, 75019 Paris", 48.8890, 2.3935)
      ),

      Location(
          "Musée de l'Orangerie",
          "Musée abritant les célèbres Nymphéas de Claude Monet et d'autres œuvres impressionnistes.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/a/a1/Musée_de_l'Orangerie_Paris.jpg",
          Categories.Museum,
          null,
          Localization("Jardin des Tuileries, 75001 Paris", 48.8638, 2.3215)
      ),

      Location(
          "Musée Jean-Jacques Rousseau",
          "Musée consacré à la vie et à l'œuvre du philosophe Jean-Jacques Rousseau.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/9/91/Musée_Jean-Jacques_Rousseau_Paris.jpg",
          Categories.Museum,
          null,
          Localization("1 Place du Vieux-Collège, 75006 Paris", 48.8602, 2.3280)
      ),

      Location(
          "Musée Curie",
          "Musée dédié à l'histoire des découvertes scientifiques de Marie Curie.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/2/21/Musée_Curie_Paris.jpg",
          Categories.Museum,
          null,
          Localization("1 Rue Pierre et Marie Curie, 75005 Paris", 48.8447, 2.3449)
      ),

      Location(
          "Musée du Luxembourg",
          "Musée exposant des œuvres d'art classique et moderne.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/0/0e/Musée_du_Luxembourg_Paris.jpg",
          Categories.Museum,
          null,
          Localization("19 Rue de Vaugirard, 75006 Paris", 48.8440, 2.3346)
      ),

      Location(
          "Musée Carnavalet – Histoire de Paris",
          "Musée racontant l'histoire de Paris à travers les époques.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/f3/Musée_Carnavalet_Paris.jpg",
          Categories.Museum,
          null,
          Localization("16 Rue des Francs-Bourgeois, 75003 Paris", 48.8646, 2.3675)
      ),

      Location(
          "Musée des Automates",
          "Musée présentant des automates anciens et des mécanismes.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/f/f3/Musée_des_Automates_Paris.jpg",
          Categories.Museum,
          null,
          Localization("2 Rue de la Lingerie, 75003 Paris", 48.8582, 2.3621)
      ),

      Location(
          "Musée d'Art et d'Histoire du Judaïsme",
          "Musée présentant l'histoire et la culture juive à travers les âges.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/7/7a/Musée_d'Art_et_d'Histoire_du_Judaïsme_Paris.jpg",
          Categories.Museum,
          null,
          Localization("71 Rue du Temple, 75003 Paris", 48.8641, 2.3628)
      ),

      Location(
          "Musée des Arts Décoratifs",
          "Musée dédié à l'art décoratif et aux objets du quotidien.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/4/4f/Musée_des_Arts_Décoratifs_Paris.jpg",
          Categories.Museum,
          null,
          Localization("107 Rue de Rivoli, 75001 Paris", 48.8636, 2.3350)
      ),

      Location(
          "Musée du Petit Palais",
          "Musée abritant une collection d'art du XIXe siècle.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/e/ea/Musée_du_Petit_Palais_Paris.jpg",
          Categories.Museum,
          null,
          Localization("Avenue des Champs-Élysées, 75008 Paris", 48.8664, 2.3122)
      ),

      Location(
          "Musée de la Cité de l'Architecture et du Patrimoine",
          "Musée qui présente l'architecture et le patrimoine de la France.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/a/a9/Musée_de_la_Cité_de_l'Architecture_Paris.jpg",
          Categories.Museum,
          null,
          Localization("7 Avenue Albert de Mun, 75016 Paris", 48.8637, 2.2901)
      ),

      Location(
          "Musée de la Police",
          "Musée consacré à l'histoire de la police à travers les siècles.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/c/c6/Musée_de_la_Police_Paris.jpg",
          Categories.Museum,
          null,
          Localization("11 Rue des Archives, 75003 Paris", 48.8583, 2.3621)
      ),

      Location(
          "Musée du Chocolat",
          "Musée interactif sur l'histoire du chocolat et des techniques de fabrication.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/2/23/Musée_du_Chocolat_Paris.jpg",
          Categories.Museum,
          null,
          Localization("28 Boulevard de Bonne Nouvelle, 75010 Paris", 48.8690, 2.3470)
      ),
      Location(
          "Musée de la Santé des Armées",
          "Musée présentant l'histoire de la médecine militaire et des soins de santé dans les armées.",
          null,
          null,
          "https://upload.wikimedia.org/wikipedia/commons/1/1e/Musée_de_la_Santé_des_Armées_Paris.jpg",
          Categories.Museum,
          null,
          Localization("129 Rue de Grenelle, 75007 Paris", 48.8550, 2.3125)
      ),


    ]);
  }
}
