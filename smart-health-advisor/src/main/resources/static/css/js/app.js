// app.js – General UI Functions

document.addEventListener("DOMContentLoaded", () => {
    console.log("App.js Loaded Successfully!");

    // Toggle Menu (if needed)
    const menuBtn = document.getElementById("menuBtn");
    const sideMenu = document.getElementById("sideMenu");

    if (menuBtn && sideMenu) {
        menuBtn.addEventListener("click", () => {
            sideMenu.classList.toggle("open");
        });
    }
});
