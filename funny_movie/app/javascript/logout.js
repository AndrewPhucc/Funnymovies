document.addEventListener('DOMContentLoaded', () => {
    const logoutLink = document.querySelector('a[data-method="delete"]');
    if (logoutLink) {
      logoutLink.addEventListener('click', (event) => {
        event.preventDefault();
        if (confirm('Are you sure you want to log out?')) {
          fetch(logoutLink.href, {
            method: 'DELETE',
            headers: {
              'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
            }
          }).then(() => {
            window.location.reload();
          });
        }
      });
    }
  });