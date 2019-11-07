// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox');

    function parseUserData(things) {
        let para1 = lightBox.querySelector('.para1'),
        para2 = lightBox.querySelector('.para2'),
        para3 = lightBox.querySelector('.images');
      

        let bioContent1 = `
        <img class="topImg" src="${things.Image1}">
            
            <p>${things.ParaPast}</p>
        `;

        let bioContent2 = `
           
            <p>${things.ParaCurrent}</p>
        `;

        let bioContent3 = `
           
        <img class="botImg1" src="${things.Image2}">
        <img class="botImg2" src="${things.Image3}">
          
        `;

        para1.innerHTML = bioContent1;
        para2.innerHTML = bioContent2;
        para3.innerHTML = bioContent3;

        lightBox.classList.add('show-lb');
    }

    function getUserData(event) {
        event.preventDefault();
        //debugger;
        // 1, 2, or 3 depending on which anchor tag you click
        let url = `/${this.getAttribute('href')}`;
            

        // this goes and fetches the database content (or an API endpoint)
        // that's why it's called a fetch!
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);

                parseUserData(data);
            })
            .catch((err) => {
                console.log(err);
            });
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData));

    // wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });
})();