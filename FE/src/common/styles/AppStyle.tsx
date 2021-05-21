import { createGlobalStyle } from 'styled-components';

const AppStyle = createGlobalStyle`
    #root {
        width: 100%;
        margin: 0 auto;
        font-family: ${({theme}) => theme.fontFamily};
        color: ${({theme}) => theme.colors.gray1};
        font-weight: ${({theme}) => theme.fontWeight.normal};
    }
`;

export default AppStyle;