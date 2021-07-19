const button = document.getElementById('btn')
const body = document.querySelector('body')

const colorChange = () => {

    const colorObj = {
        red : Math.floor(Math.random()*255),
        green : Math.floor(Math.random()*255),
        blue : Math.floor(Math.random()*255)
    }

    
    let randomColor = `rgba(${colorObj.red},${colorObj.green},${colorObj.blue})`;

    
    body.style.background = randomColor
}

button.addEventListener('click', colorChange)

