document.addEventListener('DOMContentLoaded', () => {
  const hamburger = document.querySelector('.hamburger');
  const navLinks = document.querySelector('.nav-links');
  
  hamburger.addEventListener('click', () => {
    navLinks.classList.toggle('active');
    hamburger.classList.toggle('active');
    
    // Optional: animate hamburger to X
    const bars = document.querySelectorAll('.bar');
    bars[0].classList.toggle('rotate-down');
    bars[1].classList.toggle('hidden');
    bars[2].classList.toggle('rotate-up');
  });
});