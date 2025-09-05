const loginBtn = document.getElementById('login-btn');
const popup = document.getElementById('login-popup');
const closeBtn = document.querySelector('.close-btn');

loginBtn.onclick = () => popup.style.display = 'block';
closeBtn.onclick = () => popup.style.display = 'none';
window.onclick = (e) => {
    if (e.target === popup) popup.style.display = 'none';
};
