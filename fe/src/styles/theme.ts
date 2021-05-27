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
    LayerSize: {
        smHeight: 355,
        smWidth: 400,
        lgWidth: 916,
        lgHeight: 512,
        mdHeight: 355,
        mdWidth: 493,
    },
    LayerLocation: {
        top: 90,
        left: 0,
        md_left: 480,
        far_left: 515,
    },
};
