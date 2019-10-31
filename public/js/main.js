// import { read } from "fs";

// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userBtns = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox');

        //create the social media list
        function renderSocialMedia(media) {
            return `<ul class='u-social'>
                    ${media.map(item => `<li>${item}</li>`).join('')}
                    </ul>`;
        };

    function  parseUserData(person) {
        let targetDiv = lightBox.querySelector('.lb-content'),
        targetImg = lightBox.querySelector('img');

        let bioContent = `
            <p>${person.bio}</p>
            <h4>Social Media:</h4>
            <!-- loop thru social media stuff here -->
            ${renderSocialMedia(info.social)}
        `;

        targetDiv.innerHTML = bioContent;
        targetImg.src = person.CurrentSrc;

        lightBox.classList.add('show-lb');

    }

    function getUserData(event) {
        event.preventDefault();
        let url = `/${this.getAttribute('href')}`,
            currentImg = this.previousElementSibling.getAttribute('src');

        //fetches db content
        fetch(url)
        .then(res => res.json())
        .then(data =>  {
            console.log(data);
            data.CurrentSrc = currentImg;    
            parseUserData(data);
        })

        .catch((err) => console.log(err))
    }

    userBtns.forEach(button => button.addEventListener('click', getUserData))

    // wire up the lightbox close button

    lightBox.querySelector('.close').addEventListener('click' , function() {
        lightBox.classList.remove('show-lb');
    })


})();