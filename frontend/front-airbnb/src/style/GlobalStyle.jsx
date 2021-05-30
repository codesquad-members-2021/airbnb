import {createGlobalStyle} from 'styled-components'

const GlobalStyle = createGlobalStyle`
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    list-style:none;
}
body {
    width:100%;
    height:100%;
}
button {
    /* border:0; */
    /* outline: 0; */
    background-color: transparent;
}
table {
    border-collapse:collapse;
}
`
export default GlobalStyle