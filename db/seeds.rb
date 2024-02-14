# Test gitignore

ProjectTechno.destroy_all
Techno.destroy_all
Project.destroy_all
Mission.destroy_all
Experience.destroy_all

# Experience indépendante ----------------------------

independante = Experience.create!(
  company: "independante",
  post: "auto-entrepreneuse",
  start_date: '01/09/2021',
  end_date: "01/08/2023",
  user: caro
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
  end_date: "01/09/2023",
  user: caro
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
  end_date: "01/02/2023",
  user: caro
)

Mission.create!(mission: "Prélèvements des cartons", experience: dujardin)
Mission.create!(mission: "Chargement des cartons sur palette.", experience: dujardin)
Mission.create!(mission: "Acheminement des palettes en zone d'expédition et de stockage.", experience: dujardin)
Mission.create!(mission: "Remplissage des supports de suivi de commande.", experience: dujardin)
Mission.create!(mission: "Inventaire.", experience: dujardin)


# Projets ---------------------------------------------

sportrack = Project.create!(
  name: "Sportrack",
  description: "Bénévolat - Site vitrine réalisé sous Wordpress.
  Entreprise spécialisée dans la vente de poudre hémostatique.
  Produis destinés aux professionnels de santé.",
  url_link: "",
  github_link: "",
  user: User.last
)


# Technos ---------------------------------------------

ruby_on_rails = Techno.create!(techno: "Ruby On Rails")
postgresql = Techno.create!(techno: "PostgreSQL")
html = Techno.create!(techno: "HTML")
scss = Techno.create!(techno: "SCSS")
bootstrap = Techno.create!(techno: "Bootstrap")
stimulus = Techno.create!(techno: "Stimulus JS")


# Project-Technos --------------------------------------
ProjectTechno.create!(techno: ruby_on_rails, project: sportrack)
ProjectTechno.create!(techno: postgresql, project: sportrack)
ProjectTechno.create!(techno: html, project: sportrack)
ProjectTechno.create!(techno: scss, project: sportrack)
ProjectTechno.create!(techno: bootstrap, project: sportrack)
ProjectTechno.create!(techno: stimulus, project: sportrack)
