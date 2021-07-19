const button = document.getElementById("btn");
const body = document.querySelector("body");
const hexaCode = document.querySelector(".hexa");

const colorChange = () => {
  const colorObj = {
    red: Math.floor(Math.random() * 255),
    green: Math.floor(Math.random() * 255),
    blue: Math.floor(Math.random() * 255),
  };

  const rgbToHex = (r, g, b) =>
    "#" +
    [r, g, b]
      .map((x) => {
        const hex = x.toString(16);
        return hex.length === 1 ? "0" + hex : hex;
      })
      .join("");

  hexaCode.textContent = `${rgbToHex(
    colorObj.red,
    colorObj.green,
    colorObj.blue
  ).toUpperCase()}`;

  let randomColor = `rgba(${colorObj.red},${colorObj.green},${colorObj.blue})`;

  body.style.background = randomColor;
};

button.addEventListener("click", colorChange);
