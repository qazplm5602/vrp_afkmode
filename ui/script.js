const setUI = (enable) => {
    if (enable)
        document.getElementById("disclaimer").style.display = "block";
    else
        document.getElementById("disclaimer").style.display = "none";
}

window.addEventListener('message', (event) => {
    if (event.data.type === 'open') {
       setUI(true)
    }

    if (event.data.type === 'close') {
        setUI(false)
    }
});