
document.addEventListener("DOMContentLoaded", function () {
    // Dark mode toggle
    const toggle = document.getElementById("darkModeToggle");
    toggle.addEventListener("click", () => {
        document.body.classList.toggle("dark-mode");
    });

    // Search and filter
    const searchInput = document.getElementById("bookSearch");
    const cards = document.querySelectorAll(".book-card");
    searchInput.addEventListener("input", () => {
        const term = searchInput.value.toLowerCase();
        cards.forEach(card => {
            card.style.display = card.innerText.toLowerCase().includes(term) ? "block" : "none";
        });
    });

    // Book modal
    const modal = document.getElementById("bookModal");
    const modalContent = document.getElementById("modalContent");
    const overlay = document.getElementById("modalOverlay");

    cards.forEach(card => {
        card.addEventListener("click", () => {
            modalContent.innerHTML = card.innerHTML;
            modal.style.display = "block";
            overlay.style.display = "block";
        });
    });

    overlay.addEventListener("click", () => {
        modal.style.display = "none";
        overlay.style.display = "none";
    });
});
