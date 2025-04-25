<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Handle toggling of collapsible sections
    document.querySelectorAll(".collapsible").forEach(button => {
      button.addEventListener("click", () => {
        const container = button.parentElement;
        container.classList.toggle("active");
      });
    });

    // Auto-expand the current page's section
    const currentUrl = window.location.pathname;
    document.querySelectorAll('.collapsible-container').forEach(container => {
      const sectionUrl = container.querySelector('.collapsible')?.getAttribute('href') || '';
      if (currentUrl.startsWith(sectionUrl)) {
        container.classList.add('active'); // Expanding the current section
      }
    });
  });

  document.addEventListener('DOMContentLoaded', function() {
    const sidebar = document.getElementById('sidebar');
    const toggleButton = document.querySelector('.navbar-toc-toggle-button');

    if (sidebar && toggleButton) {
      toggleButton.addEventListener('click', function() {
       sidebar.classList.toggle('sidebar-hidden');
     });
   }
  });
</script>