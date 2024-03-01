const ratio = 0.1;

const options = {
  root: null,
  rootMargin: "0px",
  threshold: .1,
};


const revealBehavior = (entries, observer) => {
  entries.forEach((entry) => {
    if (entry.intersectionRatio > ratio) {
      entry.target.classList.add('reveal-visible');
      observer.unobserve(entry.target);
      console.log("visible")
    }
  });
}

const observer = new IntersectionObserver(revealBehavior, options);
document.querySelectorAll('.reveal, [class^="reveal-"]').forEach((element) => {
  observer.observe(element);
});
