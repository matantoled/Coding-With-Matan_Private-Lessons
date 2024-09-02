const menu = document.querySelector(".menu");
const toggleBtn = document.querySelector(".toggle-menu");

toggleBtn.addEventListener("click", () => {
    menu.classList.toggle('visible');
});
