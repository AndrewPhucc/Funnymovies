document.addEventListener('DOMContentLoaded', function() {
  const toggleButton = document.getElementById('toggle-theme');
  const body = document.body;
  const videoItems = document.querySelectorAll('.video-item');
  const icon = toggleButton.querySelector('i');

  toggleButton.addEventListener('click', function() {
    body.classList.toggle('dark-mode');
    videoItems.forEach(item => item.classList.toggle('dark-mode'));

  
    if (body.classList.contains('dark-mode')) {
      icon.classList.remove('fa-moon');
      icon.classList.add('fa-sun');
    } else {
      icon.classList.remove('fa-sun');
      icon.classList.add('fa-moon');
    }
  });
});
