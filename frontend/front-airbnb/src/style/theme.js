const size = {
    laptop: '1200px',
    desktop: '1800px',
}
const theme = {
    mainColor: '#0a4297',
    laptop: `(max-width: ${size.laptop})`,
    desktop: `(min-width: ${size.desktop})`,
}

export default theme