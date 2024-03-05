const observeAndRevealElements = () => {
  // Définition d'un ratio de 10% de visibilité des éléments
  const ratio = 0.1;

  // Options pour l'observateur d'intersection
  const options = {
      root: null,
      // à partir de quelle hauteur les éléments sont visibles
      rootMargin: "0px",
      threshold: .1,
  };

  // Fonction de comportement pour l'observateur d'intersection
  const revealBehavior = (entries, observer) => {
      entries.forEach((entry) => {
          if (entry.intersectionRatio > ratio) {
              // Ajout de la classe pour révéler l'élément
              entry.target.classList.add('reveal-visible');
              // Arrêt de l'observation de l'élément
              observer.unobserve(entry.target);
              console.log("visible");
          }
      });
  };

  // Création de l'observateur d'intersection
  const observer = new IntersectionObserver(revealBehavior, options);

  // Observation de tous les éléments avec une classe contenant 'reveal'
  document.querySelectorAll('[class*="reveal"]').forEach((element) => {
      observer.observe(element);
  });
};

  // Attacher la fonction d'observation au chargement de la page Turbo.
  // Assurer la lecture du script une fois que les éléments du DOM soit chargé avec turbo
document.addEventListener('turbo:load', observeAndRevealElements);
