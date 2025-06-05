document.addEventListener('DOMContentLoaded', () => {
    // Mobile Menu Toggle
    const menuToggle = document.createElement('div');
    menuToggle.className = 'menu-toggle';
    menuToggle.innerHTML = '<i class="fas fa-bars"></i>';
    document.querySelector('.glass-nav').appendChild(menuToggle);

    const navLinks = document.querySelector('.nav-links');
    menuToggle.addEventListener('click', () => {
        navLinks.classList.toggle('active');
        menuToggle.classList.toggle('active');
    });

    // Smooth Scroll
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        });
    });

    // Intersection Observer for Scroll Animations
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px'
    };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, observerOptions);

    document.querySelectorAll('.feature-card, .testimonial, .pricing-card').forEach(el => {
        observer.observe(el);
    });

    // AI Avatar Interaction
    const aiAvatar = document.querySelector('.ai-avatar');
    document.addEventListener('mousemove', (e) => {
        const x = e.clientX / window.innerWidth;
        const y = e.clientY / window.innerHeight;
        aiAvatar.style.transform = `translate(${x * 20}px, ${y * 20}px)`;
    });

    // Form Handling
    const contactForm = document.getElementById('contact-form');
    if (contactForm) {
        contactForm.addEventListener('submit', async (e) => {
            e.preventDefault();
            const submitButton = contactForm.querySelector('button[type="submit"]');
            submitButton.innerHTML = '<div class="loader"></div>';
            
            // Simulate AI response
            setTimeout(() => {
                submitButton.innerHTML = 'Message Sent!';
                contactForm.reset();
                setTimeout(() => {
                    submitButton.innerHTML = 'Send Message';
                }, 2000);
            }, 1500);
        });
    }

    // Custom Cursor Effect
    const cursor = document.createElement('div');
    cursor.className = 'custom-cursor';
    document.body.appendChild(cursor);

    document.addEventListener('mousemove', (e) => {
        cursor.style.left = `${e.clientX}px`;
        cursor.style.top = `${e.clientY}px`;
    });

    document.querySelectorAll('a, button').forEach(el => {
        el.addEventListener('mouseenter', () => {
            cursor.classList.add('hover');
        });
        el.addEventListener('mouseleave', () => {
            cursor.classList.remove('hover');
        });
    });

    // Dynamic Theme Switching
    const themeButton = document.createElement('button');
    themeButton.className = 'theme-toggle';
    themeButton.innerHTML = '<i class="fas fa-moon"></i>';
    document.body.appendChild(themeButton);

    themeButton.addEventListener('click', () => {
        document.body.classList.toggle('light-theme');
        themeButton.innerHTML = document.body.classList.contains('light-theme') ? 
            '<i class="fas fa-sun"></i>' : '<i class="fas fa-moon"></i>';
    });
});