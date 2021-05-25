import { DefaultTheme } from './styled';

export const theme: DefaultTheme = {
    LayerTheme: {
        position: 'absolute',
        top: '70px',
        left: '0px',
        border: '1px solid red',
        width: (widthSize: number | string | undefined) => `${widthSize}px`,
        height: 'auto',
    },
    FlexboxTheme: {
        display: 'flex',
        flexDirection: (direction: number | string | undefined) => `${direction}` || `row`,
    },
};
