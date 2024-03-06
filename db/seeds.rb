ProjectTechno.destroy_all
Techno.destroy_all
Project.destroy_all
Mission.destroy_all
Experience.destroy_all

# Experience Teacher Assistante ----------------------------

lewagon = Experience.create!(
  company: "le Wagon",
  post: "teacher Assistante",
  start_date: '01/02/2024',
  end_date: Date.today
)

Mission.create!(mission: "Accompagnement auprès des élèves sur les exercices du jour.", experience: lewagon)

# Experience indépendante ----------------------------

independante = Experience.create!(
  company: "independante",
  post: "auto-entrepreneuse",
  start_date: '01/09/2021',
  end_date: "01/08/2023"
)

Mission.create!(mission: "Montage et gestion globale d’un projet e-commerce.", experience: independante)
Mission.create!(mission: "Développement d’un site e-commerce sous Wordpress.", experience: independante)
Mission.create!(mission: "Communication web et ADS.", experience: independante)
Mission.create!(mission: "Suivi et gestion des commandes, paiements et livraisons.", experience: independante)
Mission.create!(mission: "Administratif et comptabilité.", experience: independante)


# Experience Aldi ----------------------------

aldi = Experience.create!(
  company: "aldi",
  post: "agente administrative",
  start_date: "01/05/2023",
  end_date: "01/09/2023"
)

Mission.create!(mission: "Saisies informatiques des sorties et des entrées de marchandises.", experience: aldi)
Mission.create!(mission: "Prise des commandes produits frais vers l'entrepôt et les magasins.", experience: aldi)
Mission.create!(mission: "Saisies informatiques des commandes HUB.", experience: aldi)
Mission.create!(mission: "Gestion des balisages magasin.", experience: aldi)
Mission.create!(mission: "Saisies informatiques des contrats fournisseurs.", experience: aldi)


# Experience Dujardin ----------------------------

dujardin = Experience.create!(
  company: "dujardin",
  post: "préparatrice de commandes",
  start_date: "01/11/2022",
  end_date: "01/02/2023"
)

Mission.create!(mission: "Prélèvements des cartons", experience: dujardin)
Mission.create!(mission: "Chargement des cartons sur palette.", experience: dujardin)
Mission.create!(mission: "Acheminement des palettes en zone d'expédition et de stockage.", experience: dujardin)
Mission.create!(mission: "Remplissage des supports de suivi de commande.", experience: dujardin)
Mission.create!(mission: "Inventaire.", experience: dujardin)

# Experience eleclerc ----------------------------

eleclerc = Experience.create!(
  company: "e.leclerc",
  post: "Chargée de communication et de webmarketing",
  start_date: "01/09/2019",
  end_date: "01/07/2021"
)

Mission.create!(mission: "Community Management.", experience: eleclerc)
Mission.create!(mission: "Analyse et reporting des KPIs.", experience: eleclerc)
Mission.create!(mission: "Création et diffusion de contenus web.", experience: eleclerc)
Mission.create!(mission: "Création et montage vidéo au drône.", experience: eleclerc)
Mission.create!(mission: "Optimisation de la visiblité online.", experience: eleclerc)
Mission.create!(mission: "Audit de site internet", experience: eleclerc)

# Experience quintessence ----------------------------

quintessence = Experience.create!(
  company: "quintessence",
  post: "Chargée de communication & commerciale",
  start_date: "01/10/2017",
  end_date: "01/07/2019"
)

Mission.create!(mission: "Développement d'une nouvelle activité auprès d'une clientèle BtoB.", experience: quintessence)
Mission.create!(mission: "Montage d'un projet et suivi", experience: quintessence)
Mission.create!(mission: "Prospection téléphonique et développement de partenariats.", experience: quintessence)
Mission.create!(mission: "Création d'un site internet vitrine sous Wordpress.", experience: quintessence)
Mission.create!(mission: "Création de contenus web et print.", experience: quintessence)
Mission.create!(mission: "Community management.", experience: quintessence)

# Experience aboral ----------------------------

aboral = Experience.create!(
  company: "ECP - aboral",
  post: "Chargée de communication & commerciale",
  start_date: "01/10/2017",
  end_date: "01/07/2019"
)

Mission.create!(mission: "Accueil clientèle et visite de l'usine.", experience: aboral)
Mission.create!(mission: "Recueil des besoins.", experience: aboral)
Mission.create!(mission: "Suivi des commandes et des réclamations client.", experience: aboral)

# Technos ---------------------------------------------

ruby_on_rails = Techno.create!(techno: "Ruby On Rails")
postgresql = Techno.create!(techno: "PostgreSQL")
html = Techno.create!(techno: "HTML")
scss = Techno.create!(techno: "SCSS")
bootstrap = Techno.create!(techno: "Bootstrap")
stimulus = Techno.create!(techno: "StimulusJS")
js = Techno.create!(techno: "JS")
wordpress = Techno.create!(techno: "Wordpress")
woocommerce = Techno.create!(techno: "Woocommerce")
figma = Techno.create!(techno: "figma")


# Projets portfolio ---------------------------------------------

portfolio = Project.create!(
  name: "Portfolio",
  description: "Le site web actuel que je continue à développer pour apporter des améliorations.
  Futurs amélioration : partie admin, cloudinary, P5js...",
  url_link: "",
  github_link: "https://github.com/carolinhng/portfolio",
  image: 'portfolio.png'
)

ProjectTechno.create!(techno: ruby_on_rails, project: portfolio)
ProjectTechno.create!(techno: postgresql, project: portfolio)
ProjectTechno.create!(techno: html, project: portfolio)
ProjectTechno.create!(techno: scss, project: portfolio)
ProjectTechno.create!(techno: bootstrap, project: portfolio)
ProjectTechno.create!(techno: stimulus, project: portfolio)
ProjectTechno.create!(techno: js, project: portfolio)
ProjectTechno.create!(techno: figma, project: portfolio)


# Projets sportrack ---------------------------------------------

sportrack = Project.create!(
  name: "Sportrack",
  description: "Projet de fin de formation à l’école Le Wagon réalisé en équipe.
  Application web destinée aux amateurs de sport.
  Elle permet de suivre des données personnalisées sur un sport.",
  url_link: "",
  github_link: "https://github.com/carolinhng/sportrack",
  image: 'sportrack.jpg'
)

ProjectTechno.create!(techno: ruby_on_rails, project: sportrack)
ProjectTechno.create!(techno: postgresql, project: sportrack)
ProjectTechno.create!(techno: html, project: sportrack)
ProjectTechno.create!(techno: scss, project: sportrack)
ProjectTechno.create!(techno: bootstrap, project: sportrack)
ProjectTechno.create!(techno: stimulus, project: sportrack)


# Projets jouons ---------------------------------------------

jouons = Project.create!(
  name: "Jouons",
  description: "Projet de fin de formation à l’école Le Wagon réalisé en équipe.
  Site web qui permet de louer des jeux de société entre particuliers en fonction de la zone géographique.",
  url_link: "",
  github_link: "https://github.com/carolinhng/jouons",
  image: 'jouons.png'
)

ProjectTechno.create!(techno: ruby_on_rails, project: jouons)
ProjectTechno.create!(techno: postgresql, project: jouons)
ProjectTechno.create!(techno: html, project: jouons)
ProjectTechno.create!(techno: scss, project: jouons)
ProjectTechno.create!(techno: bootstrap, project: jouons)
ProjectTechno.create!(techno: stimulus, project: jouons)

# Projets bookroom ---------------------------------------------

bookroom = Project.create!(
  name: "Bookroom",
  description: "Projet réalisé pendant la certification de concepteur et developpeur d'applications web.
  Ce site permet de mettre en relation des hôtels et des particuliers pour réserver des chambres",
  url_link: "",
  github_link: "https://github.com/carolinhng/bookroom",
  image: 'bookroom.png'
)

ProjectTechno.create!(techno: ruby_on_rails, project: bookroom)
ProjectTechno.create!(techno: postgresql, project: bookroom)
ProjectTechno.create!(techno: html, project: bookroom)
ProjectTechno.create!(techno: scss, project: bookroom)
ProjectTechno.create!(techno: bootstrap, project: bookroom)
ProjectTechno.create!(techno: stimulus, project: bookroom)
